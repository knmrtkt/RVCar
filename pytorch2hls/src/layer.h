#ifndef __LAYER_H__
#define __LAYER_H__

#ifndef __SYNTHESIS__
#include <iostream>
#include <cassert>
#include <cmath>
#include <limits>
template <typename T, int C, int H, int W>
inline void Debug_print(
    T in[C*H*W],
    const std::string op
){
    std::cout << std::fixed;
    std::cout << op << "\n";
    for(int i=0; i<C; i++){
        std::cout << "Channel " << i << "\n";
		for(int j=0; j<H; j++){
			for(int k=0; k<W; k++){
				//std::cout << std::setw(8) << std::setprecision(6) << in[i*H*W + j*W + k] << ",";
                std::cout << std::setw(8) << std::setprecision(6) << in[j*W*C + k*C + i] << ",";
			}
			std::cout << "\n";
		}
	}
    std::cout << std::flush;
}

#endif

#include <hls_stream.h>

template <typename T, int L>
class PIPE{
private:
    T buf[L];
    int idx; 
public:
    PIPE() : idx(0){for(int i=0; i<L; i++) this->buf[i]=0;}
    T push_and_pop(T val){
        #pragma HLS inline region
        int oldest = (idx + 1) < L ? (idx + 1) : 0;
        T ret = buf[oldest];
        buf[oldest] = val;
        idx = (idx < L-1) ? idx+1 : 0;
        return ret;
    }
    T* getPipe(void){
        return this->buf;
    }
};

template <typename T, int H, int W, int K, int TShiftReg>
class ConvShiftReg{
private:
    T ShiftReg[K*K];
    PIPE<T, W-K> pipes[K-1];
    T LUTShiftReg[(K-1)*W+K];
    
public:
    ConvShiftReg(){for(int i=0; i<K*K; i++) this->ShiftReg[i] = 0;}
    void copyShiftReg(T* array){
    if constexpr(TShiftReg == 0){
        for(int i=0; i<K*K; i++){
            #pragma HLS UNROLL
            array[i] = ShiftReg[K*K-1-i];
        }
    }else{
        for(int i=0; i<K; i++){
            #pragma HLS UNROLL
            for(int j=0; j<K; j++){
                array[i*K+j] = LUTShiftReg[(K-1)*W+K-1-(i*W+j)];
            }
        }
    }
    }
    void push(T val){
    if constexpr(TShiftReg == 0){
        #pragma HLS ARRAY_PARTITION variable=ShiftReg complete dim=1
        #pragma HLS inline region
        T din = val;
        for(int i=0; i<K; i++){
            #pragma HLS UNROLL
            T tmp = ShiftReg[i*K+K-1];
            for(int j=K-2; j>=0; j--){
                #pragma HLS UNROLL
                ShiftReg[i*K + j+1] = ShiftReg[i*K + j];
            }
            ShiftReg[i*K] = din;
            if(i < K-1) din = pipes[i].push_and_pop(tmp);
        }
    }else{
        #pragma HLS ARRAY_PARTITION variable=LUTShiftReg complete dim=1
        #pragma HLS inline region
        for(int i=(K-1)*W+K-2; i>=0; i--){
            #pragma HLS UNROLL
            LUTShiftReg[i+1] = LUTShiftReg[i];
        }
        LUTShiftReg[0] = val;
    }
    }
};

// 222195
// template <typename T, int L>
// T sum(T* array)
// {
//     if constexpr(L==1){
//         return array[0];
//     }
//     else if constexpr(L%2 == 0){
//         return sum<T, L/2>(&array[0]) + sum<T, L/2>(&array[L/2]);
//     }
//     else{
//         return sum<T, L/2>(&array[0]) + sum<T, L/2>(&array[L/2]) + array[L-1];
//     }
// }

// 189667
template <typename T, int L>
T sum(T* array)
{
    T ret = 0;
    for(int i=0; i<L; i++) ret += array[i];
    return ret;
}

template <typename TA, typename TB, typename TR, int L>
TR inner_product(const TA* a, const TB* b)
{
    TR ret = 0;
    for(int i=0; i<L; i++){
        ret += a[i] * b[i];
    }
    return ret;
}

// slow
// template <typename TA, typename TB, typename TR, int L>
// TR inner_product(const TA* a, const TB* b)
// {
//     if constexpr(L==1){
//         return a[0] * b[0];
//     }
//     else if constexpr(L%2 == 0){
//         return inner_product<TA, TB, TR, L/2>(&a[0], &b[0]) + inner_product<TA, TB, TR, L/2>(&a[L/2], &b[L/2]);
//     }
//     else{
//         return inner_product<TA, TB, TR, L/2>(&a[0], &b[0]) + inner_product<TA, TB, TR, L/2>(&a[L/2], &b[L/2]) + a[L-1]*b[L-1];
//     }
// }

template <typename IT, typename OT, typename WT, typename BT, int IC, int IH, int IW, int OC, int OH, int OW, int K, int S, int P>
inline void Conv(
    hls::stream<IT> &in, 
    hls::stream<OT> &out,
    const WT weight[OC*IC*K*K],
    const BT bias[OC]
){
    //#pragma HLS DATAFLOW
    ConvShiftReg<IT, IH+2*P, IW+2*P, K, 1> shift_reg[IC];
    IT mat_buf[IC*K*K];
    OT gemm_buf[IC*OC];
    //OT debug_buf[OC*OH*OW];
    for(int h=-P; h<IH+P; h++){
        for(int w=-P; w<IW+P; w++){
            int i = h - (K/2)*2 + P;
            int j = w - (K/2)*2 + P;
            for(int ic=0; ic<IC; ic++){
                IT in_tmp = 0;
                if(0<=h && h<IH && 0<=w && w<IW) in_tmp = in.read();
                shift_reg[ic].push(in_tmp);
                shift_reg[ic].copyShiftReg(&mat_buf[ic*K*K]);
                for(int oc=0; oc<OC; oc++){
                    gemm_buf[oc*IC + ic] = inner_product<IT, WT, OT, K*K>(&mat_buf[ic*K*K], &weight[oc*IC*K*K + ic*K*K]);
                }
            }
            for(int oc=0; oc<OC; oc++){
                OT tmp = sum<OT, IC>(&gemm_buf[oc*IC]) + bias[oc];
                if(0 <= i && i < OH && 0 <= j && j < OW){
                    out.write(tmp);
                    //debug_buf[i*OW*OC + j*OC + oc] = tmp;
                }
            }
        }
    }
    //Debug_print<OT, OC, OH, OW>(debug_buf, "Conv");
}

template <typename IT, typename OT, typename WT, typename BT, int IC, int IH, int IW, int OC, int OH, int OW, int K, int S, int P>
inline void Convolver(
    IT in[IC*IW*IH], 
    OT out[OC*OW*OH],
    const WT weight[OC*IC*K*K],
    const BT bias[OC]
){

    ConvShiftReg<IT, IH+2*P, IW+2*P, K, 0> shift_reg[IC];
    IT mat_buf[IC*K*K];
    OT gemm_buf[IC*OC];
    for(int h=-P; h<IH+P; h++){
        for(int w=-P; w<IW+P; w++){
            int i = h - (K/2)*2 + P;
            int j = w - (K/2)*2 + P;
            for(int ic=0; ic<IC; ic++){
                if(0<=h && h<IH && 0<=w && w<IW) shift_reg[ic].push(in[h*IW*IC + w*IC + ic]);
                else                             shift_reg[ic].push(0);
                if(0 <= i && i < OH && 0 <= j && j < OW){
                    shift_reg[ic].copyShiftReg(&mat_buf[ic*K*K]);
                    for(int oc=0; oc<OC; oc++){
                        gemm_buf[oc*IC + ic] = inner_product<IT, WT, OT, K*K>(&mat_buf[ic*K*K], &weight[oc*IC*K*K + ic*K*K]);
                    }
                }
            }
            for(int oc=0; oc<OC; oc++){
                if(0 <= i && i < OH && 0 <= j && j < OW){
                    out[i*OW*OC + j*OC + oc] = sum<OT, IC>(&gemm_buf[oc*IC]);
                    out[i*OW*OC + j*OC + oc] += bias[oc];
                }
            }
        }
    }
}

template <typename IT, typename OT, typename WT, typename BT, int IC, int IH, int IW, int OC, int OH, int OW, int K, int S, int P>
inline void Conv(
    IT in[IC*IW*IH], 
    OT out[OC*OW*OH],
    const WT weight[OC*IC*K*K],
    const BT bias[OC]
)
{
#pragma omp parallel
{
    const int G = 1;
    #pragma omp for
    for(int h=0; h<OH; h+=S){
        for(int w=0; w<OW; w+=S){
            for(int oc=0; oc<OC; oc++){
                out[h*OW*OC + w*OC + oc] = bias[oc];
                //for(int ic=(IC/G*oc)%OC; ic<(IC/G*(oc+1))%OC; ic++){
                for(int ic=0; ic<IC; ic++){    // in channel
                	for(int m=-K/2+(K+1)%2; m<=K/2; m++){    // kernel size
                		for(int n=-K/2+(K+1)%2; n<=K/2; n++){    // kernel size
                            int i = h+m+(IH-OH)/2;
                            int j = w+n+(IW-OW)/2;
                            
                            if(i<0 || j<0 || i>=IH || j>=IW){
                                continue;
                            }
                            int k = m+K/2-(K+1)%2;
                            int l = n+K/2-(K+1)%2;

                            //out[h*OW*OC + w*OC + oc] += in[i*IW*IC + j*IC + ic] * weight[oc*IC*K*K + ic*K*K + k*K + l];
                            out[h*OW*OC + w*OC + oc] += in[i*IW*IC + j*IC + ic] * weight[oc*IC*K*K + (ic/G)*K*K + k*K + l];							
						}
					}
                }
            }
        }
    }
}
}


template <typename IT, typename OT, typename WT, typename BT, int IC, int IH, int IW, int OC, int OH, int OW>
inline void BatchNorm(
    IT in[IC*IW*IH], 
    OT out[OC*OW*OH],
    const WT weight[OC],
    const BT bias[OC]
){
#pragma omp parallel
{
    #pragma omp for
    for(int oc=0; oc<OC; oc++){ // out channel
        for(int w=0; w<OW; w++){ // input data width
            for(int h=0; h<OH; h++){ // input data height
                out[oc*OH*OW + w*OH + h] = (in[oc*OH*OW + w*OH + h] * weight[oc]) + bias[oc];
            }
        }
    }
}
}

template <typename IT, typename OT, int IC, int IH, int IW, int OC, int OH, int OW>
inline void Relu(
    IT in [IC*IH*IW], 
    OT out[OC*OH*OW]
){
#ifdef _OPENMP
#pragma omp parallel
#endif
{
    #ifdef _OPENMP
    #pragma omp for
    #endif
    for(int c=0; c<IC; c++) // out channel
        for(int h=0; h<IH; h++) // input data width
            for(int w=0; w<IW; w++) // input data height
                if(in[c*IH*IW + h*IW + w] < 0) out[c*OH*OW + h*OW + w] = 0;
                else                           out[c*OH*OW + h*OW + w] = in[c*OH*OW + h*OW + w];
}
}

template <typename IT, typename OT, int IC, int IH, int IW, int OC, int OH, int OW>
inline void Relu(
    hls::stream<IT> &in, 
    hls::stream<OT> &out
){
   //#pragma HLS DATAFLOW
    for(int c=0; c<IC; c++){
        for(int h=0; h<IH; h++){
            for(int w=0; w<IW; w++){
                IT tmp = in.read();
                if(tmp > 0) out.write(tmp);
                else        out.write(0);
            }
        }
    }              
}

template <typename IT, typename OT, int IC, int IH, int IW, int OC, int OH, int OW, int K, int S, int P>
inline void MaxPool(
    hls::stream<IT> &in, 
    hls::stream<OT> &out
){
    //#pragma HLS DATAFLOW
    ConvShiftReg<IT, IH, IW, K, 1> shift_reg[IC];
    IT buf[IC*K*K];
    //OT debug_buf[OC*OH*OW];
    for(int h=0; h<IH; h++){
        for(int w=0; w<IW; w++){
            for(int ic=0; ic<IC; ic++){
                shift_reg[ic].push(in.read());
                if(h >= OH*K || w >= OW*K)
                    continue;
                if((h%K) == (K-1) && (w%K) == (K-1)){
                    shift_reg[ic].copyShiftReg(&buf[ic*K*K]);
                    OT tmp = buf[ic*K*K];
                    for(int k=1; k<K*K; k++){
                        if(buf[ic*K*K + k] > tmp) tmp = buf[ic*K*K + k]; 
                    }
                    out.write(tmp);
                    //debug_buf[(h/K)*OW*OC + (w/K)*OC + ic] = tmp;
                }
            }
        }
    }
    //Debug_print<OT, OC, OH, OW>(debug_buf, "MaxPool");
}

template <typename IT, typename OT, int IC, int IH, int IW, int OC, int OH, int OW, int K, int S, int P>
inline void MaxPooler(
    IT in [IC*IH*IW],
    OT out[OC*OH*OW]
){
    ConvShiftReg<IT, IH, IW, K, 1> shift_reg[IC];
    IT buf[IC*K*K];
    for(int h=0; h<IH; h++){
        for(int w=0; w<IW; w++){
            for(int ic=0; ic<IC; ic++){
                shift_reg[ic].push(in[h*IW*IC + w*IC + ic]);
                if(h >= OH*K || w >= OW*K)
                    continue;
                if((h%K) == (K-1) && (w%K) == (K-1)){
                    shift_reg[ic].copyShiftReg(&buf[ic*K*K]);
                    OT tmp = buf[ic*K*K];
                    for(int k=1; k<K*K; k++){
                        if(buf[ic*K*K + k] > tmp) tmp = buf[ic*K*K + k]; 
                    }
                    //out.write(tmp);
                    out[(h/K)*OW*OC + (w/K)*OC + ic] = tmp;
                    
                }
            }
        }
    }
}

template <typename IT, typename OT, int IC, int IH, int IW, int OC, int OH, int OW, int K, int S, int P>
inline void MaxPool(
    IT in [IC*IH*IW],
    OT out[OC*OH*OW]
){
#pragma omp parallel
{
    #pragma omp for
    for(int h=0; h<IH; h+=S){    // data width
        for(int w=0; w<IW; w+=S){    // data height
            for(int i=0; i<IC; i++){
                for(int m=0; m<K; m++){    // pooling size
                    for(int n=0; n<K; n++){    // pooling size
                        if(h >= OH*K || w >= OW*K)
                            continue;
                        if(m==0 && n==0){
                            out[(h/K)*OW*OC + (w/K)*OC + i] = in[h*IW*IC + w*IC + i];
                        }
                        else if(out[(h/K)*OW*OC + (w/K)*OC + i] < in[(h+m)*IW*IC + (w+n)*IC + i]){
                            out[(h/K)*OW*OC + (w/K)*OC + i] = in[(h+m)*IW*IC + (w+n)*IC + i];
                        }
                    }
                }
            }
        }
    }
}
}

template <typename IT, typename OT, int IC, int IH, int IW, int OC, int OH, int OW>
inline void Flatten(
    hls::stream<IT> &in, 
    hls::stream<OT> &out
){
    //#pragma HLS DATAFLOW
    OT tmp[OC*OH*OW];
    for(int h=0; h<IH; h++){
        for(int w=0; w<IW; w++){
            for(int c=0; c<IC; c++){
                tmp[c*IH*IW + h*IW + w] = in.read();
            }
        }
    }
    for(int i=0; i<IC*IH*IW; i++){
        out.write(tmp[i]);
    }
    //Debug_print<OT, OC, OH, OW>(tmp, "Flatten");
}

template <typename IT, typename OT, int IC, int IH, int IW, int OC, int OH, int OW>
inline void Flatten(
    IT in [IC*IH*IW],
    OT out[OC*OH*OW]
){
#pragma omp parallel
{
    #pragma omp for
    for(int h=0; h<IH; h++){
        for(int w=0; w<IW; w++){
            for(int c=0; c<IC; c++){
                out[c*IH*IW + h*IW + w] = in[h*IW*IC + w*IC + c];
            }
        }
    }
}
}

template <typename T, int L>
class CyclicSR{
private:
    T reg[L];
public:
    void set_top(T val){
        reg[0] = val;
    }
    T get_top(void){
        return reg[0];
    }

    void shift(void){
        #pragma HLS ARRAY_PARTITION variable=reg complete dim=1
        #pragma HLS inline region
        T tmp = reg[0];
        for(int i=0; i<L-1; i++){
            #pragma HLS UNROLL
            reg[i] = reg[i+1];
        }
        reg[L-1] = tmp;
    }
};

template <typename IT, typename OT, typename WT, typename BT, int IC, int IH, int IW, int OC, int OH, int OW>
inline void Gemm(
    hls::stream<IT> &in, 
    hls::stream<OT> &out,
    const WT weight[IW*OW],
    const BT bias[OW]
)
{
    // #pragma HLS allocation instances=mul limit=OW operation
    // #pragma HLS array_partition variable=weight block factor=OW dim=1
    // //#pragma HLS array_partition variable=bias complete dim=0
    // CyclicSR<OT, OW> sum_buf;
    // #pragma HLS array_partition variable=sum_buf complete dim=1
    // for(int o=0; o<OW; o++){
    //     //sum_buf[o] = bias[o];
    //     sum_buf.set_top(bias[o]);
    //     sum_buf.shift();
    // }

    // IT shift_reg[OW];
    // #pragma HLS array_partition variable=shift_reg complete dim=1
    // for(int o=0; o<OW; o++){
    //     #pragma HLS UNROLL
    //     shift_reg[o] = 0;
    // }
    // for(int i=0; i<IW+OW-1; i++){
    //     IT in_tmp;
    //     if(i>=IW) in_tmp = 0;
    //     else      in_tmp = in.read();
    //     for(int o=OW-1; o>=1; o--){
    //         #pragma HLS UNROLL
    //         shift_reg[o] = shift_reg[o-1];
    //     }
    //     shift_reg[0] = in_tmp;
    //     for(int o=0; o<OW; o++){
    //         //#pragma HLS UNROLL
    //         unsigned int idx = i-o;
    //         idx = idx >= IW ? IW-1 : idx;
    //         //sum_buf[o] += shift_reg[o] * weight[o*IW + idx];
    //         sum_buf.set_top(sum_buf.get_top() + shift_reg[o] * weight[o*IW + idx]);
    //         sum_buf.shift();
    //     }
    // }

    // OT sum_buf[OW];
    // for(int i=-1; i<IW; i++){
    //     #pragma HLS PIPELINE II=OW
    //     IT in_tmp;
    //     if(i>=0) in_tmp = in.read();
    //     for(int o=0; o<OW; o++){
    //         OT fetched_data = sum_buf[o];
    //         if(i==-1){
    //             sum_buf[o] = bias[o];
    //         }
    //         else{
    //             sum_buf[o] = fetched_data + in_tmp * weight[o*IW + i];
    //         }  
    //     }
    // }
    // for(int o=0; o<OW; o++) out.write(sum_buf[o]);

    IT in_buf[IW];
    for(int i=0; i<IW; i++) in_buf[i] = in.read();

    OT out_buf[OW];
    for(int o=0; o<OW; o++){
        out_buf[o] = inner_product<IT, WT, OT, IW>(in_buf, &weight[o*IW]);
        out_buf[o] += bias[o];
    }

    for(int o=0; o<OW; o++) out.write(out_buf[o]);

    



    // for(int o=0; o<OW; o++){

    // }

    // for(int o=0; o<OW; o++){
    //     //out.write(sum_buf[0]);
    //     out.write(sum_buf.get_top());
    //     sum_buf.shift();
    //     // for(int i=0; i<OW-1; i++){
    //     //     #pragma HLS UNROLL
    //     //     sum_buf[i] = sum_buf[i+1];
    //     // }
    //     //#pragma HLS PIPELINE
    // }

}

template <typename IT, typename OT, typename WT, typename BT, int IC, int IH, int IW, int OC, int OH, int OW>
inline void Gemm(
    IT in [IW],
    OT out[OW],
    const WT weight[IW*OW],
    const BT bias[OW]
){
#pragma omp parallel
{
    #pragma omp for
    // for(int o=0; o<OW; o++){
    //     out[o] = inner_product<IT, WT, OT, IW>(in, &weight[o*IW]);
    //     out[o] += bias[o];
    // }

    for(int o=0; o<OW; o++){
        out[o] = bias[o];
        for(int i=0; i<IW; i++){
            out[o] += in[i] * weight[o*IW + i];
        }
    }
}
}

template <typename IT, typename OT, int IC, int IH, int IW, int OC, int OH, int OW>
inline void LogSoftmax(
    hls::stream<IT> &in, 
    hls::stream<OT> &out
){
    //#pragma HLS DATAFLOW
    IT max_val = in.read();
    OT max_idx = 0;
    SM: for(int i = 1; i < IW; i++){
        IT tmp = in.read();
        if( max_val < tmp){
            max_val = tmp;
            max_idx = i;
        }
    }
    out.write(max_idx);
}


template <typename IT, typename OT, int IC, int IH, int IW, int OC, int OH, int OW>
inline void LogSoftmax(
    IT in[IW],
    OT out[1]
){
    IT max_val = in[0];
    OT max_idx = 0;
    SM: for(int i = 1; i < IW; i++){
        if( max_val < in[i]){
            max_val = in[i];
            max_idx = i;
        }
    }
    out[0] = max_idx;
}



#endif