#include <verilated.h> // Defines common routines
#include "Vtop.h"      // From Verilating "top.v"

#define TIMEOUT 24000000000  // 6000000000*2*2

Vtop *top;                // Instantiation of module
vluint64_t main_time = 0; // Current simulation time
                          // This is a 64-bit integer to reduce wrap over issues and
                          // allow modulus. You can also use a double, if you wish.

double sc_time_stamp () { // Called by $time in Verilog
    return main_time;     // converts to double, to match
                          // what SystemC does
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv); // Remember args
    top = new Vtop;                     // Create instance

    // register
    uint32_t CLK   = 0; // reg CLK = 0;
    uint32_t w_rst = 1; // reg w_rst = 1;

    while (!Verilated::gotFinish()) {
        if (main_time == 5) {
            w_rst = 0;
        }
        if ((main_time % 2) == 0) {
            CLK = 0;
        }
        if ((main_time % 2) == 1) { 
            CLK = 1;
        }

        // Set some inputs
        top->CLK   = CLK;
        top->w_rst = w_rst;

#ifdef TIMEOUT
        if (main_time == TIMEOUT) {
            printf("Simulation Time out...\n");
            break;
        }
#endif
        top->eval(); // Evaluate model
        main_time++; // Time passes...
    }
    top->final(); // Done simulating
    delete top;
}
