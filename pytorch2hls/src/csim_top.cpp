#include <stdio.h>
#include <ap_fixed.h>
#include <ap_int.h>

void KERNEL(ap_uint<8*IMG_CHANNEL> t_in_img_V[IMG_SIZE], int *predict_num);

int main(int argc, const char* argv[]){
    FILE *csv;
    if ((csv = fopen(argv[1], "r")) == NULL) {
		printf("csv file open error!!\n");
		return 1;
	}

    int  errcnt = 0;
    int  infcnt = 0;
    char csv_line[512];
    while (fgets(csv_line, 512, csv) != NULL) {
        char hex_name[512];
        int  test_label;
        sscanf(csv_line, "%[^,],%d", hex_name, &test_label);
        
        FILE *hex;
        if ((hex = fopen(hex_name, "r")) == NULL) {
		    printf("img file open error!!\n");
		    return 1;
	    }

        ap_uint<8*IMG_CHANNEL> test_img[IMG_SIZE];
        char hex_line[16];
        unsigned int hex_val = 0;
        int p=0;
        while (fgets(hex_line, 128, hex) != NULL) {
            sscanf(hex_line, "%x", &hex_val);
            test_img[p] = hex_val;
            p++;
        }
        fclose(hex);

        int result_num;
        KERNEL(test_img, &result_num);
        if(test_label != result_num){
            printf("Inference miss in %s, correct label = %d, inferenced label = %d\n", hex_name, test_label, result_num);
            errcnt++;
        }
        infcnt++;
	}
	fclose(csv);

    int correct = infcnt-errcnt;
    printf("CPP sim result, Accuracy: %d/%d (%f%%)\n", correct, infcnt, ((float)correct/infcnt)*100.0f);

    return 0;
}

