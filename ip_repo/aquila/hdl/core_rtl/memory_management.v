`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 123123
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name:
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module memory_manager #(parameter HEAP_SIZE = 32'h02000000)
(
    input clk,
    input rst,
    input allocate_request,
    input reallocate_request,
    input [31:0] reallocate_addr_i,
    input [31:0] allocate_size,
    input free_request,
    input [31:0] free_addr,
    output [31:0] allocate_addr,
    output allocate_finish,
    output free_finish,
    output dmm_is_idle,

    output dmm_unit_strobe,
    output [31:0] dmm_unit_addr,
    output dmm_unit_rw,//write is 1
    output [255:0] dmm_unit_dataout,
    output [7:0] dmm_unit_size,
    input dmm_unit_done,
    input [255:0] dmm_unit_datain,

    input atomic_unit_strobe_i,
    input [31:0] atomic_unit_addr_i,
    input atomic_unit_rw_i,
    input [255:0] atomic_unit_data_i,
    output atomic_unit_done_o,
    output [255:0] atomic_unit_data_o

);

wire state_idle;
wire state_analysis;
wire free_request_o;
wire [31:0] free_address_o;

assign dmm_unit_strobe = atomic_unit_strobe_i;
assign dmm_unit_addr = atomic_unit_addr_i;
assign dmm_unit_dataout = atomic_unit_data_i; 
assign dmm_unit_rw = atomic_unit_rw_i;
assign dmm_unit_size = 0;
assign dmm_is_idle = state_idle;
assign atomic_unit_done_o = dmm_unit_done;
assign atomic_unit_data_o = dmm_unit_datain;


wire                         read_request;
wire [31:0]                  read_address;
wire                         write_request;
wire [31:0]                  write_address;
wire                         write_valid;
wire [31:0]                  write_data;
wire [3:0]                   write_len;
wire [3:0]                   read_len;
wire                         read_valid;
wire [31:0]                  read_data;
wire [31:0]                  src_addr;
wire [31:0]                  dst_addr;
wire [31:0]                  copy_len;
wire                         copy_done;
wire                         copy_active;

newlib_based_allocator #(.HEAP_SIZE(HEAP_SIZE)) allocator(
   .clk(clk), 
   .rst(rst), 
   /* API IO port */
   .allocate_request(allocate_request),                 
   .reallocate_request(reallocate_request),
   .free_request(free_request_o), 
   .free_addr(free_address_o), 
   .allocate_size(allocate_size),
   .heap_start_address(32'h70000000),
   .reallocate_addr_i(reallocate_addr_i), 
   .allocate_addr(allocate_addr), 
   .allocate_finish(allocate_finish),
   
   /* master IO port */
   .read_valid(read_valid),
   .read_data(read_data), 
   .write_valid(write_valid),  
   .read_request(read_request), 
   .write_request(write_request), 
   .read_address(read_address),  
   .write_address(write_address), 
   .write_data(write_data),
   .write_len(write_len),
   .read_len(read_len), 
   .src_addr(src_addr),
   .dst_addr(dst_addr),
   .copy_len(copy_len),
   
   /* others */
   .copy_done(copy_done),    
   .state_idle(state_idle), 
   .state_analysis(state_analysis),       
   .copy_active(copy_active)
);
     
free_circular_buffer c1(
  .clk(clk), 
  .rst(rst), 
  .free_request_i(free_request), 
  .free_address_i(free_addr), 
  .idle(state_idle), 
  .analysis(state_analysis), 
  .free_finish(free_finish), 
  .free_request_o(free_request_o), 
  .free_address_o(free_address_o)
);       

endmodule