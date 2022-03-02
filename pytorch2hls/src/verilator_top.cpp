
#include <stdio.h>
#include <verilated.h>

#include <iostream>
#include <string>

#include "param.h"

unsigned int test_img[IMG_SIZE];
//unsigned int **test_img;

int sim(KERNEL *dut){

    // Format
    int time_counter = 0;
    dut->ap_clk = 0;
    dut->ap_rst = 1;
    dut->ap_start = 0;

    // Reset Time
    while (time_counter < 100) {
        dut->eval();
        time_counter++;
        dut->ap_clk = !dut->ap_clk;
    }
    // Release reset
    dut->ap_rst = 0;
    dut->ap_clk = !dut->ap_clk;
    dut->eval();

    dut->ap_start = 1;
    unsigned int tmp_adr = 0;
    int cycle = 0;
    while (1) {
        dut->ap_clk = !dut->ap_clk; // Toggle clock
        // posedge
        if(dut->ap_clk == 1){
            if(dut->t_in_img_V_ce0){
                dut->t_in_img_V_q0 = test_img[tmp_adr];
                tmp_adr = dut->t_in_img_V_address0;
            }
            cycle++;
        }else{
            if(dut->ap_idle == 0) dut->ap_start = 0;
        }
        
        // Evaluate DUT
        dut->eval();
        if(dut->predict_num_ap_vld == 1) break;
        
    }
    return cycle;
}

int main(int argc, const char* argv[]){
    FILE *csv;
    printf("%s\n", argv[1]);
    if ((csv = fopen(argv[1], "r")) == NULL) {
		printf("csv file open error!!\n");
		return 1;
	}
    int  cycle;
    int  infcnt = 0;
    int  errcnt = 0;
    char csv_line[512];
    int  imgcnt = 0;
    while (fgets(csv_line, 512, csv) != NULL) {
        char hex_name[512];
        int  test_label;
        sscanf(csv_line, "%[^,],%d", hex_name, &test_label);
        
        FILE *hex;
        if ((hex = fopen(hex_name, "r")) == NULL) {
		    printf("img file open error!!\n");
		    return 1;
	    }

        char hex_line[16];
        unsigned int hex_val = 0;
        int p=0;
        while (fgets(hex_line, 128, hex) != NULL) {
            sscanf(hex_line, "%x", &hex_val);
            test_img[p] = hex_val;
            p++;
        }
        fclose(hex);
        KERNEL *dut = new KERNEL();
        cycle = sim(dut);

        if(test_label != dut->predict_num){
            printf("Inference miss in %s, correct label = %d, inferenced label = %d\n", hex_name, test_label, dut->predict_num);
            errcnt++;
        }
        infcnt++;
        printf("Elapsed cycle: %d\n", cycle);
        delete dut;
	}
	fclose(csv);

    int correct = infcnt-errcnt;
    printf("Verilog sim result, Accuracy: %d/%d (%f%%)\n", correct, infcnt, ((float)correct/infcnt)*100.0f);
    printf("Elapsed cycle: %d\n", cycle);

    return 0;
}

