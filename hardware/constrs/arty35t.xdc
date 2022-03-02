#set_property -dict { PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports { w_btnu }];
#set_property -dict { PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports { w_btnd }];
set_property -dict { PACKAGE_PIN E3  IOSTANDARD LVCMOS33} [get_ports { CLK }];
#create_clock -add -name sys_clk -period 10.00 [get_ports {CLK}];
create_clock -add -name sys_clk -period 5.88 [get_ports {CLK}];

###############################################################################################
create_pblock PB0
#resize_pblock        [get_pblocks PB0] -add {CLOCKREGION_X1Y0}
resize_pblock        [get_pblocks PB0] -add {CLOCKREGION_X1Y0} -add {CLOCKREGION_X1Y1}
add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {p}]]
add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {v}]]
add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {imem}]]
add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {dmem}]]

add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {m_7segcon}]]
add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {ploader}]]
add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {UartTx0}]]
###############################################################################################

#set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports { r_led[0] }];
#set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports { r_led[1] }];
#set_property -dict { PACKAGE_PIN J13 IOSTANDARD LVCMOS33} [get_ports { r_led[2] }];
#set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports { r_led[3] }];
#set_property -dict { PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports { r_led[4] }];
#set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports { r_led[5] }];
#set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports { r_led[6] }];
#set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports { r_led[7] }];
#set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports { r_led[8] }];
#set_property -dict { PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports { r_led[9] }];
#set_property -dict { PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports { r_led[10] }];
#set_property -dict { PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports { r_led[11] }];
#set_property -dict { PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports { r_led[12] }];
#set_property -dict { PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports { r_led[13] }];
#set_property -dict { PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports { r_led[14] }];
#set_property -dict { PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports { r_led[15] }];

#set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports { r_sg[6] }]; # segment a
#set_property -dict { PACKAGE_PIN R10 IOSTANDARD LVCMOS33} [get_ports { r_sg[5] }]; # segment b
#set_property -dict { PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports { r_sg[4] }]; # segment c
#set_property -dict { PACKAGE_PIN K13 IOSTANDARD LVCMOS33} [get_ports { r_sg[3] }]; # segment d
#set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports { r_sg[2] }]; # segment e
#set_property -dict { PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports { r_sg[1] }]; # segment f
#set_property -dict { PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports { r_sg[0] }]; # segment g

#set_property -dict { PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports { r_an[0] }];
#set_property -dict { PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports { r_an[1] }];
#set_property -dict { PACKAGE_PIN T9  IOSTANDARD LVCMOS33} [get_ports { r_an[2] }];
#set_property -dict { PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports { r_an[3] }];
#set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports { r_an[4] }];
#set_property -dict { PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports { r_an[5] }];
#set_property -dict { PACKAGE_PIN K2  IOSTANDARD LVCMOS33} [get_ports { r_an[6] }];
#set_property -dict { PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports { r_an[7] }];

set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { w_rxd }];
set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { r_txd }];
###############################################################################################
