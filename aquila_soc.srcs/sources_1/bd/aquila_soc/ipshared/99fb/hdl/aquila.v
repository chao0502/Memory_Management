`timescale 1 ns / 1 ps
// =============================================================================
//  Program : aquila.v
//  Author  : Chun-Jen Tsai
//  Date    : Oct/08/2019
// -----------------------------------------------------------------------------
//  Revision information:
//
//  NONE.
// -----------------------------------------------------------------------------
//  Description:
//  This is the top-level Aquila SoC module. This file is generated using Vivado
//  IP wizard, with a few manual modifications.
// -----------------------------------------------------------------------------
//  License information:
//
//  This software is released under the BSD-3-Clause Licence,
//  see https://opensource.org/licenses/BSD-3-Clause for details.
//  In the following license statements, "software" refers to the
//  "source code" of the complete hardware/software system.
//
//  Copyright 2019,
//                    Embedded Intelligent Systems Lab (EISL)
//                    Deparment of Computer Science
//                    National Chiao Tung Uniersity
//                    Hsinchu, Taiwan.
//
//  All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//
//  1. Redistributions of source code must retain the above copyright notice,
//     this list of conditions and the following disclaimer.
//
//  2. Redistributions in binary form must reproduce the above copyright notice,
//     this list of conditions and the following disclaimer in the documentation
//     and/or other materials provided with the distribution.
//
//  3. Neither the name of the copyright holder nor the names of its contributors
//     may be used to endorse or promote products derived from this software
//     without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
//  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
//  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
//  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
//  POSSIBILITY OF SUCH DAMAGE.
// =============================================================================

module aquila #
(
    // Parameters of Axi Master Bus Interface M_ICACHE_PORT
    parameter integer C_M_IMEM_PORT_ID_WIDTH		= 1,
    parameter integer C_M_IMEM_PORT_ADDR_WIDTH	= 32,
    parameter integer C_M_IMEM_PORT_DATA_WIDTH	= 32,
    parameter integer C_M_IMEM_PORT_AWUSER_WIDTH	= 0,
    parameter integer C_M_IMEM_PORT_ARUSER_WIDTH	= 0,
    parameter integer C_M_IMEM_PORT_WUSER_WIDTH	= 0,
    parameter integer C_M_IMEM_PORT_RUSER_WIDTH	= 0,
    parameter integer C_M_IMEM_PORT_BUSER_WIDTH	= 0,

    // Parameters of Axi Master Bus Interface M_DMEM_PORT
    parameter integer C_M_DMEM_PORT_ID_WIDTH		= 1,
    parameter integer C_M_DMEM_PORT_ADDR_WIDTH	= 32,
    parameter integer C_M_DMEM_PORT_DATA_WIDTH	= 32,
    parameter integer C_M_DMEM_PORT_AWUSER_WIDTH	= 0,
    parameter integer C_M_DMEM_PORT_ARUSER_WIDTH	= 0,
    parameter integer C_M_DMEM_PORT_WUSER_WIDTH	= 0,
    parameter integer C_M_DMEM_PORT_RUSER_WIDTH	= 0,
    parameter integer C_M_DMEM_PORT_BUSER_WIDTH	= 0,

    // Parameters of Axi Master Bus Interface M_DMM_PORT
    parameter integer C_M_DMM_PORT_SLAVE_BASE_ADDR = 32'h60000000,
    parameter integer C_M_DMM_PORT_BURST_LEN = 16,
    parameter integer C_M_DMM_PORT_ID_WIDTH		= 1,
    parameter integer C_M_DMM_PORT_ADDR_WIDTH	= 32,
    parameter integer C_M_DMM_PORT_DATA_WIDTH	= 32,
    parameter integer C_M_DMM_PORT_AWUSER_WIDTH	= 0,
    parameter integer C_M_DMM_PORT_ARUSER_WIDTH	= 0,
    parameter integer C_M_DMM_PORT_WUSER_WIDTH	= 0,
    parameter integer C_M_DMM_PORT_RUSER_WIDTH	= 0,
    parameter integer C_M_DMM_PORT_BUSER_WIDTH	= 0,

    // Parameters of Axi Master Bus Interface M_DEVICE_PORT
    parameter integer C_M_DEVICE_PORT_ADDR_WIDTH    = 32,
    parameter integer C_M_DEVICE_PORT_DATA_WIDTH    = 32
)
(
    // Ports of Axi Master Bus Interface M_ICACHE_PORT
    input wire mem_aclk,
    input wire mem_aresetn,
    output wire [C_M_IMEM_PORT_ID_WIDTH - 1 : 0] m_imem_port_awid,
    output wire [C_M_IMEM_PORT_ADDR_WIDTH - 1 : 0] m_imem_port_awaddr,
    output wire [7 : 0] m_imem_port_awlen,
    output wire [2 : 0] m_imem_port_awsize,
    output wire [1 : 0] m_imem_port_awburst,
    output wire m_imem_port_awlock,
    output wire [3 : 0] m_imem_port_awcache,
    output wire [2 : 0] m_imem_port_awprot,
    output wire [3 : 0] m_imem_port_awqos,
    output wire [C_M_IMEM_PORT_AWUSER_WIDTH - 1 : 0] m_imem_port_awuser,
    output wire m_imem_port_awvalid,
    input wire m_imem_port_awready,
    output wire [C_M_IMEM_PORT_DATA_WIDTH - 1 : 0] m_imem_port_wdata,
    output wire [C_M_IMEM_PORT_DATA_WIDTH / 8 - 1 : 0] m_imem_port_wstrb,
    output wire m_imem_port_wlast,
    output wire [C_M_IMEM_PORT_WUSER_WIDTH - 1 : 0] m_imem_port_wuser,
    output wire m_imem_port_wvalid,
    input wire m_imem_port_wready,
    input wire [C_M_IMEM_PORT_ID_WIDTH - 1 : 0] m_imem_port_bid,
    input wire [1 : 0] m_imem_port_bresp,
    input wire [C_M_IMEM_PORT_BUSER_WIDTH - 1 : 0] m_imem_port_buser,
    input wire m_imem_port_bvalid,
    output wire m_imem_port_bready,
    output wire [C_M_IMEM_PORT_ID_WIDTH - 1 : 0] m_imem_port_arid,
    output wire [C_M_IMEM_PORT_ADDR_WIDTH - 1 : 0] m_imem_port_araddr,
    output wire [7 : 0] m_imem_port_arlen,
    output wire [2 : 0] m_imem_port_arsize,
    output wire [1 : 0] m_imem_port_arburst,
    output wire m_imem_port_arlock,
    output wire [3 : 0] m_imem_port_arcache,
    output wire [2 : 0] m_imem_port_arprot,
    output wire [3 : 0] m_imem_port_arqos,
    output wire [C_M_IMEM_PORT_ARUSER_WIDTH - 1 : 0] m_imem_port_aruser,
    output wire m_imem_port_arvalid,
    input wire m_imem_port_arready,
    input wire [C_M_IMEM_PORT_ID_WIDTH - 1 : 0] m_imem_port_rid,
    input wire [C_M_IMEM_PORT_DATA_WIDTH - 1 : 0] m_imem_port_rdata,
    input wire [1 : 0] m_imem_port_rresp,
    input wire m_imem_port_rlast,
    input wire [C_M_IMEM_PORT_RUSER_WIDTH - 1 : 0] m_imem_port_ruser,
    input wire m_imem_port_rvalid,
    output wire m_imem_port_rready,

    // Ports of Axi Master Bus Interface M_DMEM_PORT
    output wire [C_M_DMEM_PORT_ID_WIDTH - 1 : 0] m_dmem_port_awid,
    output wire [C_M_DMEM_PORT_ADDR_WIDTH - 1 : 0] m_dmem_port_awaddr,
    output wire [7 : 0] m_dmem_port_awlen,
    output wire [2 : 0] m_dmem_port_awsize,
    output wire [1 : 0] m_dmem_port_awburst,
    output wire m_dmem_port_awlock,
    output wire [3 : 0] m_dmem_port_awcache,
    output wire [2 : 0] m_dmem_port_awprot,
    output wire [3 : 0] m_dmem_port_awqos,
    output wire [C_M_DMEM_PORT_AWUSER_WIDTH - 1 : 0] m_dmem_port_awuser,
    output wire m_dmem_port_awvalid,
    input wire m_dmem_port_awready,
    output wire [C_M_DMEM_PORT_DATA_WIDTH - 1 : 0] m_dmem_port_wdata,
    output wire [C_M_DMEM_PORT_DATA_WIDTH / 8 - 1 : 0] m_dmem_port_wstrb,
    output wire m_dmem_port_wlast,
    output wire [C_M_DMEM_PORT_WUSER_WIDTH - 1 : 0] m_dmem_port_wuser,
    output wire m_dmem_port_wvalid,
    input wire m_dmem_port_wready,
    input wire [C_M_DMEM_PORT_ID_WIDTH - 1 : 0] m_dmem_port_bid,
    input wire [1 : 0] m_dmem_port_bresp,
    input wire [C_M_DMEM_PORT_BUSER_WIDTH - 1 : 0] m_dmem_port_buser,
    input wire m_dmem_port_bvalid,
    output wire m_dmem_port_bready,
    output wire [C_M_DMEM_PORT_ID_WIDTH - 1 : 0] m_dmem_port_arid,
    output wire [C_M_DMEM_PORT_ADDR_WIDTH - 1 : 0] m_dmem_port_araddr,
    output wire [7 : 0] m_dmem_port_arlen,
    output wire [2 : 0] m_dmem_port_arsize,
    output wire [1 : 0] m_dmem_port_arburst,
    output wire m_dmem_port_arlock,
    output wire [3 : 0] m_dmem_port_arcache,
    output wire [2 : 0] m_dmem_port_arprot,
    output wire [3 : 0] m_dmem_port_arqos,
    output wire [C_M_DMEM_PORT_ARUSER_WIDTH - 1 : 0] m_dmem_port_aruser,
    output wire m_dmem_port_arvalid,
    input wire m_dmem_port_arready,
    input wire [C_M_DMEM_PORT_ID_WIDTH - 1 : 0] m_dmem_port_rid,
    input wire [C_M_DMEM_PORT_DATA_WIDTH - 1 : 0] m_dmem_port_rdata,
    input wire [1 : 0] m_dmem_port_rresp,
    input wire m_dmem_port_rlast,
    input wire [C_M_DMEM_PORT_RUSER_WIDTH - 1 : 0] m_dmem_port_ruser,
    input wire m_dmem_port_rvalid,
    output wire m_dmem_port_rready,

    // Ports of Axi Master Bus Interface M_DEVICE_PORT
    input wire device_aclk,
    input wire device_aresetn,
    output wire [C_M_DEVICE_PORT_ADDR_WIDTH-1 : 0] m_device_port_awaddr,
    output wire [2 : 0] m_device_port_awprot,
    output wire  m_device_port_awvalid,
    input wire  m_device_port_awready,
    output wire [C_M_DEVICE_PORT_DATA_WIDTH-1 : 0] m_device_port_wdata,
    output wire [C_M_DEVICE_PORT_DATA_WIDTH/8-1 : 0] m_device_port_wstrb,
    output wire  m_device_port_wvalid,
    input wire  m_device_port_wready,
    input wire [1 : 0] m_device_port_bresp,
    input wire  m_device_port_bvalid,
    output wire  m_device_port_bready,
    output wire [C_M_DEVICE_PORT_ADDR_WIDTH-1 : 0] m_device_port_araddr,
    output wire [2 : 0] m_device_port_arprot,
    output wire  m_device_port_arvalid,
    input wire  m_device_port_arready,
    input wire [C_M_DEVICE_PORT_DATA_WIDTH-1 : 0] m_device_port_rdata,
    input wire [1 : 0] m_device_port_rresp,
    input wire  m_device_port_rvalid,
    output wire  m_device_port_rready
);

// Declaration of local signals.
wire                                      RISCV_rst;
wire                                      M_IMEM_strobe, M_IMEM_done;
wire                                      M_DMEM_strobe, M_DMEM_done;
wire                                      M_DMEM_rw;
wire [C_M_IMEM_PORT_DATA_WIDTH - 1 : 0] M_IMEM_addr;
wire [C_M_DMEM_PORT_DATA_WIDTH - 1 : 0] M_DMEM_addr;
wire [255 : 0] M_IMEM_datain, M_DMEM_datain, M_DMEM_dataout;

wire                                      M_DEVICE_strobe;
wire [C_M_DEVICE_PORT_DATA_WIDTH - 1 : 0] M_DEVICE_addr;
wire                                      M_DEVICE_rw;
wire [C_M_DEVICE_PORT_DATA_WIDTH/8-1 : 0] M_DEVICE_byte_enable;
wire [C_M_DEVICE_PORT_DATA_WIDTH - 1 : 0] M_DEVICE_core2dev_data;
wire                                      M_DEVICE_data_ready;
wire [C_M_DEVICE_PORT_DATA_WIDTH - 1 : 0] M_DEVICE_dev2core_data;

wire copy_active;
wire [31:0] copy_len;
wire copy_flag;
wire copy_done;
wire write_request;
wire [31:0] write_address;
wire [3:0] write_len;
wire [31:0] write_data;
wire wnext;
wire [31:0] src_addr;
wire [31:0] dst_addr;
wire read_request;
wire [31:0] read_address;
wire [3:0] read_len;
wire [31:0] read_data;
wire rnext;
wire wvalid;
wire rvalid;

// Deplay the CPU reset signal for a few seconds, in case
// you want to use ILA to capture the signals.
reg [32:0] rst_counter;

always @(posedge device_aclk)
begin
    if ( device_aresetn == 1'b0 )
        rst_counter <= 33'd1_000_000; // Set 10-msec delay.
    else
        rst_counter <= rst_counter - (| rst_counter);
end

assign RISCV_rst = (| rst_counter);

// Instantiation of the Axi Bus Interface M_ICACHE_PORT
aquila_M_IMEM_PORT # (
    .C_M_AXI_ID_WIDTH(C_M_IMEM_PORT_ID_WIDTH),
    .C_M_AXI_ADDR_WIDTH(C_M_IMEM_PORT_ADDR_WIDTH),
    .C_M_AXI_DATA_WIDTH(C_M_IMEM_PORT_DATA_WIDTH),
    .C_M_AXI_AWUSER_WIDTH(C_M_IMEM_PORT_AWUSER_WIDTH),
    .C_M_AXI_ARUSER_WIDTH(C_M_IMEM_PORT_ARUSER_WIDTH),
    .C_M_AXI_WUSER_WIDTH(C_M_IMEM_PORT_WUSER_WIDTH),
    .C_M_AXI_RUSER_WIDTH(C_M_IMEM_PORT_RUSER_WIDTH),
    .C_M_AXI_BUSER_WIDTH(C_M_IMEM_PORT_BUSER_WIDTH)
) aquila_M_IMEM_PORT_inst (
    .RISCV_rst(RISCV_rst),
    .M_IMEM_strobe(M_IMEM_strobe),
    .M_IMEM_addr(M_IMEM_addr),
    .M_IMEM_done(M_IMEM_done),
    .M_IMEM_datain(M_IMEM_datain),

    .M_AXI_ACLK(mem_aclk),
    .M_AXI_ARESETN(mem_aresetn),
    .M_AXI_AWID(m_imem_port_awid),
    .M_AXI_AWADDR(m_imem_port_awaddr),
    .M_AXI_AWLEN(m_imem_port_awlen),
    .M_AXI_AWSIZE(m_imem_port_awsize),
    .M_AXI_AWBURST(m_imem_port_awburst),
    .M_AXI_AWLOCK(m_imem_port_awlock),
    .M_AXI_AWCACHE(m_imem_port_awcache),
    .M_AXI_AWPROT(m_imem_port_awprot),
    .M_AXI_AWQOS(m_imem_port_awqos),
    .M_AXI_AWUSER(m_imem_port_awuser),
    .M_AXI_AWVALID(m_imem_port_awvalid),
    .M_AXI_AWREADY(m_imem_port_awready),
    .M_AXI_WDATA(m_imem_port_wdata),
    .M_AXI_WSTRB(m_imem_port_wstrb),
    .M_AXI_WLAST(m_imem_port_wlast),
    .M_AXI_WUSER(m_imem_port_wuser),
    .M_AXI_WVALID(m_imem_port_wvalid),
    .M_AXI_WREADY(m_imem_port_wready),
    .M_AXI_BID(m_imem_port_bid),
    .M_AXI_BRESP(m_imem_port_bresp),
    .M_AXI_BUSER(m_imem_port_buser),
    .M_AXI_BVALID(m_imem_port_bvalid),
    .M_AXI_BREADY(m_imem_port_bready),
    .M_AXI_ARID(m_imem_port_arid),
    .M_AXI_ARADDR(m_imem_port_araddr),
    .M_AXI_ARLEN(m_imem_port_arlen),
    .M_AXI_ARSIZE(m_imem_port_arsize),
    .M_AXI_ARBURST(m_imem_port_arburst),
    .M_AXI_ARLOCK(m_imem_port_arlock),
    .M_AXI_ARCACHE(m_imem_port_arcache),
    .M_AXI_ARPROT(m_imem_port_arprot),
    .M_AXI_ARQOS(m_imem_port_arqos),
    .M_AXI_ARUSER(m_imem_port_aruser),
    .M_AXI_ARVALID(m_imem_port_arvalid),
    .M_AXI_ARREADY(m_imem_port_arready),
    .M_AXI_RID(m_imem_port_rid),
    .M_AXI_RDATA(m_imem_port_rdata),
    .M_AXI_RRESP(m_imem_port_rresp),
    .M_AXI_RLAST(m_imem_port_rlast),
    .M_AXI_RUSER(m_imem_port_ruser),
    .M_AXI_RVALID(m_imem_port_rvalid),
    .M_AXI_RREADY(m_imem_port_rready)
);

// Instantiation of the Axi Bus Interface M_DMEM_PORT
aquila_M_DMEM_PORT # (
    .C_M_AXI_ID_WIDTH(C_M_DMEM_PORT_ID_WIDTH),
    .C_M_AXI_ADDR_WIDTH(C_M_DMEM_PORT_ADDR_WIDTH),
    .C_M_AXI_DATA_WIDTH(C_M_DMEM_PORT_DATA_WIDTH),
    .C_M_AXI_AWUSER_WIDTH(C_M_DMEM_PORT_AWUSER_WIDTH),
    .C_M_AXI_ARUSER_WIDTH(C_M_DMEM_PORT_ARUSER_WIDTH),
    .C_M_AXI_WUSER_WIDTH(C_M_DMEM_PORT_WUSER_WIDTH),
    .C_M_AXI_RUSER_WIDTH(C_M_DMEM_PORT_RUSER_WIDTH),
    .C_M_AXI_BUSER_WIDTH(C_M_DMEM_PORT_BUSER_WIDTH)
) aquila_M_DMEM_PORT_inst (
    .RISCV_rst(RISCV_rst),
    .M_DMEM_strobe(M_DMEM_strobe),
    .M_DMEM_addr(M_DMEM_addr),
    .M_DMEM_rw(M_DMEM_rw),
    .M_DMEM_dataout(M_DMEM_dataout),
    .M_DMEM_done(M_DMEM_done),
    .M_DMEM_datain(M_DMEM_datain),

    .M_AXI_ACLK(mem_aclk),
    .M_AXI_ARESETN(mem_aresetn),
    .M_AXI_AWID(m_dmem_port_awid),
    .M_AXI_AWADDR(m_dmem_port_awaddr),
    .M_AXI_AWLEN(m_dmem_port_awlen),
    .M_AXI_AWSIZE(m_dmem_port_awsize),
    .M_AXI_AWBURST(m_dmem_port_awburst),
    .M_AXI_AWLOCK(m_dmem_port_awlock),
    .M_AXI_AWCACHE(m_dmem_port_awcache),
    .M_AXI_AWPROT(m_dmem_port_awprot),
    .M_AXI_AWQOS(m_dmem_port_awqos),
    .M_AXI_AWUSER(m_dmem_port_awuser),
    .M_AXI_AWVALID(m_dmem_port_awvalid),
    .M_AXI_AWREADY(m_dmem_port_awready),
    .M_AXI_WDATA(m_dmem_port_wdata),
    .M_AXI_WSTRB(m_dmem_port_wstrb),
    .M_AXI_WLAST(m_dmem_port_wlast),
    .M_AXI_WUSER(m_dmem_port_wuser),
    .M_AXI_WVALID(m_dmem_port_wvalid),
    .M_AXI_WREADY(m_dmem_port_wready),
    .M_AXI_BID(m_dmem_port_bid),
    .M_AXI_BRESP(m_dmem_port_bresp),
    .M_AXI_BUSER(m_dmem_port_buser),
    .M_AXI_BVALID(m_dmem_port_bvalid),
    .M_AXI_BREADY(m_dmem_port_bready),
    .M_AXI_ARID(m_dmem_port_arid),
    .M_AXI_ARADDR(m_dmem_port_araddr),
    .M_AXI_ARLEN(m_dmem_port_arlen),
    .M_AXI_ARSIZE(m_dmem_port_arsize),
    .M_AXI_ARBURST(m_dmem_port_arburst),
    .M_AXI_ARLOCK(m_dmem_port_arlock),
    .M_AXI_ARCACHE(m_dmem_port_arcache),
    .M_AXI_ARPROT(m_dmem_port_arprot),
    .M_AXI_ARQOS(m_dmem_port_arqos),
    .M_AXI_ARUSER(m_dmem_port_aruser),
    .M_AXI_ARVALID(m_dmem_port_arvalid),
    .M_AXI_ARREADY(m_dmem_port_arready),
    .M_AXI_RID(m_dmem_port_rid),
    .M_AXI_RDATA(m_dmem_port_rdata),
    .M_AXI_RRESP(m_dmem_port_rresp),
    .M_AXI_RLAST(m_dmem_port_rlast),
    .M_AXI_RUSER(m_dmem_port_ruser),
    .M_AXI_RVALID(m_dmem_port_rvalid),
    .M_AXI_RREADY(m_dmem_port_rready)
);
// Instantiation of the Axi Bus Interface M_DEVICE_PORT
aquila_M_DEVICE_PORT # (
    .C_M_AXI_ADDR_WIDTH(C_M_DEVICE_PORT_ADDR_WIDTH),
    .C_M_AXI_DATA_WIDTH(C_M_DEVICE_PORT_DATA_WIDTH)
) aquila_M_DEVICE_PORT_inst (
    .M_DEVICE_strobe(M_DEVICE_strobe),
    .M_DEVICE_addr(M_DEVICE_addr),
    .M_DEVICE_rw(M_DEVICE_rw),
    .M_DEVICE_byte_enable(M_DEVICE_byte_enable),
    .M_DEVICE_data_i(M_DEVICE_core2dev_data),
    .M_DEVICE_data_ready(M_DEVICE_data_ready),
    .M_DEVICE_data_o(M_DEVICE_dev2core_data),

    .M_AXI_ACLK(device_aclk),
    .M_AXI_ARESETN(device_aresetn),
    .M_AXI_AWADDR(m_device_port_awaddr),
    .M_AXI_AWPROT(m_device_port_awprot),
    .M_AXI_AWVALID(m_device_port_awvalid),
    .M_AXI_AWREADY(m_device_port_awready),
    .M_AXI_WDATA(m_device_port_wdata),
    .M_AXI_WSTRB(m_device_port_wstrb),
    .M_AXI_WVALID(m_device_port_wvalid),
    .M_AXI_WREADY(m_device_port_wready),
    .M_AXI_BRESP(m_device_port_bresp),
    .M_AXI_BVALID(m_device_port_bvalid),
    .M_AXI_BREADY(m_device_port_bready),
    .M_AXI_ARADDR(m_device_port_araddr),
    .M_AXI_ARPROT(m_device_port_arprot),
    .M_AXI_ARVALID(m_device_port_arvalid),
    .M_AXI_ARREADY(m_device_port_arready),
    .M_AXI_RDATA(m_device_port_rdata),
    .M_AXI_RRESP(m_device_port_rresp),
    .M_AXI_RVALID(m_device_port_rvalid),
    .M_AXI_RREADY(m_device_port_rready)
);

// Instiantiation of the top-level Aquila core module.
aquila_top aquila_core(
    .clk_i(device_aclk),
    .rst_i(RISCV_rst),
    .base_addr_i(32'b0),

    .M_IMEM_strobe_o(M_IMEM_strobe),
    .M_IMEM_addr_o(M_IMEM_addr),
    .M_IMEM_done_i(M_IMEM_done),
    .M_IMEM_data_i(M_IMEM_datain),

    .M_DMEM_strobe_o(M_DMEM_strobe),
    .M_DMEM_addr_o(M_DMEM_addr),
    .M_DMEM_rw_o(M_DMEM_rw),
    .M_DMEM_data_o(M_DMEM_dataout),
    .M_DMEM_done_i(M_DMEM_done),
    .M_DMEM_data_i(M_DMEM_datain),

    .M_DEVICE_strobe_o(M_DEVICE_strobe),
    .M_DEVICE_addr_o(M_DEVICE_addr),
    .M_DEVICE_rw_o(M_DEVICE_rw),
    .M_DEVICE_byte_enable_o(M_DEVICE_byte_enable),
    .M_DEVICE_data_o(M_DEVICE_core2dev_data),
    .M_DEVICE_data_ready_i(M_DEVICE_data_ready),
    .M_DEVICE_data_i(M_DEVICE_dev2core_data),

    .copy_active(copy_active),
    .copy_len(copy_len),
    .copy_done(copy_done),
    .write_request(write_request),
    .write_address(write_address),
    .write_len(write_len),
    .write_data(write_data),
    .src_addr(src_addr),
    .dst_addr(dst_addr),
    .read_request(read_request),
    .read_address(read_address),
    .read_len(read_len),
    .read_data(read_data),
    .wvalid(wvalid),
    .rvalid(rvalid)
);

endmodule
