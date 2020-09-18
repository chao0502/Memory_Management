// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Sep 18 08:24:14 2020
// Host        : Neptunium running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ aquila_soc_aquila_0_1_stub.v
// Design      : aquila_soc_aquila_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "aquila,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(m_dmem_port_awid, m_dmem_port_awaddr, 
  m_dmem_port_awlen, m_dmem_port_awsize, m_dmem_port_awburst, m_dmem_port_awlock, 
  m_dmem_port_awcache, m_dmem_port_awprot, m_dmem_port_awqos, m_dmem_port_awuser, 
  m_dmem_port_awvalid, m_dmem_port_awready, m_dmem_port_wdata, m_dmem_port_wstrb, 
  m_dmem_port_wlast, m_dmem_port_wvalid, m_dmem_port_wready, m_dmem_port_bid, 
  m_dmem_port_bresp, m_dmem_port_buser, m_dmem_port_bvalid, m_dmem_port_bready, 
  m_dmem_port_arid, m_dmem_port_araddr, m_dmem_port_arlen, m_dmem_port_arsize, 
  m_dmem_port_arburst, m_dmem_port_arlock, m_dmem_port_arcache, m_dmem_port_arprot, 
  m_dmem_port_arqos, m_dmem_port_aruser, m_dmem_port_arvalid, m_dmem_port_arready, 
  m_dmem_port_rid, m_dmem_port_rdata, m_dmem_port_rresp, m_dmem_port_rlast, 
  m_dmem_port_rvalid, m_dmem_port_rready, device_aclk, device_aresetn, 
  m_device_port_awaddr, m_device_port_awprot, m_device_port_awvalid, 
  m_device_port_awready, m_device_port_wdata, m_device_port_wstrb, m_device_port_wvalid, 
  m_device_port_wready, m_device_port_bresp, m_device_port_bvalid, m_device_port_bready, 
  m_device_port_araddr, m_device_port_arprot, m_device_port_arvalid, 
  m_device_port_arready, m_device_port_rdata, m_device_port_rresp, m_device_port_rvalid, 
  m_device_port_rready, m_imem_port_awid, m_imem_port_awaddr, m_imem_port_awlen, 
  m_imem_port_awsize, m_imem_port_awburst, m_imem_port_awlock, m_imem_port_awcache, 
  m_imem_port_awprot, m_imem_port_awqos, m_imem_port_awuser, m_imem_port_awvalid, 
  m_imem_port_awready, m_imem_port_wdata, m_imem_port_wstrb, m_imem_port_wlast, 
  m_imem_port_wvalid, m_imem_port_wready, m_imem_port_bid, m_imem_port_bresp, 
  m_imem_port_buser, m_imem_port_bvalid, m_imem_port_bready, m_imem_port_arid, 
  m_imem_port_araddr, m_imem_port_arlen, m_imem_port_arsize, m_imem_port_arburst, 
  m_imem_port_arlock, m_imem_port_arcache, m_imem_port_arprot, m_imem_port_arqos, 
  m_imem_port_aruser, m_imem_port_arvalid, m_imem_port_arready, m_imem_port_rid, 
  m_imem_port_rdata, m_imem_port_rresp, m_imem_port_rlast, m_imem_port_rvalid, 
  m_imem_port_rready, mem_aclk, mem_aresetn)
/* synthesis syn_black_box black_box_pad_pin="m_dmem_port_awid[0:0],m_dmem_port_awaddr[31:0],m_dmem_port_awlen[7:0],m_dmem_port_awsize[2:0],m_dmem_port_awburst[1:0],m_dmem_port_awlock,m_dmem_port_awcache[3:0],m_dmem_port_awprot[2:0],m_dmem_port_awqos[3:0],m_dmem_port_awuser[0:0],m_dmem_port_awvalid,m_dmem_port_awready,m_dmem_port_wdata[31:0],m_dmem_port_wstrb[3:0],m_dmem_port_wlast,m_dmem_port_wvalid,m_dmem_port_wready,m_dmem_port_bid[0:0],m_dmem_port_bresp[1:0],m_dmem_port_buser[0:0],m_dmem_port_bvalid,m_dmem_port_bready,m_dmem_port_arid[0:0],m_dmem_port_araddr[31:0],m_dmem_port_arlen[7:0],m_dmem_port_arsize[2:0],m_dmem_port_arburst[1:0],m_dmem_port_arlock,m_dmem_port_arcache[3:0],m_dmem_port_arprot[2:0],m_dmem_port_arqos[3:0],m_dmem_port_aruser[0:0],m_dmem_port_arvalid,m_dmem_port_arready,m_dmem_port_rid[0:0],m_dmem_port_rdata[31:0],m_dmem_port_rresp[1:0],m_dmem_port_rlast,m_dmem_port_rvalid,m_dmem_port_rready,device_aclk,device_aresetn,m_device_port_awaddr[31:0],m_device_port_awprot[2:0],m_device_port_awvalid,m_device_port_awready,m_device_port_wdata[31:0],m_device_port_wstrb[3:0],m_device_port_wvalid,m_device_port_wready,m_device_port_bresp[1:0],m_device_port_bvalid,m_device_port_bready,m_device_port_araddr[31:0],m_device_port_arprot[2:0],m_device_port_arvalid,m_device_port_arready,m_device_port_rdata[31:0],m_device_port_rresp[1:0],m_device_port_rvalid,m_device_port_rready,m_imem_port_awid[0:0],m_imem_port_awaddr[31:0],m_imem_port_awlen[7:0],m_imem_port_awsize[2:0],m_imem_port_awburst[1:0],m_imem_port_awlock,m_imem_port_awcache[3:0],m_imem_port_awprot[2:0],m_imem_port_awqos[3:0],m_imem_port_awuser[0:0],m_imem_port_awvalid,m_imem_port_awready,m_imem_port_wdata[31:0],m_imem_port_wstrb[3:0],m_imem_port_wlast,m_imem_port_wvalid,m_imem_port_wready,m_imem_port_bid[0:0],m_imem_port_bresp[1:0],m_imem_port_buser[0:0],m_imem_port_bvalid,m_imem_port_bready,m_imem_port_arid[0:0],m_imem_port_araddr[31:0],m_imem_port_arlen[7:0],m_imem_port_arsize[2:0],m_imem_port_arburst[1:0],m_imem_port_arlock,m_imem_port_arcache[3:0],m_imem_port_arprot[2:0],m_imem_port_arqos[3:0],m_imem_port_aruser[0:0],m_imem_port_arvalid,m_imem_port_arready,m_imem_port_rid[0:0],m_imem_port_rdata[31:0],m_imem_port_rresp[1:0],m_imem_port_rlast,m_imem_port_rvalid,m_imem_port_rready,mem_aclk,mem_aresetn" */;
  output [0:0]m_dmem_port_awid;
  output [31:0]m_dmem_port_awaddr;
  output [7:0]m_dmem_port_awlen;
  output [2:0]m_dmem_port_awsize;
  output [1:0]m_dmem_port_awburst;
  output m_dmem_port_awlock;
  output [3:0]m_dmem_port_awcache;
  output [2:0]m_dmem_port_awprot;
  output [3:0]m_dmem_port_awqos;
  output [0:0]m_dmem_port_awuser;
  output m_dmem_port_awvalid;
  input m_dmem_port_awready;
  output [31:0]m_dmem_port_wdata;
  output [3:0]m_dmem_port_wstrb;
  output m_dmem_port_wlast;
  output m_dmem_port_wvalid;
  input m_dmem_port_wready;
  input [0:0]m_dmem_port_bid;
  input [1:0]m_dmem_port_bresp;
  input [0:0]m_dmem_port_buser;
  input m_dmem_port_bvalid;
  output m_dmem_port_bready;
  output [0:0]m_dmem_port_arid;
  output [31:0]m_dmem_port_araddr;
  output [7:0]m_dmem_port_arlen;
  output [2:0]m_dmem_port_arsize;
  output [1:0]m_dmem_port_arburst;
  output m_dmem_port_arlock;
  output [3:0]m_dmem_port_arcache;
  output [2:0]m_dmem_port_arprot;
  output [3:0]m_dmem_port_arqos;
  output [0:0]m_dmem_port_aruser;
  output m_dmem_port_arvalid;
  input m_dmem_port_arready;
  input [0:0]m_dmem_port_rid;
  input [31:0]m_dmem_port_rdata;
  input [1:0]m_dmem_port_rresp;
  input m_dmem_port_rlast;
  input m_dmem_port_rvalid;
  output m_dmem_port_rready;
  input device_aclk;
  input device_aresetn;
  output [31:0]m_device_port_awaddr;
  output [2:0]m_device_port_awprot;
  output m_device_port_awvalid;
  input m_device_port_awready;
  output [31:0]m_device_port_wdata;
  output [3:0]m_device_port_wstrb;
  output m_device_port_wvalid;
  input m_device_port_wready;
  input [1:0]m_device_port_bresp;
  input m_device_port_bvalid;
  output m_device_port_bready;
  output [31:0]m_device_port_araddr;
  output [2:0]m_device_port_arprot;
  output m_device_port_arvalid;
  input m_device_port_arready;
  input [31:0]m_device_port_rdata;
  input [1:0]m_device_port_rresp;
  input m_device_port_rvalid;
  output m_device_port_rready;
  output [0:0]m_imem_port_awid;
  output [31:0]m_imem_port_awaddr;
  output [7:0]m_imem_port_awlen;
  output [2:0]m_imem_port_awsize;
  output [1:0]m_imem_port_awburst;
  output m_imem_port_awlock;
  output [3:0]m_imem_port_awcache;
  output [2:0]m_imem_port_awprot;
  output [3:0]m_imem_port_awqos;
  output [0:0]m_imem_port_awuser;
  output m_imem_port_awvalid;
  input m_imem_port_awready;
  output [31:0]m_imem_port_wdata;
  output [3:0]m_imem_port_wstrb;
  output m_imem_port_wlast;
  output m_imem_port_wvalid;
  input m_imem_port_wready;
  input [0:0]m_imem_port_bid;
  input [1:0]m_imem_port_bresp;
  input [0:0]m_imem_port_buser;
  input m_imem_port_bvalid;
  output m_imem_port_bready;
  output [0:0]m_imem_port_arid;
  output [31:0]m_imem_port_araddr;
  output [7:0]m_imem_port_arlen;
  output [2:0]m_imem_port_arsize;
  output [1:0]m_imem_port_arburst;
  output m_imem_port_arlock;
  output [3:0]m_imem_port_arcache;
  output [2:0]m_imem_port_arprot;
  output [3:0]m_imem_port_arqos;
  output [0:0]m_imem_port_aruser;
  output m_imem_port_arvalid;
  input m_imem_port_arready;
  input [0:0]m_imem_port_rid;
  input [31:0]m_imem_port_rdata;
  input [1:0]m_imem_port_rresp;
  input m_imem_port_rlast;
  input m_imem_port_rvalid;
  output m_imem_port_rready;
  input mem_aclk;
  input mem_aresetn;
endmodule
