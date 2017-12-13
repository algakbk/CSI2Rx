set_property PACKAGE_PIN N5 [get_ports {csi0_clk[1]}]
set_property PACKAGE_PIN M6 [get_ports {csi0_d0[1]}]
set_property PACKAGE_PIN L6 [get_ports {csi0_d1[1]}]
set_property PACKAGE_PIN P4 [get_ports {csi0_d2[1]}]
set_property PACKAGE_PIN M4 [get_ports {csi0_d3[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {csi0_clk[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {csi0_clk[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {csi0_d0[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {csi0_d0[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {csi0_d1[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {csi0_d1[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {csi0_d2[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {csi0_d2[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {csi0_d3[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {csi0_d3[0]}]
set_property PACKAGE_PIN V9 [get_ports cam_i2c_sda]
set_property PACKAGE_PIN V7 [get_ports cam_i2c_sck]
set_property PACKAGE_PIN V6 [get_ports cam_rstn]
set_property PACKAGE_PIN P15 [get_ports clock_p]

set_property IOSTANDARD TMDS_33 [get_ports {hdmi_clk[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_clk[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d0[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d0[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d1[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d1[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d2[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d2[0]}]

set_property PACKAGE_PIN L3 [get_ports cam_mclk]
set_property PACKAGE_PIN K15 [get_ports {hdmi_clk[1]}]
set_property PACKAGE_PIN G18 [get_ports {hdmi_d0[1]}]
set_property PACKAGE_PIN H17 [get_ports {hdmi_d1[1]}]
set_property PACKAGE_PIN J14 [get_ports {hdmi_d2[1]}]
set_property PACKAGE_PIN U9 [get_ports reset_n]


set_property IOSTANDARD LVCMOS25 [get_ports cam_i2c_sck]
set_property IOSTANDARD LVCMOS25 [get_ports cam_i2c_sda]
set_property IOSTANDARD LVCMOS25 [get_ports cam_mclk]
set_property IOSTANDARD LVCMOS25 [get_ports cam_rstn]
set_property IOSTANDARD LVCMOS25 [get_ports clock_p]
set_property IOSTANDARD LVCMOS25 [get_ports reset_n]

#create_clock -period 2.500 -name csi -waveform {0.000 1.250} [get_ports {csi0_clk[1]}]
#create_clock -period 2.500 -name csi2 -waveform {1.250 2.500} [get_ports {csi0_clk[0]}]
#set_input_delay -clock [get_clocks csi] 1.000 [get_ports {{csi0_d0[0]} {csi0_d0[1]} {csi0_d1[0]} {csi0_d1[1]} {csi0_d2[0]} {csi0_d2[1]} {csi0_d3[0]} {csi0_d3[1]}}]
#set_input_delay -clock [get_clocks csi] -clock_fall 1.000 [get_ports {{csi0_d0[0]} {csi0_d0[1]} {csi0_d1[0]} {csi0_d1[1]} {csi0_d2[0]} {csi0_d2[1]} {csi0_d3[0]} {csi0_d3[1]}}]
#set_output_delay -clock [get_clocks [get_clocks -filter {IS_GENERATED && MASTER_CLOCK == clock_p} -of_objects [get_pins pll1/inst/plle2_adv_inst/CLKOUT1]]] 0.000 [get_ports {{hdmi_clk[0]} {hdmi_clk[1]} {hdmi_d0[0]} {hdmi_d0[1]} {hdmi_d1[0]} {hdmi_d1[1]} {hdmi_d2[0]} {hdmi_d2[1]}}]
#set_output_delay -clock [get_clocks [get_clocks -filter {IS_GENERATED && MASTER_CLOCK == clock_p} -of_objects [get_pins pll1/inst/plle2_adv_inst/CLKOUT1]]] -clock_fall 0.000 [get_ports {{hdmi_clk[0]} {hdmi_clk[1]} {hdmi_d0[0]} {hdmi_d0[1]} {hdmi_d1[0]} {hdmi_d1[1]} {hdmi_d2[0]} {hdmi_d2[1]}}]




#set_property PACKAGE_PIN B11 [get_ports sys_mclk]
#set_property IOSTANDARD LVCMOS33 [get_ports sys_mclk]
#set_property PACKAGE_PIN A14 [get_ports i2c_mclk]
#set_property IOSTANDARD LVCMOS33 [get_ports i2c_mclk]

#set_property PACKAGE_PIN B12 [get_ports ic_mclk]
#set_property IOSTANDARD LVCMOS33 [get_ports ic_mclk]

set_property PULLUP true [get_ports reset_n]
set_property PULLUP true [get_ports cam_i2c_sck]
set_property PULLUP true [get_ports cam_i2c_sda]



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 32768 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list pll2/inst/camera_pixel_clock]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 64 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {fbtest/fbctl/input_linebuf_din[0]} {fbtest/fbctl/input_linebuf_din[1]} {fbtest/fbctl/input_linebuf_din[2]} {fbtest/fbctl/input_linebuf_din[3]} {fbtest/fbctl/input_linebuf_din[4]} {fbtest/fbctl/input_linebuf_din[5]} {fbtest/fbctl/input_linebuf_din[6]} {fbtest/fbctl/input_linebuf_din[7]} {fbtest/fbctl/input_linebuf_din[8]} {fbtest/fbctl/input_linebuf_din[9]} {fbtest/fbctl/input_linebuf_din[10]} {fbtest/fbctl/input_linebuf_din[11]} {fbtest/fbctl/input_linebuf_din[12]} {fbtest/fbctl/input_linebuf_din[13]} {fbtest/fbctl/input_linebuf_din[14]} {fbtest/fbctl/input_linebuf_din[15]} {fbtest/fbctl/input_linebuf_din[16]} {fbtest/fbctl/input_linebuf_din[17]} {fbtest/fbctl/input_linebuf_din[18]} {fbtest/fbctl/input_linebuf_din[19]} {fbtest/fbctl/input_linebuf_din[20]} {fbtest/fbctl/input_linebuf_din[21]} {fbtest/fbctl/input_linebuf_din[22]} {fbtest/fbctl/input_linebuf_din[23]} {fbtest/fbctl/input_linebuf_din[24]} {fbtest/fbctl/input_linebuf_din[25]} {fbtest/fbctl/input_linebuf_din[26]} {fbtest/fbctl/input_linebuf_din[27]} {fbtest/fbctl/input_linebuf_din[28]} {fbtest/fbctl/input_linebuf_din[29]} {fbtest/fbctl/input_linebuf_din[30]} {fbtest/fbctl/input_linebuf_din[31]} {fbtest/fbctl/input_linebuf_din[32]} {fbtest/fbctl/input_linebuf_din[33]} {fbtest/fbctl/input_linebuf_din[34]} {fbtest/fbctl/input_linebuf_din[35]} {fbtest/fbctl/input_linebuf_din[36]} {fbtest/fbctl/input_linebuf_din[37]} {fbtest/fbctl/input_linebuf_din[38]} {fbtest/fbctl/input_linebuf_din[39]} {fbtest/fbctl/input_linebuf_din[40]} {fbtest/fbctl/input_linebuf_din[41]} {fbtest/fbctl/input_linebuf_din[42]} {fbtest/fbctl/input_linebuf_din[43]} {fbtest/fbctl/input_linebuf_din[44]} {fbtest/fbctl/input_linebuf_din[45]} {fbtest/fbctl/input_linebuf_din[46]} {fbtest/fbctl/input_linebuf_din[47]} {fbtest/fbctl/input_linebuf_din[48]} {fbtest/fbctl/input_linebuf_din[49]} {fbtest/fbctl/input_linebuf_din[50]} {fbtest/fbctl/input_linebuf_din[51]} {fbtest/fbctl/input_linebuf_din[52]} {fbtest/fbctl/input_linebuf_din[53]} {fbtest/fbctl/input_linebuf_din[54]} {fbtest/fbctl/input_linebuf_din[55]} {fbtest/fbctl/input_linebuf_din[56]} {fbtest/fbctl/input_linebuf_din[57]} {fbtest/fbctl/input_linebuf_din[58]} {fbtest/fbctl/input_linebuf_din[59]} {fbtest/fbctl/input_linebuf_din[60]} {fbtest/fbctl/input_linebuf_din[61]} {fbtest/fbctl/input_linebuf_din[62]} {fbtest/fbctl/input_linebuf_din[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 11 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {fbtest/fbctl/input_linebuf_write_addr[0]} {fbtest/fbctl/input_linebuf_write_addr[1]} {fbtest/fbctl/input_linebuf_write_addr[2]} {fbtest/fbctl/input_linebuf_write_addr[3]} {fbtest/fbctl/input_linebuf_write_addr[4]} {fbtest/fbctl/input_linebuf_write_addr[5]} {fbtest/fbctl/input_linebuf_write_addr[6]} {fbtest/fbctl/input_linebuf_write_addr[7]} {fbtest/fbctl/input_linebuf_write_addr[8]} {fbtest/fbctl/input_linebuf_write_addr[9]} {fbtest/fbctl/input_linebuf_write_addr[10]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 20 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {csi_rx/vout/output_data[0]} {csi_rx/vout/output_data[1]} {csi_rx/vout/output_data[2]} {csi_rx/vout/output_data[3]} {csi_rx/vout/output_data[4]} {csi_rx/vout/output_data[5]} {csi_rx/vout/output_data[6]} {csi_rx/vout/output_data[7]} {csi_rx/vout/output_data[8]} {csi_rx/vout/output_data[9]} {csi_rx/vout/output_data[10]} {csi_rx/vout/output_data[11]} {csi_rx/vout/output_data[12]} {csi_rx/vout/output_data[13]} {csi_rx/vout/output_data[14]} {csi_rx/vout/output_data[15]} {csi_rx/vout/output_data[16]} {csi_rx/vout/output_data[17]} {csi_rx/vout/output_data[18]} {csi_rx/vout/output_data[19]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list cam_ctl/i2c_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list cam_ctl/i2c_en]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list cam_ctl/i2c_start]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list fbtest/fbctl/input_linebuf_wren]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list csi_rx/vout/output_den]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list csi_rx/vout/output_line_start]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list csi_rx/vout/output_odd_line]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list cam_ctl/i2c_if/sck_int]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list cam_ctl/i2c_if/sda_int]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list csi_rx/word_clock]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets input_pixel_clock]
