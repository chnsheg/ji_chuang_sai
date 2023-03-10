set_property IOSTANDARD LVCMOS33 [get_ports {ledOut[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports CLK125m]
set_property IOSTANDARD LVCMOS33 [get_ports KEY]
set_property IOSTANDARD LVCMOS33 [get_ports reset_n]
set_property IOSTANDARD LVCMOS33 [get_ports RXD]
set_property IOSTANDARD LVCMOS33 [get_ports SWCLK]
set_property IOSTANDARD LVCMOS33 [get_ports SWDIO]
set_property IOSTANDARD LVCMOS33 [get_ports TXD]

set_property PACKAGE_PIN R4 [get_ports CLK125m]
set_property PACKAGE_PIN U7 [get_ports reset_n]
set_property PACKAGE_PIN T6 [get_ports KEY]
set_property PACKAGE_PIN E14 [get_ports RXD]
set_property PACKAGE_PIN B22 [get_ports SWDIO]
set_property PACKAGE_PIN D17 [get_ports TXD]
set_property PACKAGE_PIN D20 [get_ports SWCLK]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets SWCLK_IBUF]

set_property IOSTANDARD LVCMOS33 [get_ports {EXP[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {EXP[15]}]



set_property PACKAGE_PIN U17 [get_ports {EXP[15]}]
set_property PACKAGE_PIN A18 [get_ports {EXP[14]}]
set_property PACKAGE_PIN B13 [get_ports {EXP[13]}]
set_property PACKAGE_PIN C15 [get_ports {EXP[12]}]
set_property PACKAGE_PIN B16 [get_ports {EXP[11]}]
set_property PACKAGE_PIN C19 [get_ports {EXP[10]}]
set_property PACKAGE_PIN A20 [get_ports {EXP[9]}]
set_property PACKAGE_PIN C20 [get_ports {EXP[8]}]
set_property PACKAGE_PIN C22 [get_ports {EXP[7]}]
set_property PACKAGE_PIN A21 [get_ports {EXP[6]}]
set_property PACKAGE_PIN D15 [get_ports {EXP[5]}]
set_property PACKAGE_PIN T4 [get_ports {EXP[4]}]
set_property PACKAGE_PIN W7 [get_ports {EXP[3]}]
set_property PACKAGE_PIN Y7 [get_ports {EXP[2]}]
set_property PACKAGE_PIN Y8 [get_ports {EXP[1]}]
set_property PACKAGE_PIN V9 [get_ports {EXP[0]}]


set_property PACKAGE_PIN B20 [get_ports {ledOut[3]}]
set_property PACKAGE_PIN B21 [get_ports {ledOut[2]}]
set_property PACKAGE_PIN D14 [get_ports {ledOut[1]}]
set_property PACKAGE_PIN E16 [get_ports {ledOut[0]}]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
