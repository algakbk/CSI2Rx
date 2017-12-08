# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
create_project -in_memory -part xc7a100tcsg324-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.cache/wt [current_project]
set_property parent.project_path /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_10bit_unpack.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_hs_clk_phy.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_clock_det.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_hs_lane_phy.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_byte_align.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_word_align.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_idelayctrl_gen.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_4_lane_link.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_hdr_ecc.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_line_buffer.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_packet_handler.vhd
  /home/baktiiar/workspace/github/CSI2Rx/video-misc/video_timing_ctrl.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_video_output.vhd
  /home/baktiiar/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_top.vhd
  /home/baktiiar/workspace/github/CSI2Rx/dvi-tx/dvi_tx_clk_drv.vhd
  /home/baktiiar/workspace/github/CSI2Rx/dvi-tx/dvi_tx_tmds_enc.vhd
  /home/baktiiar/workspace/github/CSI2Rx/dvi-tx/dvi_tx_tmds_phy.vhd
  /home/baktiiar/workspace/github/CSI2Rx/dvi-tx/dvi_tx_top.vhd
  /home/baktiiar/workspace/github/CSI2Rx/framebuffer-ctrl/framebuffer_ctrl.vhd
  /home/baktiiar/workspace/github/CSI2Rx/video-misc/video_fb_output.vhd
  /home/baktiiar/workspace/github/CSI2Rx/demo-top/framebuffer_top.vhd
  /home/baktiiar/workspace/github/CSI2Rx/video-misc/image_gain_wb.vhd
  /home/baktiiar/workspace/github/CSI2Rx/ov-cam-control/ov_i2c_control.vhd
  /home/baktiiar/workspace/github/CSI2Rx/project/ov4689_regs.vhd
  /home/baktiiar/workspace/github/CSI2Rx/ov-cam-control/ov13850_control_top.vhd
  /home/baktiiar/workspace/github/CSI2Rx/video-misc/simple_debayer.vhd
  /home/baktiiar/workspace/github/CSI2Rx/demo-top/ov13850_demo.vhd
}
read_ip -quiet /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/input_line_buffer_1/input_line_buffer.xci
set_property used_in_implementation false [get_files -all /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/input_line_buffer_1/input_line_buffer_ooc.xdc]
set_property is_locked true [get_files /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/input_line_buffer_1/input_line_buffer.xci]

read_ip -quiet /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/output_line_buffer_1/output_line_buffer.xci
set_property used_in_implementation false [get_files -all /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/output_line_buffer_1/output_line_buffer_ooc.xdc]
set_property is_locked true [get_files /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/output_line_buffer_1/output_line_buffer.xci]

read_ip -quiet /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/ddr3_if/ddr3_if.xci
set_property used_in_implementation false [get_files -all /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/ddr3_if/ddr3_if/user_design/constraints/ddr3_if_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/ddr3_if/ddr3_if/user_design/constraints/ddr3_if.xdc]
set_property is_locked true [get_files /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/ddr3_if/ddr3_if.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.srcs/constrs_1/new/ztex.xdc
set_property used_in_implementation false [get_files /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.srcs/constrs_1/new/ztex.xdc]


synth_design -top ov13850_demo -part xc7a100tcsg324-2


write_checkpoint -force -noxdef ov13850_demo.dcp

catch { report_utilization -file ov13850_demo_utilization_synth.rpt -pb ov13850_demo_utilization_synth.pb }
