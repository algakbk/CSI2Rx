vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -sv \
"/media/baktiiar/downloads/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/media/baktiiar/downloads/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_skip_calib_tap.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_or.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_top.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_w_upsizer.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wr_cmd_fsm.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_upsizer.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_r_upsizer.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_axic_register_slice.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_aw_channel.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_translator.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg_bank.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_read.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_a_upsizer.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_r_channel.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_arbiter.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_simple_fifo.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_write.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_and.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_and.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_register_slice.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_w_channel.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_or.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_command_fifo.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_fifo.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_b_channel.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_ar_channel.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_fsm.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wrap_cmd.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_addr_decode.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel_static.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/axi/mig_7series_v4_0_axi_mc_incr_cmd.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_axi.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ddr3_if_mig_sim.v" \
"../../../../../IPcore/ddr3_if/ddr3_if/user_design/rtl/ddr3_if.v" \

vlog -work xil_defaultlib \
"glbl.v"

