-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Sep 16 18:03:35 2020
-- Host        : Neptunium running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ aquila_soc_aquila_0_1_stub.vhdl
-- Design      : aquila_soc_aquila_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    m_dmem_port_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dmem_port_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_dmem_port_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dmem_port_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dmem_port_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dmem_port_awlock : out STD_LOGIC;
    m_dmem_port_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dmem_port_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dmem_port_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dmem_port_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dmem_port_awvalid : out STD_LOGIC;
    m_dmem_port_awready : in STD_LOGIC;
    m_dmem_port_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_dmem_port_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dmem_port_wlast : out STD_LOGIC;
    m_dmem_port_wvalid : out STD_LOGIC;
    m_dmem_port_wready : in STD_LOGIC;
    m_dmem_port_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dmem_port_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dmem_port_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dmem_port_bvalid : in STD_LOGIC;
    m_dmem_port_bready : out STD_LOGIC;
    m_dmem_port_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dmem_port_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_dmem_port_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dmem_port_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dmem_port_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dmem_port_arlock : out STD_LOGIC;
    m_dmem_port_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dmem_port_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dmem_port_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dmem_port_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dmem_port_arvalid : out STD_LOGIC;
    m_dmem_port_arready : in STD_LOGIC;
    m_dmem_port_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dmem_port_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_dmem_port_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dmem_port_rlast : in STD_LOGIC;
    m_dmem_port_rvalid : in STD_LOGIC;
    m_dmem_port_rready : out STD_LOGIC;
    device_aclk : in STD_LOGIC;
    device_aresetn : in STD_LOGIC;
    m_device_port_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_device_port_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_device_port_awvalid : out STD_LOGIC;
    m_device_port_awready : in STD_LOGIC;
    m_device_port_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_device_port_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_device_port_wvalid : out STD_LOGIC;
    m_device_port_wready : in STD_LOGIC;
    m_device_port_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_device_port_bvalid : in STD_LOGIC;
    m_device_port_bready : out STD_LOGIC;
    m_device_port_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_device_port_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_device_port_arvalid : out STD_LOGIC;
    m_device_port_arready : in STD_LOGIC;
    m_device_port_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_device_port_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_device_port_rvalid : in STD_LOGIC;
    m_device_port_rready : out STD_LOGIC;
    m_imem_port_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_imem_port_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_imem_port_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_imem_port_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_imem_port_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_imem_port_awlock : out STD_LOGIC;
    m_imem_port_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_imem_port_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_imem_port_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_imem_port_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_imem_port_awvalid : out STD_LOGIC;
    m_imem_port_awready : in STD_LOGIC;
    m_imem_port_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_imem_port_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_imem_port_wlast : out STD_LOGIC;
    m_imem_port_wvalid : out STD_LOGIC;
    m_imem_port_wready : in STD_LOGIC;
    m_imem_port_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_imem_port_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_imem_port_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_imem_port_bvalid : in STD_LOGIC;
    m_imem_port_bready : out STD_LOGIC;
    m_imem_port_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_imem_port_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_imem_port_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_imem_port_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_imem_port_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_imem_port_arlock : out STD_LOGIC;
    m_imem_port_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_imem_port_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_imem_port_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_imem_port_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_imem_port_arvalid : out STD_LOGIC;
    m_imem_port_arready : in STD_LOGIC;
    m_imem_port_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_imem_port_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_imem_port_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_imem_port_rlast : in STD_LOGIC;
    m_imem_port_rvalid : in STD_LOGIC;
    m_imem_port_rready : out STD_LOGIC;
    mem_aclk : in STD_LOGIC;
    mem_aresetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m_dmem_port_awid[0:0],m_dmem_port_awaddr[31:0],m_dmem_port_awlen[7:0],m_dmem_port_awsize[2:0],m_dmem_port_awburst[1:0],m_dmem_port_awlock,m_dmem_port_awcache[3:0],m_dmem_port_awprot[2:0],m_dmem_port_awqos[3:0],m_dmem_port_awuser[0:0],m_dmem_port_awvalid,m_dmem_port_awready,m_dmem_port_wdata[31:0],m_dmem_port_wstrb[3:0],m_dmem_port_wlast,m_dmem_port_wvalid,m_dmem_port_wready,m_dmem_port_bid[0:0],m_dmem_port_bresp[1:0],m_dmem_port_buser[0:0],m_dmem_port_bvalid,m_dmem_port_bready,m_dmem_port_arid[0:0],m_dmem_port_araddr[31:0],m_dmem_port_arlen[7:0],m_dmem_port_arsize[2:0],m_dmem_port_arburst[1:0],m_dmem_port_arlock,m_dmem_port_arcache[3:0],m_dmem_port_arprot[2:0],m_dmem_port_arqos[3:0],m_dmem_port_aruser[0:0],m_dmem_port_arvalid,m_dmem_port_arready,m_dmem_port_rid[0:0],m_dmem_port_rdata[31:0],m_dmem_port_rresp[1:0],m_dmem_port_rlast,m_dmem_port_rvalid,m_dmem_port_rready,device_aclk,device_aresetn,m_device_port_awaddr[31:0],m_device_port_awprot[2:0],m_device_port_awvalid,m_device_port_awready,m_device_port_wdata[31:0],m_device_port_wstrb[3:0],m_device_port_wvalid,m_device_port_wready,m_device_port_bresp[1:0],m_device_port_bvalid,m_device_port_bready,m_device_port_araddr[31:0],m_device_port_arprot[2:0],m_device_port_arvalid,m_device_port_arready,m_device_port_rdata[31:0],m_device_port_rresp[1:0],m_device_port_rvalid,m_device_port_rready,m_imem_port_awid[0:0],m_imem_port_awaddr[31:0],m_imem_port_awlen[7:0],m_imem_port_awsize[2:0],m_imem_port_awburst[1:0],m_imem_port_awlock,m_imem_port_awcache[3:0],m_imem_port_awprot[2:0],m_imem_port_awqos[3:0],m_imem_port_awuser[0:0],m_imem_port_awvalid,m_imem_port_awready,m_imem_port_wdata[31:0],m_imem_port_wstrb[3:0],m_imem_port_wlast,m_imem_port_wvalid,m_imem_port_wready,m_imem_port_bid[0:0],m_imem_port_bresp[1:0],m_imem_port_buser[0:0],m_imem_port_bvalid,m_imem_port_bready,m_imem_port_arid[0:0],m_imem_port_araddr[31:0],m_imem_port_arlen[7:0],m_imem_port_arsize[2:0],m_imem_port_arburst[1:0],m_imem_port_arlock,m_imem_port_arcache[3:0],m_imem_port_arprot[2:0],m_imem_port_arqos[3:0],m_imem_port_aruser[0:0],m_imem_port_arvalid,m_imem_port_arready,m_imem_port_rid[0:0],m_imem_port_rdata[31:0],m_imem_port_rresp[1:0],m_imem_port_rlast,m_imem_port_rvalid,m_imem_port_rready,mem_aclk,mem_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "aquila,Vivado 2018.3";
begin
end;
