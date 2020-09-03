// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:aquila:1.0
// IP Revision: 207

(* X_CORE_INFO = "aquila,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "aquila_soc_aquila_0_1,aquila,{}" *)
(* CORE_GENERATION_INFO = "aquila_soc_aquila_0_1,aquila,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=aquila,x_ipVersion=1.0,x_ipCoreRevision=207,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_M_DMEM_PORT_ID_WIDTH=1,C_M_DMEM_PORT_ADDR_WIDTH=32,C_M_DMEM_PORT_DATA_WIDTH=32,C_M_DMEM_PORT_AWUSER_WIDTH=1,C_M_DMEM_PORT_ARUSER_WIDTH=1,C_M_DMEM_PORT_WUSER_WIDTH=0,C_M_DMEM_PORT_RUSER_WIDTH=0,C_M_DMEM_PORT_BUSER_WIDTH=1,C_M_DEVICE_PORT_ADDR_WIDTH=32,C_M_DEVICE_PORT_DATA_WIDTH=32,C_M_IMEM_PORT_ID_WIDTH=1,C\
_M_IMEM_PORT_ADDR_WIDTH=32,C_M_IMEM_PORT_DATA_WIDTH=32,C_M_IMEM_PORT_AWUSER_WIDTH=1,C_M_IMEM_PORT_ARUSER_WIDTH=1,C_M_IMEM_PORT_WUSER_WIDTH=0,C_M_IMEM_PORT_RUSER_WIDTH=0,C_M_IMEM_PORT_BUSER_WIDTH=1,C_M_DMM_PORT_SLAVE_BASE_ADDR=0x60000000,C_M_DMM_PORT_BURST_LEN=16,C_M_DMM_PORT_ID_WIDTH=1,C_M_DMM_PORT_ADDR_WIDTH=32,C_M_DMM_PORT_DATA_WIDTH=32,C_M_DMM_PORT_AWUSER_WIDTH=0,C_M_DMM_PORT_ARUSER_WIDTH=0,C_M_DMM_PORT_WUSER_WIDTH=0,C_M_DMM_PORT_RUSER_WIDTH=0,C_M_DMM_PORT_BUSER_WIDTH=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module aquila_soc_aquila_0_1 (
  m_dmem_port_awid,
  m_dmem_port_awaddr,
  m_dmem_port_awlen,
  m_dmem_port_awsize,
  m_dmem_port_awburst,
  m_dmem_port_awlock,
  m_dmem_port_awcache,
  m_dmem_port_awprot,
  m_dmem_port_awqos,
  m_dmem_port_awuser,
  m_dmem_port_awvalid,
  m_dmem_port_awready,
  m_dmem_port_wdata,
  m_dmem_port_wstrb,
  m_dmem_port_wlast,
  m_dmem_port_wvalid,
  m_dmem_port_wready,
  m_dmem_port_bid,
  m_dmem_port_bresp,
  m_dmem_port_buser,
  m_dmem_port_bvalid,
  m_dmem_port_bready,
  m_dmem_port_arid,
  m_dmem_port_araddr,
  m_dmem_port_arlen,
  m_dmem_port_arsize,
  m_dmem_port_arburst,
  m_dmem_port_arlock,
  m_dmem_port_arcache,
  m_dmem_port_arprot,
  m_dmem_port_arqos,
  m_dmem_port_aruser,
  m_dmem_port_arvalid,
  m_dmem_port_arready,
  m_dmem_port_rid,
  m_dmem_port_rdata,
  m_dmem_port_rresp,
  m_dmem_port_rlast,
  m_dmem_port_rvalid,
  m_dmem_port_rready,
  m_dmm_port_awid,
  m_dmm_port_awaddr,
  m_dmm_port_awlen,
  m_dmm_port_awsize,
  m_dmm_port_awburst,
  m_dmm_port_awlock,
  m_dmm_port_awcache,
  m_dmm_port_awprot,
  m_dmm_port_awqos,
  m_dmm_port_awuser,
  m_dmm_port_awvalid,
  m_dmm_port_awready,
  m_dmm_port_wdata,
  m_dmm_port_wstrb,
  m_dmm_port_wlast,
  m_dmm_port_wuser,
  m_dmm_port_wvalid,
  m_dmm_port_wready,
  m_dmm_port_bid,
  m_dmm_port_bresp,
  m_dmm_port_buser,
  m_dmm_port_bvalid,
  m_dmm_port_bready,
  m_dmm_port_arid,
  m_dmm_port_araddr,
  m_dmm_port_arlen,
  m_dmm_port_arsize,
  m_dmm_port_arburst,
  m_dmm_port_arlock,
  m_dmm_port_arcache,
  m_dmm_port_arprot,
  m_dmm_port_arqos,
  m_dmm_port_aruser,
  m_dmm_port_arvalid,
  m_dmm_port_arready,
  m_dmm_port_rid,
  m_dmm_port_rdata,
  m_dmm_port_rresp,
  m_dmm_port_rlast,
  m_dmm_port_ruser,
  m_dmm_port_rvalid,
  m_dmm_port_rready,
  device_aclk,
  device_aresetn,
  m_device_port_awaddr,
  m_device_port_awprot,
  m_device_port_awvalid,
  m_device_port_awready,
  m_device_port_wdata,
  m_device_port_wstrb,
  m_device_port_wvalid,
  m_device_port_wready,
  m_device_port_bresp,
  m_device_port_bvalid,
  m_device_port_bready,
  m_device_port_araddr,
  m_device_port_arprot,
  m_device_port_arvalid,
  m_device_port_arready,
  m_device_port_rdata,
  m_device_port_rresp,
  m_device_port_rvalid,
  m_device_port_rready,
  m_imem_port_awid,
  m_imem_port_awaddr,
  m_imem_port_awlen,
  m_imem_port_awsize,
  m_imem_port_awburst,
  m_imem_port_awlock,
  m_imem_port_awcache,
  m_imem_port_awprot,
  m_imem_port_awqos,
  m_imem_port_awuser,
  m_imem_port_awvalid,
  m_imem_port_awready,
  m_imem_port_wdata,
  m_imem_port_wstrb,
  m_imem_port_wlast,
  m_imem_port_wvalid,
  m_imem_port_wready,
  m_imem_port_bid,
  m_imem_port_bresp,
  m_imem_port_buser,
  m_imem_port_bvalid,
  m_imem_port_bready,
  m_imem_port_arid,
  m_imem_port_araddr,
  m_imem_port_arlen,
  m_imem_port_arsize,
  m_imem_port_arburst,
  m_imem_port_arlock,
  m_imem_port_arcache,
  m_imem_port_arprot,
  m_imem_port_arqos,
  m_imem_port_aruser,
  m_imem_port_arvalid,
  m_imem_port_arready,
  m_imem_port_rid,
  m_imem_port_rdata,
  m_imem_port_rresp,
  m_imem_port_rlast,
  m_imem_port_rvalid,
  m_imem_port_rready,
  mem_aclk,
  mem_aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWID" *)
output wire [0 : 0] m_dmem_port_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWADDR" *)
output wire [31 : 0] m_dmem_port_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWLEN" *)
output wire [7 : 0] m_dmem_port_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWSIZE" *)
output wire [2 : 0] m_dmem_port_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWBURST" *)
output wire [1 : 0] m_dmem_port_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWLOCK" *)
output wire m_dmem_port_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWCACHE" *)
output wire [3 : 0] m_dmem_port_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWPROT" *)
output wire [2 : 0] m_dmem_port_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWQOS" *)
output wire [3 : 0] m_dmem_port_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWUSER" *)
output wire [0 : 0] m_dmem_port_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWVALID" *)
output wire m_dmem_port_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT AWREADY" *)
input wire m_dmem_port_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT WDATA" *)
output wire [31 : 0] m_dmem_port_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT WSTRB" *)
output wire [3 : 0] m_dmem_port_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT WLAST" *)
output wire m_dmem_port_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT WVALID" *)
output wire m_dmem_port_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT WREADY" *)
input wire m_dmem_port_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT BID" *)
input wire [0 : 0] m_dmem_port_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT BRESP" *)
input wire [1 : 0] m_dmem_port_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT BUSER" *)
input wire [0 : 0] m_dmem_port_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT BVALID" *)
input wire m_dmem_port_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT BREADY" *)
output wire m_dmem_port_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARID" *)
output wire [0 : 0] m_dmem_port_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARADDR" *)
output wire [31 : 0] m_dmem_port_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARLEN" *)
output wire [7 : 0] m_dmem_port_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARSIZE" *)
output wire [2 : 0] m_dmem_port_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARBURST" *)
output wire [1 : 0] m_dmem_port_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARLOCK" *)
output wire m_dmem_port_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARCACHE" *)
output wire [3 : 0] m_dmem_port_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARPROT" *)
output wire [2 : 0] m_dmem_port_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARQOS" *)
output wire [3 : 0] m_dmem_port_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARUSER" *)
output wire [0 : 0] m_dmem_port_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARVALID" *)
output wire m_dmem_port_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT ARREADY" *)
input wire m_dmem_port_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT RID" *)
input wire [0 : 0] m_dmem_port_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT RDATA" *)
input wire [31 : 0] m_dmem_port_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT RRESP" *)
input wire [1 : 0] m_dmem_port_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT RLAST" *)
input wire m_dmem_port_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT RVALID" *)
input wire m_dmem_port_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_DMEM_PORT, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN aquila_soc_mig_7series_0_0_ui_clk, NUM_\
READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DMEM_PORT RREADY" *)
output wire m_dmem_port_rready;
output wire [0 : 0] m_dmm_port_awid;
output wire [31 : 0] m_dmm_port_awaddr;
output wire [7 : 0] m_dmm_port_awlen;
output wire [2 : 0] m_dmm_port_awsize;
output wire [1 : 0] m_dmm_port_awburst;
output wire m_dmm_port_awlock;
output wire [3 : 0] m_dmm_port_awcache;
output wire [2 : 0] m_dmm_port_awprot;
output wire [3 : 0] m_dmm_port_awqos;
output wire [0 : 0] m_dmm_port_awuser;
output wire m_dmm_port_awvalid;
input wire m_dmm_port_awready;
output wire [31 : 0] m_dmm_port_wdata;
output wire [3 : 0] m_dmm_port_wstrb;
output wire m_dmm_port_wlast;
output wire [0 : 0] m_dmm_port_wuser;
output wire m_dmm_port_wvalid;
input wire m_dmm_port_wready;
input wire [0 : 0] m_dmm_port_bid;
input wire [1 : 0] m_dmm_port_bresp;
input wire [0 : 0] m_dmm_port_buser;
input wire m_dmm_port_bvalid;
output wire m_dmm_port_bready;
output wire [0 : 0] m_dmm_port_arid;
output wire [31 : 0] m_dmm_port_araddr;
output wire [7 : 0] m_dmm_port_arlen;
output wire [2 : 0] m_dmm_port_arsize;
output wire [1 : 0] m_dmm_port_arburst;
output wire m_dmm_port_arlock;
output wire [3 : 0] m_dmm_port_arcache;
output wire [2 : 0] m_dmm_port_arprot;
output wire [3 : 0] m_dmm_port_arqos;
output wire [0 : 0] m_dmm_port_aruser;
output wire m_dmm_port_arvalid;
input wire m_dmm_port_arready;
input wire [0 : 0] m_dmm_port_rid;
input wire [31 : 0] m_dmm_port_rdata;
input wire [1 : 0] m_dmm_port_rresp;
input wire m_dmm_port_rlast;
input wire [0 : 0] m_dmm_port_ruser;
input wire m_dmm_port_rvalid;
output wire m_dmm_port_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_DEVICE_PORT_CLK, ASSOCIATED_RESET device_aresetn, ASSOCIATED_BUSIF M_DEVICE_PORT, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN aquila_soc_mig_7series_0_0_ui_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_DEVICE_PORT_CLK CLK" *)
input wire device_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_DEVICE_PORT_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_DEVICE_PORT_RST RST" *)
input wire device_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT AWADDR" *)
output wire [31 : 0] m_device_port_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT AWPROT" *)
output wire [2 : 0] m_device_port_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT AWVALID" *)
output wire m_device_port_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT AWREADY" *)
input wire m_device_port_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT WDATA" *)
output wire [31 : 0] m_device_port_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT WSTRB" *)
output wire [3 : 0] m_device_port_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT WVALID" *)
output wire m_device_port_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT WREADY" *)
input wire m_device_port_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT BRESP" *)
input wire [1 : 0] m_device_port_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT BVALID" *)
input wire m_device_port_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT BREADY" *)
output wire m_device_port_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT ARADDR" *)
output wire [31 : 0] m_device_port_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT ARPROT" *)
output wire [2 : 0] m_device_port_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT ARVALID" *)
output wire m_device_port_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT ARREADY" *)
input wire m_device_port_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT RDATA" *)
input wire [31 : 0] m_device_port_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT RRESP" *)
input wire [1 : 0] m_device_port_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT RVALID" *)
input wire m_device_port_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_DEVICE_PORT, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN aquila_soc_mig_7series_0_0_ui_clk, \
NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_DEVICE_PORT RREADY" *)
output wire m_device_port_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWID" *)
output wire [0 : 0] m_imem_port_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWADDR" *)
output wire [31 : 0] m_imem_port_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWLEN" *)
output wire [7 : 0] m_imem_port_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWSIZE" *)
output wire [2 : 0] m_imem_port_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWBURST" *)
output wire [1 : 0] m_imem_port_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWLOCK" *)
output wire m_imem_port_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWCACHE" *)
output wire [3 : 0] m_imem_port_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWPROT" *)
output wire [2 : 0] m_imem_port_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWQOS" *)
output wire [3 : 0] m_imem_port_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWUSER" *)
output wire [0 : 0] m_imem_port_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWVALID" *)
output wire m_imem_port_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT AWREADY" *)
input wire m_imem_port_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT WDATA" *)
output wire [31 : 0] m_imem_port_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT WSTRB" *)
output wire [3 : 0] m_imem_port_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT WLAST" *)
output wire m_imem_port_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT WVALID" *)
output wire m_imem_port_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT WREADY" *)
input wire m_imem_port_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT BID" *)
input wire [0 : 0] m_imem_port_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT BRESP" *)
input wire [1 : 0] m_imem_port_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT BUSER" *)
input wire [0 : 0] m_imem_port_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT BVALID" *)
input wire m_imem_port_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT BREADY" *)
output wire m_imem_port_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARID" *)
output wire [0 : 0] m_imem_port_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARADDR" *)
output wire [31 : 0] m_imem_port_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARLEN" *)
output wire [7 : 0] m_imem_port_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARSIZE" *)
output wire [2 : 0] m_imem_port_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARBURST" *)
output wire [1 : 0] m_imem_port_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARLOCK" *)
output wire m_imem_port_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARCACHE" *)
output wire [3 : 0] m_imem_port_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARPROT" *)
output wire [2 : 0] m_imem_port_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARQOS" *)
output wire [3 : 0] m_imem_port_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARUSER" *)
output wire [0 : 0] m_imem_port_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARVALID" *)
output wire m_imem_port_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT ARREADY" *)
input wire m_imem_port_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT RID" *)
input wire [0 : 0] m_imem_port_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT RDATA" *)
input wire [31 : 0] m_imem_port_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT RRESP" *)
input wire [1 : 0] m_imem_port_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT RLAST" *)
input wire m_imem_port_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT RVALID" *)
input wire m_imem_port_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_IMEM_PORT, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN aquila_soc_mig_7series_0_0_ui_clk, NUM_\
READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_IMEM_PORT RREADY" *)
output wire m_imem_port_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_DMEM_PORT_CLK, ASSOCIATED_BUSIF M_DMEM_PORT:M_IMEM_PORT, ASSOCIATED_RESET mem_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, XIL_INTERFACENAME M_IMEM_PORT_CLK, ASSOCIATED_BUSIF M_IMEM_PORT:M_DMEM_PORT, ASSOCIATED_RESET mem_aresetn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN aquila_soc_mig_7series_0_0_ui_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_DMEM_PORT_CLK CLK, xilinx.com:signal:clock:1.0 M_IMEM_PORT_CLK CLK" *)
input wire mem_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_DMEM_PORT_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, XIL_INTERFACENAME M_IMEM_PORT_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_DMEM_PORT_RST RST, xilinx.com:signal:reset:1.0 M_IMEM_PORT_RST RST" *)
input wire mem_aresetn;

  aquila #(
    .C_M_DMEM_PORT_ID_WIDTH(1),  // Thread ID Width
    .C_M_DMEM_PORT_ADDR_WIDTH(32),  // Width of Address Bus
    .C_M_DMEM_PORT_DATA_WIDTH(32),  // Width of Data Bus
    .C_M_DMEM_PORT_AWUSER_WIDTH(1),  // Width of User Write Address Bus
    .C_M_DMEM_PORT_ARUSER_WIDTH(1),  // Width of User Read Address Bus
    .C_M_DMEM_PORT_WUSER_WIDTH(0),  // Width of User Write Data Bus
    .C_M_DMEM_PORT_RUSER_WIDTH(0),  // Width of User Read Data Bus
    .C_M_DMEM_PORT_BUSER_WIDTH(1),  // Width of User Response Bus
    .C_M_DEVICE_PORT_ADDR_WIDTH(32),  // Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
    .C_M_DEVICE_PORT_DATA_WIDTH(32),  // Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
    .C_M_IMEM_PORT_ID_WIDTH(1),
    .C_M_IMEM_PORT_ADDR_WIDTH(32),
    .C_M_IMEM_PORT_DATA_WIDTH(32),
    .C_M_IMEM_PORT_AWUSER_WIDTH(1),
    .C_M_IMEM_PORT_ARUSER_WIDTH(1),
    .C_M_IMEM_PORT_WUSER_WIDTH(0),
    .C_M_IMEM_PORT_RUSER_WIDTH(0),
    .C_M_IMEM_PORT_BUSER_WIDTH(1),
    .C_M_DMM_PORT_SLAVE_BASE_ADDR('H60000000),
    .C_M_DMM_PORT_BURST_LEN(16),
    .C_M_DMM_PORT_ID_WIDTH(1),
    .C_M_DMM_PORT_ADDR_WIDTH(32),
    .C_M_DMM_PORT_DATA_WIDTH(32),
    .C_M_DMM_PORT_AWUSER_WIDTH(0),
    .C_M_DMM_PORT_ARUSER_WIDTH(0),
    .C_M_DMM_PORT_WUSER_WIDTH(0),
    .C_M_DMM_PORT_RUSER_WIDTH(0),
    .C_M_DMM_PORT_BUSER_WIDTH(0)
  ) inst (
    .m_dmem_port_awid(m_dmem_port_awid),
    .m_dmem_port_awaddr(m_dmem_port_awaddr),
    .m_dmem_port_awlen(m_dmem_port_awlen),
    .m_dmem_port_awsize(m_dmem_port_awsize),
    .m_dmem_port_awburst(m_dmem_port_awburst),
    .m_dmem_port_awlock(m_dmem_port_awlock),
    .m_dmem_port_awcache(m_dmem_port_awcache),
    .m_dmem_port_awprot(m_dmem_port_awprot),
    .m_dmem_port_awqos(m_dmem_port_awqos),
    .m_dmem_port_awuser(m_dmem_port_awuser),
    .m_dmem_port_awvalid(m_dmem_port_awvalid),
    .m_dmem_port_awready(m_dmem_port_awready),
    .m_dmem_port_wdata(m_dmem_port_wdata),
    .m_dmem_port_wstrb(m_dmem_port_wstrb),
    .m_dmem_port_wlast(m_dmem_port_wlast),
    .m_dmem_port_wuser(),
    .m_dmem_port_wvalid(m_dmem_port_wvalid),
    .m_dmem_port_wready(m_dmem_port_wready),
    .m_dmem_port_bid(m_dmem_port_bid),
    .m_dmem_port_bresp(m_dmem_port_bresp),
    .m_dmem_port_buser(m_dmem_port_buser),
    .m_dmem_port_bvalid(m_dmem_port_bvalid),
    .m_dmem_port_bready(m_dmem_port_bready),
    .m_dmem_port_arid(m_dmem_port_arid),
    .m_dmem_port_araddr(m_dmem_port_araddr),
    .m_dmem_port_arlen(m_dmem_port_arlen),
    .m_dmem_port_arsize(m_dmem_port_arsize),
    .m_dmem_port_arburst(m_dmem_port_arburst),
    .m_dmem_port_arlock(m_dmem_port_arlock),
    .m_dmem_port_arcache(m_dmem_port_arcache),
    .m_dmem_port_arprot(m_dmem_port_arprot),
    .m_dmem_port_arqos(m_dmem_port_arqos),
    .m_dmem_port_aruser(m_dmem_port_aruser),
    .m_dmem_port_arvalid(m_dmem_port_arvalid),
    .m_dmem_port_arready(m_dmem_port_arready),
    .m_dmem_port_rid(m_dmem_port_rid),
    .m_dmem_port_rdata(m_dmem_port_rdata),
    .m_dmem_port_rresp(m_dmem_port_rresp),
    .m_dmem_port_rlast(m_dmem_port_rlast),
    .m_dmem_port_ruser(1'B0),
    .m_dmem_port_rvalid(m_dmem_port_rvalid),
    .m_dmem_port_rready(m_dmem_port_rready),
    .m_dmm_port_awid(m_dmm_port_awid),
    .m_dmm_port_awaddr(m_dmm_port_awaddr),
    .m_dmm_port_awlen(m_dmm_port_awlen),
    .m_dmm_port_awsize(m_dmm_port_awsize),
    .m_dmm_port_awburst(m_dmm_port_awburst),
    .m_dmm_port_awlock(m_dmm_port_awlock),
    .m_dmm_port_awcache(m_dmm_port_awcache),
    .m_dmm_port_awprot(m_dmm_port_awprot),
    .m_dmm_port_awqos(m_dmm_port_awqos),
    .m_dmm_port_awuser(m_dmm_port_awuser),
    .m_dmm_port_awvalid(m_dmm_port_awvalid),
    .m_dmm_port_awready(m_dmm_port_awready),
    .m_dmm_port_wdata(m_dmm_port_wdata),
    .m_dmm_port_wstrb(m_dmm_port_wstrb),
    .m_dmm_port_wlast(m_dmm_port_wlast),
    .m_dmm_port_wuser(m_dmm_port_wuser),
    .m_dmm_port_wvalid(m_dmm_port_wvalid),
    .m_dmm_port_wready(m_dmm_port_wready),
    .m_dmm_port_bid(m_dmm_port_bid),
    .m_dmm_port_bresp(m_dmm_port_bresp),
    .m_dmm_port_buser(m_dmm_port_buser),
    .m_dmm_port_bvalid(m_dmm_port_bvalid),
    .m_dmm_port_bready(m_dmm_port_bready),
    .m_dmm_port_arid(m_dmm_port_arid),
    .m_dmm_port_araddr(m_dmm_port_araddr),
    .m_dmm_port_arlen(m_dmm_port_arlen),
    .m_dmm_port_arsize(m_dmm_port_arsize),
    .m_dmm_port_arburst(m_dmm_port_arburst),
    .m_dmm_port_arlock(m_dmm_port_arlock),
    .m_dmm_port_arcache(m_dmm_port_arcache),
    .m_dmm_port_arprot(m_dmm_port_arprot),
    .m_dmm_port_arqos(m_dmm_port_arqos),
    .m_dmm_port_aruser(m_dmm_port_aruser),
    .m_dmm_port_arvalid(m_dmm_port_arvalid),
    .m_dmm_port_arready(m_dmm_port_arready),
    .m_dmm_port_rid(m_dmm_port_rid),
    .m_dmm_port_rdata(m_dmm_port_rdata),
    .m_dmm_port_rresp(m_dmm_port_rresp),
    .m_dmm_port_rlast(m_dmm_port_rlast),
    .m_dmm_port_ruser(m_dmm_port_ruser),
    .m_dmm_port_rvalid(m_dmm_port_rvalid),
    .m_dmm_port_rready(m_dmm_port_rready),
    .device_aclk(device_aclk),
    .device_aresetn(device_aresetn),
    .m_device_port_awaddr(m_device_port_awaddr),
    .m_device_port_awprot(m_device_port_awprot),
    .m_device_port_awvalid(m_device_port_awvalid),
    .m_device_port_awready(m_device_port_awready),
    .m_device_port_wdata(m_device_port_wdata),
    .m_device_port_wstrb(m_device_port_wstrb),
    .m_device_port_wvalid(m_device_port_wvalid),
    .m_device_port_wready(m_device_port_wready),
    .m_device_port_bresp(m_device_port_bresp),
    .m_device_port_bvalid(m_device_port_bvalid),
    .m_device_port_bready(m_device_port_bready),
    .m_device_port_araddr(m_device_port_araddr),
    .m_device_port_arprot(m_device_port_arprot),
    .m_device_port_arvalid(m_device_port_arvalid),
    .m_device_port_arready(m_device_port_arready),
    .m_device_port_rdata(m_device_port_rdata),
    .m_device_port_rresp(m_device_port_rresp),
    .m_device_port_rvalid(m_device_port_rvalid),
    .m_device_port_rready(m_device_port_rready),
    .m_imem_port_awid(m_imem_port_awid),
    .m_imem_port_awaddr(m_imem_port_awaddr),
    .m_imem_port_awlen(m_imem_port_awlen),
    .m_imem_port_awsize(m_imem_port_awsize),
    .m_imem_port_awburst(m_imem_port_awburst),
    .m_imem_port_awlock(m_imem_port_awlock),
    .m_imem_port_awcache(m_imem_port_awcache),
    .m_imem_port_awprot(m_imem_port_awprot),
    .m_imem_port_awqos(m_imem_port_awqos),
    .m_imem_port_awuser(m_imem_port_awuser),
    .m_imem_port_awvalid(m_imem_port_awvalid),
    .m_imem_port_awready(m_imem_port_awready),
    .m_imem_port_wdata(m_imem_port_wdata),
    .m_imem_port_wstrb(m_imem_port_wstrb),
    .m_imem_port_wlast(m_imem_port_wlast),
    .m_imem_port_wuser(),
    .m_imem_port_wvalid(m_imem_port_wvalid),
    .m_imem_port_wready(m_imem_port_wready),
    .m_imem_port_bid(m_imem_port_bid),
    .m_imem_port_bresp(m_imem_port_bresp),
    .m_imem_port_buser(m_imem_port_buser),
    .m_imem_port_bvalid(m_imem_port_bvalid),
    .m_imem_port_bready(m_imem_port_bready),
    .m_imem_port_arid(m_imem_port_arid),
    .m_imem_port_araddr(m_imem_port_araddr),
    .m_imem_port_arlen(m_imem_port_arlen),
    .m_imem_port_arsize(m_imem_port_arsize),
    .m_imem_port_arburst(m_imem_port_arburst),
    .m_imem_port_arlock(m_imem_port_arlock),
    .m_imem_port_arcache(m_imem_port_arcache),
    .m_imem_port_arprot(m_imem_port_arprot),
    .m_imem_port_arqos(m_imem_port_arqos),
    .m_imem_port_aruser(m_imem_port_aruser),
    .m_imem_port_arvalid(m_imem_port_arvalid),
    .m_imem_port_arready(m_imem_port_arready),
    .m_imem_port_rid(m_imem_port_rid),
    .m_imem_port_rdata(m_imem_port_rdata),
    .m_imem_port_rresp(m_imem_port_rresp),
    .m_imem_port_rlast(m_imem_port_rlast),
    .m_imem_port_ruser(1'B0),
    .m_imem_port_rvalid(m_imem_port_rvalid),
    .m_imem_port_rready(m_imem_port_rready),
    .mem_aclk(mem_aclk),
    .mem_aresetn(mem_aresetn)
  );
endmodule
