
j
Command: %s
53*	vivadotcl29
%write_bitstream -force SOC_TOP_V2.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2H
 "2
ulogic/Glym17	ulogic/Glym172default:default2default:default2R
 "<
ulogic/Glym17/A[29:0]ulogic/Glym17/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2H
 "2
ulogic/Glym17	ulogic/Glym172default:default2default:default2R
 "<
ulogic/Glym17/B[17:0]ulogic/Glym17/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2N
 "8
ulogic/Glym17__0	ulogic/Glym17__02default:default2default:default2X
 "B
ulogic/Glym17__0/A[29:0]ulogic/Glym17__0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2N
 "8
ulogic/Glym17__0	ulogic/Glym17__02default:default2default:default2X
 "B
ulogic/Glym17__0/B[17:0]ulogic/Glym17__0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2N
 "8
ulogic/Glym17__1	ulogic/Glym17__12default:default2default:default2X
 "B
ulogic/Glym17__1/A[29:0]ulogic/Glym17__1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2N
 "8
ulogic/Glym17__1	ulogic/Glym17__12default:default2default:default2X
 "B
ulogic/Glym17__1/B[17:0]ulogic/Glym17__1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2H
 "2
ulogic/Glym17	ulogic/Glym172default:default2default:default2R
 "<
ulogic/Glym17/P[47:0]ulogic/Glym17/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2N
 "8
ulogic/Glym17__0	ulogic/Glym17__02default:default2default:default2X
 "B
ulogic/Glym17__0/P[47:0]ulogic/Glym17__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2N
 "8
ulogic/Glym17__1	ulogic/Glym17__12default:default2default:default2X
 "B
ulogic/Glym17__1/P[47:0]ulogic/Glym17__1/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2H
 "2
ulogic/Glym17	ulogic/Glym172default:default2default:default2R
 "<
ulogic/Glym17/P[47:0]ulogic/Glym17/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2N
 "8
ulogic/Glym17__0	ulogic/Glym17__02default:default2default:default2X
 "B
ulogic/Glym17__0/P[47:0]ulogic/Glym17__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2N
 "8
ulogic/Glym17__1	ulogic/Glym17__12default:default2default:default2X
 "B
ulogic/Glym17__1/P[47:0]ulogic/Glym17__1/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2^
 "H
AhbDtcm/buf_addr_reg[13]	AhbDtcm/buf_addr_reg[13]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kfnm17_reg	ulogic/Kfnm17_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kfyt07_reg	ulogic/Kfyt07_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kgdzz6_reg	ulogic/Kgdzz6_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Klgm17_reg	ulogic/Klgm17_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kmat07_reg	ulogic/Kmat07_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kmhzz6_reg	ulogic/Kmhzz6_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Ko8oz6_reg	ulogic/Ko8oz6_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kqgm17_reg	ulogic/Kqgm17_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Ksmzz6_reg	ulogic/Ksmzz6_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kvbt07_reg	ulogic/Kvbt07_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kxut07_reg	ulogic/Kxut07_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kyrt07_reg	ulogic/Kyrt07_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kyzt07_reg	ulogic/Kyzt07_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kzit07_reg	ulogic/Kzit07_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Kznt07_reg	ulogic/Kznt07_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/L0ht07_reg	ulogic/L0ht07_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/L1qoz6_reg	ulogic/L1qoz6_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/L23u07_reg	ulogic/L23u07_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
DTCM/BRAM_reg_0_0	DTCM/BRAM_reg_0_02default:default2default:default2p
 "Z
!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]!DTCM/BRAM_reg_0_0/ADDRARDADDR[14]2default:default2default:default2V
 "@
DTCM/ADDRARDADDR[13]DTCM/ADDRARDADDR[13]2default:default2default:default2P
 ":
ulogic/Ltwf07_reg	ulogic/Ltwf07_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?#
`No routable loads: 25 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2?"
 "?
?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"?
]dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg[2:0]Xdbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg2default:default"?
`dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg_en_2[1]`dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg_en_2[1]2default:default"?
\dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_en_2[1]\dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_en_2[1]2default:default"?
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_capture[0]Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_capture2default:default"?
Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_drck[0]Ldbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_drck2default:default"?
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_runtest[0]Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_runtest2default:default"?
?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow2default:default"?
?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow2default:default"?
?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default"?
?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:default"?
?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0]?dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0]2default:default"?
Idbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_inst/s_bscan_tmsIdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_inst/s_bscan_tms2default:default"?
Kyour_instance_name/inst/ila_core_inst/u_ila_regs/U_XSDB_SLAVE/s_daddr_o[13]Kyour_instance_name/inst/ila_core_inst/u_ila_regs/U_XSDB_SLAVE/s_daddr_o[13]2default:default"?
Kyour_instance_name/inst/ila_core_inst/u_ila_regs/U_XSDB_SLAVE/s_daddr_o[14]Kyour_instance_name/inst/ila_core_inst/u_ila_regs/U_XSDB_SLAVE/s_daddr_o[14]2default:..."/
(the first 15 of 23 listed)2default:default2default:default2=
 %DRC|Implementation|Routing|Chip Level2default:default8Z	RTSTAT-10h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 35 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
a
Writing bitstream %s...
11*	bitstream2$
./SOC_TOP_V2.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px? 
?
?'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2h
TD:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Sat Feb 25 18:13:37 20232default:default2P
<C:/vivado/Xilinx/Vivado/2019.2/doc/webtalk_introduction.html2default:defaultZ17-186h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1342default:default2
602default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:282default:default2
00:00:272default:default2
2545.6052default:default2
464.2702default:defaultZ17-268h px? 


End Record