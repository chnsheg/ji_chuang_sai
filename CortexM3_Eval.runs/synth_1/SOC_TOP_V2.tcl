# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param xicom.use_bs_reader 1
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tfgg484-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.cache/wt [current_project]
set_property parent.project_path D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtx.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxArbM0.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxArbM1.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxArbM2.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxArbM3.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxArbM4.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxDecS0.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxDecS1.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxDecS2.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxDecS3.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxDecS4.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxInStg.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxOutStgM0.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxOutStgM1.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxOutStgM2.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxOutStgM3.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtxOutStgM4.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L1AhbMtx/L1AhbMtx_default_slave.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L2AhbMtx/L2AhbArb.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L2AhbMtx/L2AhbDecS0.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L2AhbMtx/L2AhbInStg.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L2AhbMtx/L2AhbMtx.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L2AhbMtx/L2AhbMtx_default_slave.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/L2AhbMtx/L2AhbOutStg.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/peripheral/cmsdk_ahb_default_slave.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/gpio/cmsdk_ahb_gpio.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/sys_ahb/cmsdk_ahb_to_ahb_sync.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/sys_ahb/cmsdk_ahb_to_ahb_sync_error_canc.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/rtl_cortex/cmsdk_ahb_to_apb.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/gpio/cmsdk_ahb_to_iop.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/peripheral/cmsdk_ahb_to_sram.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/led/cmsdk_apb3_eg_slave_interface_led.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/led/cmsdk_apb3_eg_slave_led.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/apb/cmsdk_apb_slave_mux.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/peripheral/cmsdk_apb_uart.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/peripheral/cmsdk_fpga_sram.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/gpio/cmsdk_iop_gpio.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/rtl_cortex/cortexm3ds_logic.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/button/custom_apb_button.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/imports/led/custom_apb_led.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/new/swdio_tri_buf.v
  D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/new/ARM_SOC_TOP.v
}
read_ip -quiet D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all d:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

read_ip -quiet D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/ip/ila_0/ila_0.xci
set_property used_in_synthesis false [get_files -all d:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all d:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/sources_1/ip/ila_0/ila_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/constrs_1/new/SOC1.xdc
set_property used_in_implementation false [get_files D:/FPGA/ARM_SPI/CortexM3_Eval/CortexM3_Eval.srcs/constrs_1/new/SOC1.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top SOC_TOP_V2 -part xc7a35tfgg484-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef SOC_TOP_V2.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file SOC_TOP_V2_utilization_synth.rpt -pb SOC_TOP_V2_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
