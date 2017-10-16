# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7a100tcsg324-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/alga/workspace/github/CSI2Rx/project/ov4689/ov4689.cache/wt [current_project]
set_property parent.project_path /home/alga/workspace/github/CSI2Rx/project/ov4689/ov4689.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/alga/workspace/github/CSI2Rx/project/ov4689/ov4689.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_10bit_unpack.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_hs_clk_phy.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_clock_det.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_hs_lane_phy.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_byte_align.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_word_align.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_idelayctrl_gen.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_4_lane_link.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_hdr_ecc.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_line_buffer.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_packet_handler.vhd
  /home/alga/workspace/github/CSI2Rx/video-misc/video_timing_ctrl.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_video_output.vhd
  /home/alga/workspace/github/CSI2Rx/mipi-csi-rx/csi_rx_top.vhd
  /home/alga/workspace/github/CSI2Rx/dvi-tx/dvi_tx_clk_drv.vhd
  /home/alga/workspace/github/CSI2Rx/dvi-tx/dvi_tx_tmds_enc.vhd
  /home/alga/workspace/github/CSI2Rx/dvi-tx/dvi_tx_tmds_phy.vhd
  /home/alga/workspace/github/CSI2Rx/dvi-tx/dvi_tx_top.vhd
  /home/alga/workspace/github/CSI2Rx/framebuffer-ctrl/framebuffer_ctrl.vhd
  /home/alga/workspace/github/CSI2Rx/video-misc/video_fb_output.vhd
  /home/alga/workspace/github/CSI2Rx/demo-top/framebuffer_top.vhd
  /home/alga/workspace/github/CSI2Rx/video-misc/image_gain_wb.vhd
  /home/alga/workspace/github/CSI2Rx/ov-cam-control/ov13850_4k_regs.vhd
  /home/alga/workspace/github/CSI2Rx/ov-cam-control/ov_i2c_control.vhd
  /home/alga/workspace/github/CSI2Rx/ov-cam-control/ov13850_control_top.vhd
  /home/alga/workspace/github/CSI2Rx/video-misc/simple_debayer.vhd
  /home/alga/workspace/github/CSI2Rx/demo-top/ov13850_demo.vhd
}
read_ip -quiet /home/alga/workspace/github/CSI2Rx/project/IPcore/ddr3_if/ddr3_if.xci
set_property used_in_implementation false [get_files -all /home/alga/workspace/github/CSI2Rx/project/IPcore/ddr3_if/ddr3_if/user_design/constraints/ddr3_if.xdc]
set_property used_in_implementation false [get_files -all /home/alga/workspace/github/CSI2Rx/project/IPcore/ddr3_if/ddr3_if/user_design/constraints/ddr3_if_ooc.xdc]
set_property is_locked true [get_files /home/alga/workspace/github/CSI2Rx/project/IPcore/ddr3_if/ddr3_if.xci]

read_ip -quiet /home/alga/workspace/github/CSI2Rx/project/IPcore/output_line_buffer_1/output_line_buffer.xci
set_property used_in_implementation false [get_files -all /home/alga/workspace/github/CSI2Rx/project/IPcore/output_line_buffer_1/output_line_buffer_ooc.xdc]
set_property is_locked true [get_files /home/alga/workspace/github/CSI2Rx/project/IPcore/output_line_buffer_1/output_line_buffer.xci]

read_ip -quiet /home/alga/workspace/github/CSI2Rx/project/IPcore/input_line_buffer_1/input_line_buffer.xci
set_property used_in_implementation false [get_files -all /home/alga/workspace/github/CSI2Rx/project/IPcore/input_line_buffer_1/input_line_buffer_ooc.xdc]
set_property is_locked true [get_files /home/alga/workspace/github/CSI2Rx/project/IPcore/input_line_buffer_1/input_line_buffer.xci]

read_ip -quiet /home/alga/workspace/github/CSI2Rx/project/IPcore/camera_pll_1/camera_pll.xci
set_property used_in_implementation false [get_files -all /home/alga/workspace/github/CSI2Rx/project/IPcore/camera_pll_1/camera_pll_board.xdc]
set_property used_in_implementation false [get_files -all /home/alga/workspace/github/CSI2Rx/project/IPcore/camera_pll_1/camera_pll.xdc]
set_property used_in_implementation false [get_files -all /home/alga/workspace/github/CSI2Rx/project/IPcore/camera_pll_1/camera_pll_ooc.xdc]
set_property is_locked true [get_files /home/alga/workspace/github/CSI2Rx/project/IPcore/camera_pll_1/camera_pll.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/alga/workspace/github/CSI2Rx/project/ov4689/ov4689.srcs/constrs_1/new/ztex.xdc
set_property used_in_implementation false [get_files /home/alga/workspace/github/CSI2Rx/project/ov4689/ov4689.srcs/constrs_1/new/ztex.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top ov13850_demo -part xc7a100tcsg324-2


write_checkpoint -force -noxdef ov13850_demo.dcp

catch { report_utilization -file ov13850_demo_utilization_synth.rpt -pb ov13850_demo_utilization_synth.pb }
