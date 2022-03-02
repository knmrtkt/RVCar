// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R (
address0, ce0, q0, address1, ce1, q1, address2, ce2, q2, address3, ce3, q3, address4, ce4, q4, address5, ce5, q5, address6, ce6, q6, address7, ce7, q7, address8, ce8, q8, address9, ce9, q9, address10, ce10, q10, address11, ce11, q11, address12, ce12, q12, address13, ce13, q13, address14, ce14, q14, address15, ce15, q15, address16, ce16, q16, address17, ce17, q17, address18, ce18, q18, address19, ce19, q19, address20, ce20, q20, address21, ce21, q21, address22, ce22, q22, address23, ce23, q23, address24, ce24, q24, address25, ce25, q25, address26, ce26, q26, address27, ce27, q27, address28, ce28, q28, address29, ce29, q29, address30, ce30, q30, address31, ce31, q31, address32, ce32, q32, address33, ce33, q33, address34, ce34, q34, address35, ce35, q35, address36, ce36, q36, address37, ce37, q37, address38, ce38, q38, address39, ce39, q39, address40, ce40, q40, address41, ce41, q41, address42, ce42, q42, address43, ce43, q43, address44, ce44, q44, address45, ce45, q45, address46, ce46, q46, address47, ce47, q47, address48, ce48, q48, address49, ce49, q49, address50, ce50, q50, address51, ce51, q51, address52, ce52, q52, address53, ce53, q53, address54, ce54, q54, address55, ce55, q55, address56, ce56, q56, address57, ce57, q57, address58, ce58, q58, address59, ce59, q59, address60, ce60, q60, address61, ce61, q61, address62, ce62, q62, address63, ce63, q63, reset,clk);

parameter DataWidth = 7;
parameter AddressWidth = 8;
parameter AddressRange = 192;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1;
input[AddressWidth-1:0] address2;
input ce2;
output reg[DataWidth-1:0] q2;
input[AddressWidth-1:0] address3;
input ce3;
output reg[DataWidth-1:0] q3;
input[AddressWidth-1:0] address4;
input ce4;
output reg[DataWidth-1:0] q4;
input[AddressWidth-1:0] address5;
input ce5;
output reg[DataWidth-1:0] q5;
input[AddressWidth-1:0] address6;
input ce6;
output reg[DataWidth-1:0] q6;
input[AddressWidth-1:0] address7;
input ce7;
output reg[DataWidth-1:0] q7;
input[AddressWidth-1:0] address8;
input ce8;
output reg[DataWidth-1:0] q8;
input[AddressWidth-1:0] address9;
input ce9;
output reg[DataWidth-1:0] q9;
input[AddressWidth-1:0] address10;
input ce10;
output reg[DataWidth-1:0] q10;
input[AddressWidth-1:0] address11;
input ce11;
output reg[DataWidth-1:0] q11;
input[AddressWidth-1:0] address12;
input ce12;
output reg[DataWidth-1:0] q12;
input[AddressWidth-1:0] address13;
input ce13;
output reg[DataWidth-1:0] q13;
input[AddressWidth-1:0] address14;
input ce14;
output reg[DataWidth-1:0] q14;
input[AddressWidth-1:0] address15;
input ce15;
output reg[DataWidth-1:0] q15;
input[AddressWidth-1:0] address16;
input ce16;
output reg[DataWidth-1:0] q16;
input[AddressWidth-1:0] address17;
input ce17;
output reg[DataWidth-1:0] q17;
input[AddressWidth-1:0] address18;
input ce18;
output reg[DataWidth-1:0] q18;
input[AddressWidth-1:0] address19;
input ce19;
output reg[DataWidth-1:0] q19;
input[AddressWidth-1:0] address20;
input ce20;
output reg[DataWidth-1:0] q20;
input[AddressWidth-1:0] address21;
input ce21;
output reg[DataWidth-1:0] q21;
input[AddressWidth-1:0] address22;
input ce22;
output reg[DataWidth-1:0] q22;
input[AddressWidth-1:0] address23;
input ce23;
output reg[DataWidth-1:0] q23;
input[AddressWidth-1:0] address24;
input ce24;
output reg[DataWidth-1:0] q24;
input[AddressWidth-1:0] address25;
input ce25;
output reg[DataWidth-1:0] q25;
input[AddressWidth-1:0] address26;
input ce26;
output reg[DataWidth-1:0] q26;
input[AddressWidth-1:0] address27;
input ce27;
output reg[DataWidth-1:0] q27;
input[AddressWidth-1:0] address28;
input ce28;
output reg[DataWidth-1:0] q28;
input[AddressWidth-1:0] address29;
input ce29;
output reg[DataWidth-1:0] q29;
input[AddressWidth-1:0] address30;
input ce30;
output reg[DataWidth-1:0] q30;
input[AddressWidth-1:0] address31;
input ce31;
output reg[DataWidth-1:0] q31;
input[AddressWidth-1:0] address32;
input ce32;
output reg[DataWidth-1:0] q32;
input[AddressWidth-1:0] address33;
input ce33;
output reg[DataWidth-1:0] q33;
input[AddressWidth-1:0] address34;
input ce34;
output reg[DataWidth-1:0] q34;
input[AddressWidth-1:0] address35;
input ce35;
output reg[DataWidth-1:0] q35;
input[AddressWidth-1:0] address36;
input ce36;
output reg[DataWidth-1:0] q36;
input[AddressWidth-1:0] address37;
input ce37;
output reg[DataWidth-1:0] q37;
input[AddressWidth-1:0] address38;
input ce38;
output reg[DataWidth-1:0] q38;
input[AddressWidth-1:0] address39;
input ce39;
output reg[DataWidth-1:0] q39;
input[AddressWidth-1:0] address40;
input ce40;
output reg[DataWidth-1:0] q40;
input[AddressWidth-1:0] address41;
input ce41;
output reg[DataWidth-1:0] q41;
input[AddressWidth-1:0] address42;
input ce42;
output reg[DataWidth-1:0] q42;
input[AddressWidth-1:0] address43;
input ce43;
output reg[DataWidth-1:0] q43;
input[AddressWidth-1:0] address44;
input ce44;
output reg[DataWidth-1:0] q44;
input[AddressWidth-1:0] address45;
input ce45;
output reg[DataWidth-1:0] q45;
input[AddressWidth-1:0] address46;
input ce46;
output reg[DataWidth-1:0] q46;
input[AddressWidth-1:0] address47;
input ce47;
output reg[DataWidth-1:0] q47;
input[AddressWidth-1:0] address48;
input ce48;
output reg[DataWidth-1:0] q48;
input[AddressWidth-1:0] address49;
input ce49;
output reg[DataWidth-1:0] q49;
input[AddressWidth-1:0] address50;
input ce50;
output reg[DataWidth-1:0] q50;
input[AddressWidth-1:0] address51;
input ce51;
output reg[DataWidth-1:0] q51;
input[AddressWidth-1:0] address52;
input ce52;
output reg[DataWidth-1:0] q52;
input[AddressWidth-1:0] address53;
input ce53;
output reg[DataWidth-1:0] q53;
input[AddressWidth-1:0] address54;
input ce54;
output reg[DataWidth-1:0] q54;
input[AddressWidth-1:0] address55;
input ce55;
output reg[DataWidth-1:0] q55;
input[AddressWidth-1:0] address56;
input ce56;
output reg[DataWidth-1:0] q56;
input[AddressWidth-1:0] address57;
input ce57;
output reg[DataWidth-1:0] q57;
input[AddressWidth-1:0] address58;
input ce58;
output reg[DataWidth-1:0] q58;
input[AddressWidth-1:0] address59;
input ce59;
output reg[DataWidth-1:0] q59;
input[AddressWidth-1:0] address60;
input ce60;
output reg[DataWidth-1:0] q60;
input[AddressWidth-1:0] address61;
input ce61;
output reg[DataWidth-1:0] q61;
input[AddressWidth-1:0] address62;
input ce62;
output reg[DataWidth-1:0] q62;
input[AddressWidth-1:0] address63;
input ce63;
output reg[DataWidth-1:0] q63;
input reset;
input clk;

reg [DataWidth-1:0] ram0[0:AddressRange-1];
reg [DataWidth-1:0] ram1[0:AddressRange-1];
reg [DataWidth-1:0] ram2[0:AddressRange-1];
reg [DataWidth-1:0] ram3[0:AddressRange-1];
reg [DataWidth-1:0] ram4[0:AddressRange-1];
reg [DataWidth-1:0] ram5[0:AddressRange-1];
reg [DataWidth-1:0] ram6[0:AddressRange-1];
reg [DataWidth-1:0] ram7[0:AddressRange-1];
reg [DataWidth-1:0] ram8[0:AddressRange-1];
reg [DataWidth-1:0] ram9[0:AddressRange-1];
reg [DataWidth-1:0] ram10[0:AddressRange-1];
reg [DataWidth-1:0] ram11[0:AddressRange-1];
reg [DataWidth-1:0] ram12[0:AddressRange-1];
reg [DataWidth-1:0] ram13[0:AddressRange-1];
reg [DataWidth-1:0] ram14[0:AddressRange-1];
reg [DataWidth-1:0] ram15[0:AddressRange-1];
reg [DataWidth-1:0] ram16[0:AddressRange-1];
reg [DataWidth-1:0] ram17[0:AddressRange-1];
reg [DataWidth-1:0] ram18[0:AddressRange-1];
reg [DataWidth-1:0] ram19[0:AddressRange-1];
reg [DataWidth-1:0] ram20[0:AddressRange-1];
reg [DataWidth-1:0] ram21[0:AddressRange-1];
reg [DataWidth-1:0] ram22[0:AddressRange-1];
reg [DataWidth-1:0] ram23[0:AddressRange-1];
reg [DataWidth-1:0] ram24[0:AddressRange-1];
reg [DataWidth-1:0] ram25[0:AddressRange-1];
reg [DataWidth-1:0] ram26[0:AddressRange-1];
reg [DataWidth-1:0] ram27[0:AddressRange-1];
reg [DataWidth-1:0] ram28[0:AddressRange-1];
reg [DataWidth-1:0] ram29[0:AddressRange-1];
reg [DataWidth-1:0] ram30[0:AddressRange-1];
reg [DataWidth-1:0] ram31[0:AddressRange-1];

initial begin
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram0);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram1);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram2);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram3);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram4);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram5);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram6);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram7);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram8);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram9);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram10);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram11);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram12);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram13);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram14);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram15);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram16);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram17);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram18);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram19);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram20);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram21);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram22);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram23);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram24);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram25);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram26);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram27);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram28);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram29);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram30);
    $readmemh("./mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_580_1_layers_9_weight_V_ROM_AUTO_1R.dat", ram31);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram0[address0];
    end
end



always @(posedge clk)  
begin 
    if (ce1) 
    begin
        q1 <= ram0[address1];
    end
end



always @(posedge clk)  
begin 
    if (ce2) 
    begin
        q2 <= ram1[address2];
    end
end



always @(posedge clk)  
begin 
    if (ce3) 
    begin
        q3 <= ram1[address3];
    end
end



always @(posedge clk)  
begin 
    if (ce4) 
    begin
        q4 <= ram2[address4];
    end
end



always @(posedge clk)  
begin 
    if (ce5) 
    begin
        q5 <= ram2[address5];
    end
end



always @(posedge clk)  
begin 
    if (ce6) 
    begin
        q6 <= ram3[address6];
    end
end



always @(posedge clk)  
begin 
    if (ce7) 
    begin
        q7 <= ram3[address7];
    end
end



always @(posedge clk)  
begin 
    if (ce8) 
    begin
        q8 <= ram4[address8];
    end
end



always @(posedge clk)  
begin 
    if (ce9) 
    begin
        q9 <= ram4[address9];
    end
end



always @(posedge clk)  
begin 
    if (ce10) 
    begin
        q10 <= ram5[address10];
    end
end



always @(posedge clk)  
begin 
    if (ce11) 
    begin
        q11 <= ram5[address11];
    end
end



always @(posedge clk)  
begin 
    if (ce12) 
    begin
        q12 <= ram6[address12];
    end
end



always @(posedge clk)  
begin 
    if (ce13) 
    begin
        q13 <= ram6[address13];
    end
end



always @(posedge clk)  
begin 
    if (ce14) 
    begin
        q14 <= ram7[address14];
    end
end



always @(posedge clk)  
begin 
    if (ce15) 
    begin
        q15 <= ram7[address15];
    end
end



always @(posedge clk)  
begin 
    if (ce16) 
    begin
        q16 <= ram8[address16];
    end
end



always @(posedge clk)  
begin 
    if (ce17) 
    begin
        q17 <= ram8[address17];
    end
end



always @(posedge clk)  
begin 
    if (ce18) 
    begin
        q18 <= ram9[address18];
    end
end



always @(posedge clk)  
begin 
    if (ce19) 
    begin
        q19 <= ram9[address19];
    end
end



always @(posedge clk)  
begin 
    if (ce20) 
    begin
        q20 <= ram10[address20];
    end
end



always @(posedge clk)  
begin 
    if (ce21) 
    begin
        q21 <= ram10[address21];
    end
end



always @(posedge clk)  
begin 
    if (ce22) 
    begin
        q22 <= ram11[address22];
    end
end



always @(posedge clk)  
begin 
    if (ce23) 
    begin
        q23 <= ram11[address23];
    end
end



always @(posedge clk)  
begin 
    if (ce24) 
    begin
        q24 <= ram12[address24];
    end
end



always @(posedge clk)  
begin 
    if (ce25) 
    begin
        q25 <= ram12[address25];
    end
end



always @(posedge clk)  
begin 
    if (ce26) 
    begin
        q26 <= ram13[address26];
    end
end



always @(posedge clk)  
begin 
    if (ce27) 
    begin
        q27 <= ram13[address27];
    end
end



always @(posedge clk)  
begin 
    if (ce28) 
    begin
        q28 <= ram14[address28];
    end
end



always @(posedge clk)  
begin 
    if (ce29) 
    begin
        q29 <= ram14[address29];
    end
end



always @(posedge clk)  
begin 
    if (ce30) 
    begin
        q30 <= ram15[address30];
    end
end



always @(posedge clk)  
begin 
    if (ce31) 
    begin
        q31 <= ram15[address31];
    end
end



always @(posedge clk)  
begin 
    if (ce32) 
    begin
        q32 <= ram16[address32];
    end
end



always @(posedge clk)  
begin 
    if (ce33) 
    begin
        q33 <= ram16[address33];
    end
end



always @(posedge clk)  
begin 
    if (ce34) 
    begin
        q34 <= ram17[address34];
    end
end



always @(posedge clk)  
begin 
    if (ce35) 
    begin
        q35 <= ram17[address35];
    end
end



always @(posedge clk)  
begin 
    if (ce36) 
    begin
        q36 <= ram18[address36];
    end
end



always @(posedge clk)  
begin 
    if (ce37) 
    begin
        q37 <= ram18[address37];
    end
end



always @(posedge clk)  
begin 
    if (ce38) 
    begin
        q38 <= ram19[address38];
    end
end



always @(posedge clk)  
begin 
    if (ce39) 
    begin
        q39 <= ram19[address39];
    end
end



always @(posedge clk)  
begin 
    if (ce40) 
    begin
        q40 <= ram20[address40];
    end
end



always @(posedge clk)  
begin 
    if (ce41) 
    begin
        q41 <= ram20[address41];
    end
end



always @(posedge clk)  
begin 
    if (ce42) 
    begin
        q42 <= ram21[address42];
    end
end



always @(posedge clk)  
begin 
    if (ce43) 
    begin
        q43 <= ram21[address43];
    end
end



always @(posedge clk)  
begin 
    if (ce44) 
    begin
        q44 <= ram22[address44];
    end
end



always @(posedge clk)  
begin 
    if (ce45) 
    begin
        q45 <= ram22[address45];
    end
end



always @(posedge clk)  
begin 
    if (ce46) 
    begin
        q46 <= ram23[address46];
    end
end



always @(posedge clk)  
begin 
    if (ce47) 
    begin
        q47 <= ram23[address47];
    end
end



always @(posedge clk)  
begin 
    if (ce48) 
    begin
        q48 <= ram24[address48];
    end
end



always @(posedge clk)  
begin 
    if (ce49) 
    begin
        q49 <= ram24[address49];
    end
end



always @(posedge clk)  
begin 
    if (ce50) 
    begin
        q50 <= ram25[address50];
    end
end



always @(posedge clk)  
begin 
    if (ce51) 
    begin
        q51 <= ram25[address51];
    end
end



always @(posedge clk)  
begin 
    if (ce52) 
    begin
        q52 <= ram26[address52];
    end
end



always @(posedge clk)  
begin 
    if (ce53) 
    begin
        q53 <= ram26[address53];
    end
end



always @(posedge clk)  
begin 
    if (ce54) 
    begin
        q54 <= ram27[address54];
    end
end



always @(posedge clk)  
begin 
    if (ce55) 
    begin
        q55 <= ram27[address55];
    end
end



always @(posedge clk)  
begin 
    if (ce56) 
    begin
        q56 <= ram28[address56];
    end
end



always @(posedge clk)  
begin 
    if (ce57) 
    begin
        q57 <= ram28[address57];
    end
end



always @(posedge clk)  
begin 
    if (ce58) 
    begin
        q58 <= ram29[address58];
    end
end



always @(posedge clk)  
begin 
    if (ce59) 
    begin
        q59 <= ram29[address59];
    end
end



always @(posedge clk)  
begin 
    if (ce60) 
    begin
        q60 <= ram30[address60];
    end
end



always @(posedge clk)  
begin 
    if (ce61) 
    begin
        q61 <= ram30[address61];
    end
end



always @(posedge clk)  
begin 
    if (ce62) 
    begin
        q62 <= ram31[address62];
    end
end



always @(posedge clk)  
begin 
    if (ce63) 
    begin
        q63 <= ram31[address63];
    end
end



endmodule

