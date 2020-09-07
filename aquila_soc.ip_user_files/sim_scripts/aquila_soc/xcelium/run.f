-makelib xcelium_lib/xilinx_vip -sv \
  "/tools/Xilinx3/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx3/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx3/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx3/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx3/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx3/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx3/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx3/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx3/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "/tools/Xilinx3/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/tools/Xilinx3/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "/tools/Xilinx3/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx3/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/aquila_soc_mig_7series_0_0_mig_sim.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_mig_7series_0_0/aquila_soc_mig_7series_0_0/user_design/rtl/aquila_soc_mig_7series_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uartlite_v2_0_22 \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/aquila_soc/ip/aquila_soc_axi_uartlite_0_0/sim/aquila_soc_axi_uartlite_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/sim/bd_bb3d.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_5 \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_bb3d_one_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_bb3d_psr0_0.vhd" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_bb3d_psr_aclk_0.vhd" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_bb3d_psr_aclk1_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_bb3d_arsw_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_bb3d_rsw_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_bb3d_awsw_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_bb3d_wsw_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_bb3d_bsw_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_bb3d_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_bb3d_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_bb3d_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_bb3d_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_bb3d_sarn_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_bb3d_srn_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_bb3d_sawn_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_bb3d_swn_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_bb3d_sbn_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_bb3d_s01mmu_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_bb3d_s01tr_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_bb3d_s01sic_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_bb3d_s01a2s_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_bb3d_sarn_1.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_bb3d_srn_1.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_bb3d_sawn_1.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_bb3d_swn_1.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_bb3d_sbn_1.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_bb3d_m00s2a_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_bb3d_m00arn_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_bb3d_m00rn_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_bb3d_m00awn_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_bb3d_m00wn_0.sv" \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_bb3d_m00bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../aquila_soc.srcs/sources_1/bd/aquila_soc/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_bb3d_m00e_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/aquila_soc/ip/aquila_soc_smartconnect_0_0/sim/aquila_soc_smartconnect_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/aquila_soc/ip/aquila_soc_rst_mig_7series_0_200M_0/sim/aquila_soc_rst_mig_7series_0_200M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/aquila_soc/sim/aquila_soc.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/alu.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/aquila_M_DEVICE_PORT.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/aquila_M_DMEM_PORT.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/aquila_M_IMEM_PORT.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/aquila_top.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/atomic_unit.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/bcu.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/bpu.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/clint.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/core_top.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/csr_file.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/dcache.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/decode.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/distri_ram.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/execute.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/fetch.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/forwarding_unit.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/free_circular_buffer.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/icache.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/memory.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/memory_management.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/muldiv.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/newlib_based_allocator.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/pipeline_control.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/program_counter.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/reg_file.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/sram.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/sram_dp.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/sram_dual_port.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/core_rtl/writeback.v" \
  "../../../bd/aquila_soc/ipshared/99fb/hdl/aquila.v" \
  "../../../bd/aquila_soc/ip/aquila_soc_aquila_0_1/sim/aquila_soc_aquila_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

