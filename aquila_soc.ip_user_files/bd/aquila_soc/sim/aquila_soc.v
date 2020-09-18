//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Fri Sep 18 08:21:41 2020
//Host        : Neptunium running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target aquila_soc.bd
//Design      : aquila_soc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "aquila_soc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=aquila_soc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=1,da_clkrst_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "aquila_soc.hwdef" *) 
module aquila_soc
   (ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_cs_n,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    reset,
    rs232_uart_rxd,
    rs232_uart_txd,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr3_sdram, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [13:0]ddr3_sdram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram BA" *) output [2:0]ddr3_sdram_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CAS_N" *) output ddr3_sdram_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CK_N" *) output [0:0]ddr3_sdram_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CK_P" *) output [0:0]ddr3_sdram_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CKE" *) output [0:0]ddr3_sdram_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CS_N" *) output [0:0]ddr3_sdram_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DM" *) output [7:0]ddr3_sdram_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DQ" *) inout [63:0]ddr3_sdram_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DQS_N" *) inout [7:0]ddr3_sdram_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DQS_P" *) inout [7:0]ddr3_sdram_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram ODT" *) output [0:0]ddr3_sdram_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram RAS_N" *) output ddr3_sdram_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram RESET_N" *) output ddr3_sdram_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram WE_N" *) output ddr3_sdram_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 rs232_uart RxD" *) input rs232_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 rs232_uart TxD" *) output rs232_uart_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_diff_clock, CAN_DEBUG false, FREQ_HZ 100000000" *) input sys_diff_clock_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_P" *) input sys_diff_clock_clk_p;

  wire [31:0]aquila_0_M_DCACHE_PORT_ARADDR;
  wire [1:0]aquila_0_M_DCACHE_PORT_ARBURST;
  wire [3:0]aquila_0_M_DCACHE_PORT_ARCACHE;
  wire [0:0]aquila_0_M_DCACHE_PORT_ARID;
  wire [7:0]aquila_0_M_DCACHE_PORT_ARLEN;
  wire aquila_0_M_DCACHE_PORT_ARLOCK;
  wire [2:0]aquila_0_M_DCACHE_PORT_ARPROT;
  wire [3:0]aquila_0_M_DCACHE_PORT_ARQOS;
  wire aquila_0_M_DCACHE_PORT_ARREADY;
  wire [2:0]aquila_0_M_DCACHE_PORT_ARSIZE;
  wire [0:0]aquila_0_M_DCACHE_PORT_ARUSER;
  wire aquila_0_M_DCACHE_PORT_ARVALID;
  wire [31:0]aquila_0_M_DCACHE_PORT_AWADDR;
  wire [1:0]aquila_0_M_DCACHE_PORT_AWBURST;
  wire [3:0]aquila_0_M_DCACHE_PORT_AWCACHE;
  wire [0:0]aquila_0_M_DCACHE_PORT_AWID;
  wire [7:0]aquila_0_M_DCACHE_PORT_AWLEN;
  wire aquila_0_M_DCACHE_PORT_AWLOCK;
  wire [2:0]aquila_0_M_DCACHE_PORT_AWPROT;
  wire [3:0]aquila_0_M_DCACHE_PORT_AWQOS;
  wire aquila_0_M_DCACHE_PORT_AWREADY;
  wire [2:0]aquila_0_M_DCACHE_PORT_AWSIZE;
  wire [0:0]aquila_0_M_DCACHE_PORT_AWUSER;
  wire aquila_0_M_DCACHE_PORT_AWVALID;
  wire [0:0]aquila_0_M_DCACHE_PORT_BID;
  wire aquila_0_M_DCACHE_PORT_BREADY;
  wire [1:0]aquila_0_M_DCACHE_PORT_BRESP;
  wire [0:0]aquila_0_M_DCACHE_PORT_BUSER;
  wire aquila_0_M_DCACHE_PORT_BVALID;
  wire [31:0]aquila_0_M_DCACHE_PORT_RDATA;
  wire [0:0]aquila_0_M_DCACHE_PORT_RID;
  wire aquila_0_M_DCACHE_PORT_RLAST;
  wire aquila_0_M_DCACHE_PORT_RREADY;
  wire [1:0]aquila_0_M_DCACHE_PORT_RRESP;
  wire aquila_0_M_DCACHE_PORT_RVALID;
  wire [31:0]aquila_0_M_DCACHE_PORT_WDATA;
  wire aquila_0_M_DCACHE_PORT_WLAST;
  wire aquila_0_M_DCACHE_PORT_WREADY;
  wire [3:0]aquila_0_M_DCACHE_PORT_WSTRB;
  wire aquila_0_M_DCACHE_PORT_WVALID;
  wire [31:0]aquila_0_M_DEVICE_PORT_ARADDR;
  wire aquila_0_M_DEVICE_PORT_ARREADY;
  wire aquila_0_M_DEVICE_PORT_ARVALID;
  wire [31:0]aquila_0_M_DEVICE_PORT_AWADDR;
  wire aquila_0_M_DEVICE_PORT_AWREADY;
  wire aquila_0_M_DEVICE_PORT_AWVALID;
  wire aquila_0_M_DEVICE_PORT_BREADY;
  wire [1:0]aquila_0_M_DEVICE_PORT_BRESP;
  wire aquila_0_M_DEVICE_PORT_BVALID;
  wire [31:0]aquila_0_M_DEVICE_PORT_RDATA;
  wire aquila_0_M_DEVICE_PORT_RREADY;
  wire [1:0]aquila_0_M_DEVICE_PORT_RRESP;
  wire aquila_0_M_DEVICE_PORT_RVALID;
  wire [31:0]aquila_0_M_DEVICE_PORT_WDATA;
  wire aquila_0_M_DEVICE_PORT_WREADY;
  wire [3:0]aquila_0_M_DEVICE_PORT_WSTRB;
  wire aquila_0_M_DEVICE_PORT_WVALID;
  wire [31:0]aquila_0_M_ICACHE_PORT_ARADDR;
  wire [1:0]aquila_0_M_ICACHE_PORT_ARBURST;
  wire [3:0]aquila_0_M_ICACHE_PORT_ARCACHE;
  wire [0:0]aquila_0_M_ICACHE_PORT_ARID;
  wire [7:0]aquila_0_M_ICACHE_PORT_ARLEN;
  wire aquila_0_M_ICACHE_PORT_ARLOCK;
  wire [2:0]aquila_0_M_ICACHE_PORT_ARPROT;
  wire [3:0]aquila_0_M_ICACHE_PORT_ARQOS;
  wire aquila_0_M_ICACHE_PORT_ARREADY;
  wire [2:0]aquila_0_M_ICACHE_PORT_ARSIZE;
  wire [0:0]aquila_0_M_ICACHE_PORT_ARUSER;
  wire aquila_0_M_ICACHE_PORT_ARVALID;
  wire [31:0]aquila_0_M_ICACHE_PORT_AWADDR;
  wire [1:0]aquila_0_M_ICACHE_PORT_AWBURST;
  wire [3:0]aquila_0_M_ICACHE_PORT_AWCACHE;
  wire [0:0]aquila_0_M_ICACHE_PORT_AWID;
  wire [7:0]aquila_0_M_ICACHE_PORT_AWLEN;
  wire aquila_0_M_ICACHE_PORT_AWLOCK;
  wire [2:0]aquila_0_M_ICACHE_PORT_AWPROT;
  wire [3:0]aquila_0_M_ICACHE_PORT_AWQOS;
  wire aquila_0_M_ICACHE_PORT_AWREADY;
  wire [2:0]aquila_0_M_ICACHE_PORT_AWSIZE;
  wire [0:0]aquila_0_M_ICACHE_PORT_AWUSER;
  wire aquila_0_M_ICACHE_PORT_AWVALID;
  wire [0:0]aquila_0_M_ICACHE_PORT_BID;
  wire aquila_0_M_ICACHE_PORT_BREADY;
  wire [1:0]aquila_0_M_ICACHE_PORT_BRESP;
  wire [0:0]aquila_0_M_ICACHE_PORT_BUSER;
  wire aquila_0_M_ICACHE_PORT_BVALID;
  wire [31:0]aquila_0_M_ICACHE_PORT_RDATA;
  wire [0:0]aquila_0_M_ICACHE_PORT_RID;
  wire aquila_0_M_ICACHE_PORT_RLAST;
  wire aquila_0_M_ICACHE_PORT_RREADY;
  wire [1:0]aquila_0_M_ICACHE_PORT_RRESP;
  wire aquila_0_M_ICACHE_PORT_RVALID;
  wire [31:0]aquila_0_M_ICACHE_PORT_WDATA;
  wire aquila_0_M_ICACHE_PORT_WLAST;
  wire aquila_0_M_ICACHE_PORT_WREADY;
  wire [3:0]aquila_0_M_ICACHE_PORT_WSTRB;
  wire aquila_0_M_ICACHE_PORT_WVALID;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire [13:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [0:0]mig_7series_0_DDR3_CS_N;
  wire [7:0]mig_7series_0_DDR3_DM;
  wire [63:0]mig_7series_0_DDR3_DQ;
  wire [7:0]mig_7series_0_DDR3_DQS_N;
  wire [7:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_addn_clk_0;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire reset_1;
  wire [0:0]rst_mig_7series_0_200M_peripheral_aresetn;
  wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [511:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [511:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [63:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire sys_diff_clock_1_CLK_N;
  wire sys_diff_clock_1_CLK_P;

  assign axi_uartlite_0_UART_RxD = rs232_uart_rxd;
  assign ddr3_sdram_addr[13:0] = mig_7series_0_DDR3_ADDR;
  assign ddr3_sdram_ba[2:0] = mig_7series_0_DDR3_BA;
  assign ddr3_sdram_cas_n = mig_7series_0_DDR3_CAS_N;
  assign ddr3_sdram_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign ddr3_sdram_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign ddr3_sdram_cke[0] = mig_7series_0_DDR3_CKE;
  assign ddr3_sdram_cs_n[0] = mig_7series_0_DDR3_CS_N;
  assign ddr3_sdram_dm[7:0] = mig_7series_0_DDR3_DM;
  assign ddr3_sdram_odt[0] = mig_7series_0_DDR3_ODT;
  assign ddr3_sdram_ras_n = mig_7series_0_DDR3_RAS_N;
  assign ddr3_sdram_reset_n = mig_7series_0_DDR3_RESET_N;
  assign ddr3_sdram_we_n = mig_7series_0_DDR3_WE_N;
  assign reset_1 = reset;
  assign rs232_uart_txd = axi_uartlite_0_UART_TxD;
  assign sys_diff_clock_1_CLK_N = sys_diff_clock_clk_n;
  assign sys_diff_clock_1_CLK_P = sys_diff_clock_clk_p;
  aquila_soc_aquila_0_1 aquila_0
       (.device_aclk(mig_7series_0_ui_addn_clk_0),
        .device_aresetn(rst_mig_7series_0_200M_peripheral_aresetn),
        .m_device_port_araddr(aquila_0_M_DEVICE_PORT_ARADDR),
        .m_device_port_arready(aquila_0_M_DEVICE_PORT_ARREADY),
        .m_device_port_arvalid(aquila_0_M_DEVICE_PORT_ARVALID),
        .m_device_port_awaddr(aquila_0_M_DEVICE_PORT_AWADDR),
        .m_device_port_awready(aquila_0_M_DEVICE_PORT_AWREADY),
        .m_device_port_awvalid(aquila_0_M_DEVICE_PORT_AWVALID),
        .m_device_port_bready(aquila_0_M_DEVICE_PORT_BREADY),
        .m_device_port_bresp(aquila_0_M_DEVICE_PORT_BRESP),
        .m_device_port_bvalid(aquila_0_M_DEVICE_PORT_BVALID),
        .m_device_port_rdata(aquila_0_M_DEVICE_PORT_RDATA),
        .m_device_port_rready(aquila_0_M_DEVICE_PORT_RREADY),
        .m_device_port_rresp(aquila_0_M_DEVICE_PORT_RRESP),
        .m_device_port_rvalid(aquila_0_M_DEVICE_PORT_RVALID),
        .m_device_port_wdata(aquila_0_M_DEVICE_PORT_WDATA),
        .m_device_port_wready(aquila_0_M_DEVICE_PORT_WREADY),
        .m_device_port_wstrb(aquila_0_M_DEVICE_PORT_WSTRB),
        .m_device_port_wvalid(aquila_0_M_DEVICE_PORT_WVALID),
        .m_dmem_port_araddr(aquila_0_M_DCACHE_PORT_ARADDR),
        .m_dmem_port_arburst(aquila_0_M_DCACHE_PORT_ARBURST),
        .m_dmem_port_arcache(aquila_0_M_DCACHE_PORT_ARCACHE),
        .m_dmem_port_arid(aquila_0_M_DCACHE_PORT_ARID),
        .m_dmem_port_arlen(aquila_0_M_DCACHE_PORT_ARLEN),
        .m_dmem_port_arlock(aquila_0_M_DCACHE_PORT_ARLOCK),
        .m_dmem_port_arprot(aquila_0_M_DCACHE_PORT_ARPROT),
        .m_dmem_port_arqos(aquila_0_M_DCACHE_PORT_ARQOS),
        .m_dmem_port_arready(aquila_0_M_DCACHE_PORT_ARREADY),
        .m_dmem_port_arsize(aquila_0_M_DCACHE_PORT_ARSIZE),
        .m_dmem_port_aruser(aquila_0_M_DCACHE_PORT_ARUSER),
        .m_dmem_port_arvalid(aquila_0_M_DCACHE_PORT_ARVALID),
        .m_dmem_port_awaddr(aquila_0_M_DCACHE_PORT_AWADDR),
        .m_dmem_port_awburst(aquila_0_M_DCACHE_PORT_AWBURST),
        .m_dmem_port_awcache(aquila_0_M_DCACHE_PORT_AWCACHE),
        .m_dmem_port_awid(aquila_0_M_DCACHE_PORT_AWID),
        .m_dmem_port_awlen(aquila_0_M_DCACHE_PORT_AWLEN),
        .m_dmem_port_awlock(aquila_0_M_DCACHE_PORT_AWLOCK),
        .m_dmem_port_awprot(aquila_0_M_DCACHE_PORT_AWPROT),
        .m_dmem_port_awqos(aquila_0_M_DCACHE_PORT_AWQOS),
        .m_dmem_port_awready(aquila_0_M_DCACHE_PORT_AWREADY),
        .m_dmem_port_awsize(aquila_0_M_DCACHE_PORT_AWSIZE),
        .m_dmem_port_awuser(aquila_0_M_DCACHE_PORT_AWUSER),
        .m_dmem_port_awvalid(aquila_0_M_DCACHE_PORT_AWVALID),
        .m_dmem_port_bid(aquila_0_M_DCACHE_PORT_BID),
        .m_dmem_port_bready(aquila_0_M_DCACHE_PORT_BREADY),
        .m_dmem_port_bresp(aquila_0_M_DCACHE_PORT_BRESP),
        .m_dmem_port_buser(aquila_0_M_DCACHE_PORT_BUSER),
        .m_dmem_port_bvalid(aquila_0_M_DCACHE_PORT_BVALID),
        .m_dmem_port_rdata(aquila_0_M_DCACHE_PORT_RDATA),
        .m_dmem_port_rid(aquila_0_M_DCACHE_PORT_RID),
        .m_dmem_port_rlast(aquila_0_M_DCACHE_PORT_RLAST),
        .m_dmem_port_rready(aquila_0_M_DCACHE_PORT_RREADY),
        .m_dmem_port_rresp(aquila_0_M_DCACHE_PORT_RRESP),
        .m_dmem_port_rvalid(aquila_0_M_DCACHE_PORT_RVALID),
        .m_dmem_port_wdata(aquila_0_M_DCACHE_PORT_WDATA),
        .m_dmem_port_wlast(aquila_0_M_DCACHE_PORT_WLAST),
        .m_dmem_port_wready(aquila_0_M_DCACHE_PORT_WREADY),
        .m_dmem_port_wstrb(aquila_0_M_DCACHE_PORT_WSTRB),
        .m_dmem_port_wvalid(aquila_0_M_DCACHE_PORT_WVALID),
        .m_imem_port_araddr(aquila_0_M_ICACHE_PORT_ARADDR),
        .m_imem_port_arburst(aquila_0_M_ICACHE_PORT_ARBURST),
        .m_imem_port_arcache(aquila_0_M_ICACHE_PORT_ARCACHE),
        .m_imem_port_arid(aquila_0_M_ICACHE_PORT_ARID),
        .m_imem_port_arlen(aquila_0_M_ICACHE_PORT_ARLEN),
        .m_imem_port_arlock(aquila_0_M_ICACHE_PORT_ARLOCK),
        .m_imem_port_arprot(aquila_0_M_ICACHE_PORT_ARPROT),
        .m_imem_port_arqos(aquila_0_M_ICACHE_PORT_ARQOS),
        .m_imem_port_arready(aquila_0_M_ICACHE_PORT_ARREADY),
        .m_imem_port_arsize(aquila_0_M_ICACHE_PORT_ARSIZE),
        .m_imem_port_aruser(aquila_0_M_ICACHE_PORT_ARUSER),
        .m_imem_port_arvalid(aquila_0_M_ICACHE_PORT_ARVALID),
        .m_imem_port_awaddr(aquila_0_M_ICACHE_PORT_AWADDR),
        .m_imem_port_awburst(aquila_0_M_ICACHE_PORT_AWBURST),
        .m_imem_port_awcache(aquila_0_M_ICACHE_PORT_AWCACHE),
        .m_imem_port_awid(aquila_0_M_ICACHE_PORT_AWID),
        .m_imem_port_awlen(aquila_0_M_ICACHE_PORT_AWLEN),
        .m_imem_port_awlock(aquila_0_M_ICACHE_PORT_AWLOCK),
        .m_imem_port_awprot(aquila_0_M_ICACHE_PORT_AWPROT),
        .m_imem_port_awqos(aquila_0_M_ICACHE_PORT_AWQOS),
        .m_imem_port_awready(aquila_0_M_ICACHE_PORT_AWREADY),
        .m_imem_port_awsize(aquila_0_M_ICACHE_PORT_AWSIZE),
        .m_imem_port_awuser(aquila_0_M_ICACHE_PORT_AWUSER),
        .m_imem_port_awvalid(aquila_0_M_ICACHE_PORT_AWVALID),
        .m_imem_port_bid(aquila_0_M_ICACHE_PORT_BID),
        .m_imem_port_bready(aquila_0_M_ICACHE_PORT_BREADY),
        .m_imem_port_bresp(aquila_0_M_ICACHE_PORT_BRESP),
        .m_imem_port_buser(aquila_0_M_ICACHE_PORT_BUSER),
        .m_imem_port_bvalid(aquila_0_M_ICACHE_PORT_BVALID),
        .m_imem_port_rdata(aquila_0_M_ICACHE_PORT_RDATA),
        .m_imem_port_rid(aquila_0_M_ICACHE_PORT_RID),
        .m_imem_port_rlast(aquila_0_M_ICACHE_PORT_RLAST),
        .m_imem_port_rready(aquila_0_M_ICACHE_PORT_RREADY),
        .m_imem_port_rresp(aquila_0_M_ICACHE_PORT_RRESP),
        .m_imem_port_rvalid(aquila_0_M_ICACHE_PORT_RVALID),
        .m_imem_port_wdata(aquila_0_M_ICACHE_PORT_WDATA),
        .m_imem_port_wlast(aquila_0_M_ICACHE_PORT_WLAST),
        .m_imem_port_wready(aquila_0_M_ICACHE_PORT_WREADY),
        .m_imem_port_wstrb(aquila_0_M_ICACHE_PORT_WSTRB),
        .m_imem_port_wvalid(aquila_0_M_ICACHE_PORT_WVALID),
        .mem_aclk(mig_7series_0_ui_addn_clk_0),
        .mem_aresetn(rst_mig_7series_0_200M_peripheral_aresetn));
  aquila_soc_smartconnect_0_0 axi_smc
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(aquila_0_M_ICACHE_PORT_ARADDR),
        .S00_AXI_arburst(aquila_0_M_ICACHE_PORT_ARBURST),
        .S00_AXI_arcache(aquila_0_M_ICACHE_PORT_ARCACHE),
        .S00_AXI_arid(aquila_0_M_ICACHE_PORT_ARID),
        .S00_AXI_arlen(aquila_0_M_ICACHE_PORT_ARLEN),
        .S00_AXI_arlock(aquila_0_M_ICACHE_PORT_ARLOCK),
        .S00_AXI_arprot(aquila_0_M_ICACHE_PORT_ARPROT),
        .S00_AXI_arqos(aquila_0_M_ICACHE_PORT_ARQOS),
        .S00_AXI_arready(aquila_0_M_ICACHE_PORT_ARREADY),
        .S00_AXI_arsize(aquila_0_M_ICACHE_PORT_ARSIZE),
        .S00_AXI_aruser(aquila_0_M_ICACHE_PORT_ARUSER),
        .S00_AXI_arvalid(aquila_0_M_ICACHE_PORT_ARVALID),
        .S00_AXI_awaddr(aquila_0_M_ICACHE_PORT_AWADDR),
        .S00_AXI_awburst(aquila_0_M_ICACHE_PORT_AWBURST),
        .S00_AXI_awcache(aquila_0_M_ICACHE_PORT_AWCACHE),
        .S00_AXI_awid(aquila_0_M_ICACHE_PORT_AWID),
        .S00_AXI_awlen(aquila_0_M_ICACHE_PORT_AWLEN),
        .S00_AXI_awlock(aquila_0_M_ICACHE_PORT_AWLOCK),
        .S00_AXI_awprot(aquila_0_M_ICACHE_PORT_AWPROT),
        .S00_AXI_awqos(aquila_0_M_ICACHE_PORT_AWQOS),
        .S00_AXI_awready(aquila_0_M_ICACHE_PORT_AWREADY),
        .S00_AXI_awsize(aquila_0_M_ICACHE_PORT_AWSIZE),
        .S00_AXI_awuser(aquila_0_M_ICACHE_PORT_AWUSER),
        .S00_AXI_awvalid(aquila_0_M_ICACHE_PORT_AWVALID),
        .S00_AXI_bid(aquila_0_M_ICACHE_PORT_BID),
        .S00_AXI_bready(aquila_0_M_ICACHE_PORT_BREADY),
        .S00_AXI_bresp(aquila_0_M_ICACHE_PORT_BRESP),
        .S00_AXI_buser(aquila_0_M_ICACHE_PORT_BUSER),
        .S00_AXI_bvalid(aquila_0_M_ICACHE_PORT_BVALID),
        .S00_AXI_rdata(aquila_0_M_ICACHE_PORT_RDATA),
        .S00_AXI_rid(aquila_0_M_ICACHE_PORT_RID),
        .S00_AXI_rlast(aquila_0_M_ICACHE_PORT_RLAST),
        .S00_AXI_rready(aquila_0_M_ICACHE_PORT_RREADY),
        .S00_AXI_rresp(aquila_0_M_ICACHE_PORT_RRESP),
        .S00_AXI_rvalid(aquila_0_M_ICACHE_PORT_RVALID),
        .S00_AXI_wdata(aquila_0_M_ICACHE_PORT_WDATA),
        .S00_AXI_wlast(aquila_0_M_ICACHE_PORT_WLAST),
        .S00_AXI_wready(aquila_0_M_ICACHE_PORT_WREADY),
        .S00_AXI_wstrb(aquila_0_M_ICACHE_PORT_WSTRB),
        .S00_AXI_wvalid(aquila_0_M_ICACHE_PORT_WVALID),
        .S01_AXI_araddr(aquila_0_M_DCACHE_PORT_ARADDR),
        .S01_AXI_arburst(aquila_0_M_DCACHE_PORT_ARBURST),
        .S01_AXI_arcache(aquila_0_M_DCACHE_PORT_ARCACHE),
        .S01_AXI_arid(aquila_0_M_DCACHE_PORT_ARID),
        .S01_AXI_arlen(aquila_0_M_DCACHE_PORT_ARLEN),
        .S01_AXI_arlock(aquila_0_M_DCACHE_PORT_ARLOCK),
        .S01_AXI_arprot(aquila_0_M_DCACHE_PORT_ARPROT),
        .S01_AXI_arqos(aquila_0_M_DCACHE_PORT_ARQOS),
        .S01_AXI_arready(aquila_0_M_DCACHE_PORT_ARREADY),
        .S01_AXI_arsize(aquila_0_M_DCACHE_PORT_ARSIZE),
        .S01_AXI_aruser(aquila_0_M_DCACHE_PORT_ARUSER),
        .S01_AXI_arvalid(aquila_0_M_DCACHE_PORT_ARVALID),
        .S01_AXI_awaddr(aquila_0_M_DCACHE_PORT_AWADDR),
        .S01_AXI_awburst(aquila_0_M_DCACHE_PORT_AWBURST),
        .S01_AXI_awcache(aquila_0_M_DCACHE_PORT_AWCACHE),
        .S01_AXI_awid(aquila_0_M_DCACHE_PORT_AWID),
        .S01_AXI_awlen(aquila_0_M_DCACHE_PORT_AWLEN),
        .S01_AXI_awlock(aquila_0_M_DCACHE_PORT_AWLOCK),
        .S01_AXI_awprot(aquila_0_M_DCACHE_PORT_AWPROT),
        .S01_AXI_awqos(aquila_0_M_DCACHE_PORT_AWQOS),
        .S01_AXI_awready(aquila_0_M_DCACHE_PORT_AWREADY),
        .S01_AXI_awsize(aquila_0_M_DCACHE_PORT_AWSIZE),
        .S01_AXI_awuser(aquila_0_M_DCACHE_PORT_AWUSER),
        .S01_AXI_awvalid(aquila_0_M_DCACHE_PORT_AWVALID),
        .S01_AXI_bid(aquila_0_M_DCACHE_PORT_BID),
        .S01_AXI_bready(aquila_0_M_DCACHE_PORT_BREADY),
        .S01_AXI_bresp(aquila_0_M_DCACHE_PORT_BRESP),
        .S01_AXI_buser(aquila_0_M_DCACHE_PORT_BUSER),
        .S01_AXI_bvalid(aquila_0_M_DCACHE_PORT_BVALID),
        .S01_AXI_rdata(aquila_0_M_DCACHE_PORT_RDATA),
        .S01_AXI_rid(aquila_0_M_DCACHE_PORT_RID),
        .S01_AXI_rlast(aquila_0_M_DCACHE_PORT_RLAST),
        .S01_AXI_rready(aquila_0_M_DCACHE_PORT_RREADY),
        .S01_AXI_rresp(aquila_0_M_DCACHE_PORT_RRESP),
        .S01_AXI_rvalid(aquila_0_M_DCACHE_PORT_RVALID),
        .S01_AXI_wdata(aquila_0_M_DCACHE_PORT_WDATA),
        .S01_AXI_wlast(aquila_0_M_DCACHE_PORT_WLAST),
        .S01_AXI_wready(aquila_0_M_DCACHE_PORT_WREADY),
        .S01_AXI_wstrb(aquila_0_M_DCACHE_PORT_WSTRB),
        .S01_AXI_wvalid(aquila_0_M_DCACHE_PORT_WVALID),
        .S02_AXI_araddr(1'b0),
        .S02_AXI_arburst({1'b0,1'b1}),
        .S02_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S02_AXI_arid(1'b0),
        .S02_AXI_arlen(1'b0),
        .S02_AXI_arlock(1'b0),
        .S02_AXI_arprot({1'b0,1'b0,1'b0}),
        .S02_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arsize({1'b0,1'b1,1'b0}),
        .S02_AXI_aruser(1'b0),
        .S02_AXI_arvalid(1'b0),
        .S02_AXI_awaddr(1'b0),
        .S02_AXI_awburst({1'b0,1'b1}),
        .S02_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S02_AXI_awid(1'b0),
        .S02_AXI_awlen(1'b0),
        .S02_AXI_awlock(1'b0),
        .S02_AXI_awprot({1'b0,1'b0,1'b0}),
        .S02_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awsize({1'b0,1'b1,1'b0}),
        .S02_AXI_awuser(1'b0),
        .S02_AXI_awvalid(1'b0),
        .S02_AXI_bready(1'b0),
        .S02_AXI_rready(1'b0),
        .S02_AXI_wdata(1'b0),
        .S02_AXI_wid(1'b0),
        .S02_AXI_wlast(1'b0),
        .S02_AXI_wstrb(1'b1),
        .S02_AXI_wuser(1'b0),
        .S02_AXI_wvalid(1'b0),
        .aclk(mig_7series_0_ui_clk),
        .aclk1(mig_7series_0_ui_addn_clk_0),
        .aresetn(rst_mig_7series_0_200M_peripheral_aresetn));
  aquila_soc_axi_uartlite_0_0 axi_uartlite_0
       (.rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(mig_7series_0_ui_addn_clk_0),
        .s_axi_araddr(aquila_0_M_DEVICE_PORT_ARADDR[3:0]),
        .s_axi_aresetn(rst_mig_7series_0_200M_peripheral_aresetn),
        .s_axi_arready(aquila_0_M_DEVICE_PORT_ARREADY),
        .s_axi_arvalid(aquila_0_M_DEVICE_PORT_ARVALID),
        .s_axi_awaddr(aquila_0_M_DEVICE_PORT_AWADDR[3:0]),
        .s_axi_awready(aquila_0_M_DEVICE_PORT_AWREADY),
        .s_axi_awvalid(aquila_0_M_DEVICE_PORT_AWVALID),
        .s_axi_bready(aquila_0_M_DEVICE_PORT_BREADY),
        .s_axi_bresp(aquila_0_M_DEVICE_PORT_BRESP),
        .s_axi_bvalid(aquila_0_M_DEVICE_PORT_BVALID),
        .s_axi_rdata(aquila_0_M_DEVICE_PORT_RDATA),
        .s_axi_rready(aquila_0_M_DEVICE_PORT_RREADY),
        .s_axi_rresp(aquila_0_M_DEVICE_PORT_RRESP),
        .s_axi_rvalid(aquila_0_M_DEVICE_PORT_RVALID),
        .s_axi_wdata(aquila_0_M_DEVICE_PORT_WDATA),
        .s_axi_wready(aquila_0_M_DEVICE_PORT_WREADY),
        .s_axi_wstrb(aquila_0_M_DEVICE_PORT_WSTRB),
        .s_axi_wvalid(aquila_0_M_DEVICE_PORT_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  aquila_soc_mig_7series_0_0 mig_7series_0
       (.aresetn(rst_mig_7series_0_200M_peripheral_aresetn),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_cs_n(mig_7series_0_DDR3_CS_N),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(ddr3_sdram_dq[63:0]),
        .ddr3_dqs_n(ddr3_sdram_dqs_n[7:0]),
        .ddr3_dqs_p(ddr3_sdram_dqs_p[7:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M00_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .s_axi_arid(1'b0),
        .s_axi_arlen(smartconnect_0_M00_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .s_axi_arqos(smartconnect_0_M00_AXI_ARQOS),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M00_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .s_axi_awid(1'b0),
        .s_axi_awlen(smartconnect_0_M00_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M00_AXI_AWPROT),
        .s_axi_awqos(smartconnect_0_M00_AXI_AWQOS),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M00_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M00_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID),
        .sys_clk_n(sys_diff_clock_1_CLK_N),
        .sys_clk_p(sys_diff_clock_1_CLK_P),
        .sys_rst(reset_1),
        .ui_addn_clk_0(mig_7series_0_ui_addn_clk_0),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  aquila_soc_rst_mig_7series_0_200M_0 rst_mig_7series_0_200M
       (.aux_reset_in(1'b1),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_mig_7series_0_200M_peripheral_aresetn),
        .slowest_sync_clk(mig_7series_0_ui_addn_clk_0));
endmodule
