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
    input stall_i,
    input allocate_request,
    input reallocate_request,
    input [31:0] reallocate_addr,
    input [31:0] allocate_size,
    input free_request,
    input [31:0] free_addr,
    output [31:0] allocate_addr,
    output allocate_finish,
    output free_finish,

    output dmm_unit_strobe,
    output [31:0] dmm_unit_addr,
    output dmm_unit_rw, //write is 1
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

//about malloc ip communicate with free_buffer
wire                         state_idle;
wire                         state_analysis;
wire                         free_request_o;
wire [31:0]                  free_address_o;

//about dmm communicate with axi bus
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
wire                         port_request;
wire                         state_allocate;//decide which ip can use axi
reg  [31:0]                  dmm_addr;
reg  [255:0]                 dmm_dataout;
reg                          dmm_rw;
reg  [7:0]                   dmm_size;
reg  [3:0]                   read_cnt;
reg  [3:0]                   write_cnt;

//about realloc 
wire [31:0]                  src_addr;
wire [31:0]                  dst_addr;
wire [31:0]                  copy_len;
wire                         copy_done;
wire                         copy_active;

assign port_request = read_request | write_request;
assign write_valid = state_allocate ? dmm_unit_done : 0;
assign read_valid = state_allocate ? dmm_unit_done : 0;
assign read_data = state_allocate ? dmm_unit_datain[255-32*read_cnt-:32] : 0;

//output signals
assign dmm_unit_strobe = state_allocate ? port_request : atomic_unit_strobe_i;
assign dmm_unit_addr = state_allocate ? dmm_addr : atomic_unit_addr_i;
assign dmm_unit_dataout = state_allocate ? dmm_dataout : atomic_unit_data_i; 
assign dmm_unit_rw = state_allocate ? dmm_rw : atomic_unit_rw_i;
assign dmm_unit_size = state_allocate ? dmm_size : 8;
assign atomic_unit_done_o = dmm_unit_done;
assign atomic_unit_data_o = dmm_unit_datain;

always @(*) begin
  dmm_addr = read_request ? read_address : write_request ? write_address : 0;
  dmm_rw = read_request ? 0 : write_request ? 1 : 0;
  dmm_size = read_request ? read_len : write_request ? write_len : dmm_size;
  
  if(write_request) begin
    if(write_cnt == 0)
      dmm_dataout[255:224] = write_data;
    else if(write_cnt == 1)
      dmm_dataout[223:192] = write_data;
    else if(write_cnt == 2)
      dmm_dataout[191:160] = write_data;
    else if(write_cnt == 3)
      dmm_dataout[159:128] = write_data;
  end
  else
    dmm_dataout = 0;
end

always @(posedge clk) begin
  if(read_request)
    if(read_valid)
      read_cnt <= read_cnt + 1;
    else
      read_cnt <= read_cnt;
  else
    read_cnt <= 0;
end

always @(posedge clk) begin
  if(write_request)
    if(write_valid)
      write_cnt <= write_cnt + 1;
    else
      write_cnt <= write_cnt;
  else
    write_cnt <= 0;
end

newlib_based_allocator #(.HEAP_SIZE(HEAP_SIZE)) allocator(
   .clk(clk), 
   .rst(rst), 
   .stall_i(stall_i),
   /* API IO port */
   .allocate_request(allocate_request),                 
   .reallocate_request(reallocate_request),
   .free_request(free_request_o), 
   .free_addr(free_address_o), 
   .allocate_size(allocate_size),
   .heap_start_address(32'h90110004),
   .reallocate_addr_i(reallocate_addr), 
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
   .copy_active(copy_active),
   .state_allocate(state_allocate)
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