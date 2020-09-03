`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/10 13:54:31
// Design Name: 
// Module Name: free_circular_buffer_controller
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


module free_circular_buffer
  (

  input             clk,
  input             rst,
  input             free_request_i,
  input [31:0]      free_address_i,
  input             idle,
  input             analysis,
  
  output reg        free_finish,
  output reg        free_request_o,
  output reg [31:0] free_address_o
    );
	
	

	
wire        we_a,we_b;
wire [31:0] data_iA;
wire [31:0] data_iB;
wire [31:0] data_oA;
wire [31:0] data_oB;
wire        full;
wire        empty;
reg         write_flag;
reg  [1:0]  cnt;
reg  [6:0]  read_ptr;
reg  [6:0]  write_ptr;


assign empty = read_ptr == write_ptr;
assign full = ((read_ptr-1) == write_ptr)||((read_ptr+128-1) == write_ptr); 
assign data_iB = free_address_i;
assign we_b = (!full & free_request_i & !write_flag);
assign we_a = 1'b0;


always @(posedge clk)begin
  if(rst)
    free_finish <= 0;
  else if(!full & free_request_i)
    free_finish <= 1;
  else
    free_finish <= 0;
end


always @(posedge clk)begin
  if(rst)
    write_flag <= 0;
  else if(!full & free_request_i)
    write_flag <= 1;
  else
    write_flag <= 0;
end



always @(posedge clk)begin
  if(rst)
    cnt <= 0;
  else if(we_b)
    cnt <= 0;
  else
    cnt <= (cnt == 2) ? 2 : cnt+1 ;
end



always @(posedge clk)begin
  if(rst)
    read_ptr <= 0;
  else 
    read_ptr <= (analysis) ? read_ptr+1 : read_ptr;
end



always @(posedge clk)begin
  if(rst)
    write_ptr <= 0;
  else if(free_request_i & !write_flag) 
    write_ptr <= (full) ? write_ptr : write_ptr+1;
end



always @(posedge clk)begin
  if(rst)begin
    free_request_o <= 0;
    free_address_o <= 0;
  end
  else if(idle)begin
    free_request_o <= (!empty && cnt==2);
	free_address_o <= data_oA;
  end
  else begin
    free_request_o <= 0;
  end
end



sram_dual_port #(
  .RAM_WIDTH(32),     //sub sector size = 32 bits 
  .RAM_ADDR_BITS(7))  //4 sector and sector size = 32*32 bits, so need 7 bits(index = 2bit, offset = 5bits)
  s1
  (
   .clka(clk),
   .clkb(clk),
   .we_A(we_a),
   .we_B(we_b),
   .en_A(1'b1),
   .en_B(1'b1),
   .addr_A(read_ptr),
   .addr_B(write_ptr),
   .data_iA(32'd0),
   .data_iB(data_iB),
   .data_oA(data_oA),
   .data_oB(data_oB)
  );


endmodule
