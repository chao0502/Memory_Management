
`timescale 1 ns / 1 ps

module mem_allocation #
(
  parameter integer ADDR_WIDTH      = 32, // Width of address bus
  parameter integer CACHE_LINE_SIZE = 256 // Size of a cache line in bits.
)
(
  input                               clk_i,
  input                               rst_i,
  //about malloc
  input                            allocate_request,
  input                            reallocate_request,
  input  [C_M_AXI_DATA_WIDTH-1:0]  reallocate_addr_i,
  input  [C_M_AXI_DATA_WIDTH-1:0]  allocate_size,
  input                            free_request,
  input  [C_M_AXI_DATA_WIDTH-1:0]  free_addr,
  output [C_M_AXI_DATA_WIDTH-1:0]  allocate_addr,
  output [2:0]                     allocate_finish,
  output  free_finish,
  //connect with atomic_unit
  input                            atomic_strobe_i,
  input  [ADDR_WIDTH-1: 0]         atomic_addr_i,
  input                            atomic_rw_i,
  input  [CACHE_LINE_SIZE-1: 0]    atomic_data_i,
  output                           atomic_done_o,
  output [CACHE_LINE_SIZE-1: 0]    atomic_data_o,
  //about chunk
  output                           M_DMEM_strobe,
  output [ADDR_WIDTH-1: 0]         M_DMEM_addr,
  output                           M_DMEM_rw, // 1: write , 0: read
  output [CACHE_LINE_SIZE-1: 0]    M_DMEM_dataout,
  input                            M_DMEM_done,
  input  [CACHE_LINE_SIZE-1: 0]    M_DMEM_datain
);

wire free_request_o;
wire [31:0]free_address_o;

wire read_request;
reg  read_request_reg;
wire [31:0]read_address;
reg  [31:0]read_address_reg;
wire [3:0] read_len;
wire write_request;
reg  write_request_reg;
wire [31:0]write_address;
reg  [31:0]write_address_reg;
wire [31:0]write_data;
wire [3:0] write_len;

wire state_idle;
wire state_analysis;
wire copy_done;

wire [31:0] src_addr;
wire [31:0] dst_addr;
wire [31:0] copy_len;
reg  [31:0] copy_len_r;
wire copy_active;
reg copy_active_reg;
reg copy_flag;

reg [1:0] mst_exec_state;
reg      init_txn_ff;
reg      init_txn_ff2;
wire     init_txn_pulse;
wire [5+2:0]     burst_size_bytes;
reg  [5:0]my_burst_len;

localparam [1:0]
            IDLE = 2'b00, // This state initiates AXI4 transaction
                // after the state machine changes state to INIT_READ
                // when there is 0 to 1 transition on INIT_AXI_TXN
            INIT_READ  = 2'b01, // This state initializes read transaction
                    // once reads are done, the state machine
                    // changes state to INIT_WRITE
            INIT_WRITE = 2'b10, // This state initializes write transaction,
                // once writes are done, the state machine
                // changes state to DONE
            DONE  = 2'b11; // This state issues the status of comparison
                // of the written data with the read data
  
  
assign copy_done = (mst_exec_state == DONE & copy_len_r == 0 & copy_flag);
assign burst_size_bytes    = my_burst_len * 4;//C_M_AXI_DATA_WIDTH/8;
assign init_txn_pulse    = (!init_txn_ff2) && init_txn_ff;
parameter    HEAP_SIZE          = 32'h02000000;// 32MB
parameter    HEAP_START_ADDRESS = 32'h90000000;

always@ (posedge clk_i) begin
if(rst_i == 0) begin
  read_address_reg <= 0;
  read_request_reg <= 0;
  write_address_reg <= 0;
  write_request_reg <= 0;
  copy_active_reg <= 0;
end
else begin
  read_address_reg <= (read_request) ? read_address : read_address_reg;    
  read_request_reg <= (read_request) ? 1'b1 : (init_txn_pulse) ? 1'b0 : read_request_reg;
  write_address_reg <= (write_request) ? write_address : write_address_reg;
  write_request_reg <= (write_request) ? 1'b1 : (init_txn_pulse) ? 1'b0 : write_request_reg;        
  copy_active_reg <= (copy_active) ? 1'b1 : (init_txn_pulse) ? 1'b0 : copy_active_reg;        
end
end

always @(posedge clk_i) begin
  // Initiates AXI transaction delay
  if(rst_i == 0) begin
    init_txn_ff <= 1'b0;
    init_txn_ff2 <= 1'b0;
  end
  else if(mst_exec_state == IDLE) begin
    init_txn_ff <= (read_request_reg | write_request_reg | copy_active_reg);
    init_txn_ff2 <= init_txn_ff;
  end
  else if(mst_exec_state == DONE) begin
    init_txn_ff  <= 0;
    init_txn_ff2 <= 0;
  end
end

 always @(posedge clk_i)begin
  if(rst_i == 0)
    copy_flag <= 0;    
  else if(mst_exec_state == DONE & copy_len_r == 0)
    copy_flag <= 0;    
  else    
    copy_flag <= (init_txn_pulse & copy_active_reg) ? 1'b1 : copy_flag;
end

always @(posedge clk_i)begin
  if(rst_i == 0)
    copy_len_r <= 0;    
  else if(copy_active)
    copy_len_r <= copy_len;    
  else if(mst_exec_state == INIT_READ & reads_done)
    copy_len_r <= copy_len_r - burst_size_bytes;
end

always @(posedge clk_i) begin
  if(rst_i == 0)
      my_burst_len <= 16;        
  else if(mst_exec_state == IDLE) begin
    if(read_request_reg)
      my_burst_len <= read_len;
    else if(write_request_reg)
      my_burst_len <= write_len;
    else if(copy_active_reg)
      my_burst_len <= (copy_len >= 64) ? 16 : copy_len>>2;
  end
  else if(mst_exec_state == DONE) 
      my_burst_len <= (copy_len_r >= 64) ? 16 : copy_len_r>>2;    
end

always @(posedge M_AXI_ACLK) begin
  if (rst_i == 0 || init_txn_pulse == 1'b1)
    writes_done <= 1'b0;
  //The writes_done should be associated with a bready response
  //else if (M_AXI_BVALID && axi_bready && (write_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_wlast)
  else if (M_AXI_BVALID && axi_bready && (write_index == my_burst_len-1))
    writes_done <= 1'b1;
  else if(mst_exec_state == DONE)
      writes_done <= 1'b0;
  else
    writes_done <= writes_done;
end

always @(posedge M_AXI_ACLK) begin
  if (rst_i == 0 || init_txn_pulse == 1'b1)
    reads_done <= 1'b0;
  //The reads_done should be associated with a rready response
  //else if (M_AXI_BVALID && axi_bready && (write_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_wlast)
  else if (M_AXI_RVALID && axi_rready && (read_index == my_burst_len-1))
    reads_done <= 1'b1;
  else if(mst_exec_state == INIT_WRITE)
      reads_done <= 1'b0;
  else if(mst_exec_state == DONE)
      reads_done <= 1'b0;
  else
    reads_done <= reads_done;
end

always@(posedge clk_i) begin
  if(rst_i == 1'b0) begin
      // reset condition
      // All the signals are assigned default values under reset condition
      mst_exec_state      <= IDLE;
  end
  else begin
    case(mst_exec_state)
      IDLE:
        // Wait until the signal INIT_AXI_TXN becomes active.
        if( init_txn_pulse == 1'b1) begin
          if(read_request_reg | copy_active_reg)
            mst_exec_state  <= INIT_READ;
          else if(write_request_reg)
            mst_exec_state  <= INIT_WRITE;
        end
        else begin
            mst_exec_state  <= IDLE;
        end
      INIT_READ:
        // This state is responsible to issue start_single_read pulse to
        // initiate a read transaction. Read transactions will be
        // issued until burst_read_active signal is asserted.
        // read controller
        if(reads_done)
            mst_exec_state <= (copy_flag) ? INIT_WRITE : DONE;
        else
            mst_exec_state  <= INIT_READ;
      INIT_WRITE:
        // This state is responsible to issue start_single_write pulse to
        // initiate a write transaction. Write transactions will be
        // issued until burst_write_active signal is asserted.
        // write controller
        if(writes_done)
          begin
            mst_exec_state <= DONE;//
          end
        else
          begin
            mst_exec_state  <= INIT_WRITE;
          end
      DONE:
        // This state is responsible to issue the state of comparison
        // of written data with the read data. If no error flags are set,
        // compare_done signal will be asseted to indicate success.
        //if (~error_reg) 
        if(copy_flag)begin
          if(copy_len_r == 0)
            mst_exec_state <= IDLE;
          else begin
            mst_exec_state <= INIT_READ;                    
          end
        end
        else
          mst_exec_state <= IDLE;
      default :
        begin
          mst_exec_state  <= IDLE;
        end
    endcase
  end
end //MASTER_EXECUTION_PROC
        
newlib_based_allocator#(.HEAP_SIZE(HEAP_SIZE)) allocator 
(
  .clk(clk_i), 
  .rst(rst_i), 
  
  /* API IO port */
  .heap_start_address(HEAP_START_ADDRESS),
  .allocate_request(allocate_request),                 
  .reallocate_request(reallocate_request),
  .reallocate_addr_i(reallocate_addr_i), 
  .allocate_size(allocate_size),
  .free_request(free_request_o), 
  .free_addr(free_address_o), 
  .allocate_addr(allocate_addr), 
  .allocate_finish(allocate_finish),
  
  /* master IO port */
  .read_request(read_request), 
  .read_address(read_address),  
  .write_request(write_request), 
  .write_address(write_address), 
  .write_valid(wnext&!copy_flag), // wnext, copy_flag 不知道怎ㄇ處理 
  .write_data(write_data),
  .write_len(write_len),
  .read_len(read_len),
  .read_valid(rnext&!copy_flag), // rnext, copy_flag 不知道怎ㄇ處理
  .read_data(read_data),  
  .src_addr(src_addr), // copy 的 src & dst
  .dst_addr(dst_addr),
  .copy_len(copy_len),
  
  /* others */
  .state_idle(state_idle), 
  .state_analysis(state_analysis),
  .copy_done(copy_done),           
  .copy_active(copy_active)
);
     
free_circular_buffer c1 
(
  .clk(clk_i), 
  .rst(rst_i), 
  .free_request_i(free_request), 
  .free_address_i(free_addr), 
  .idle(state_idle), 
  .analysis(state_analysis), 
  .free_finish(free_finish), 
  .free_request_o(free_request_o), 
  .free_address_o(free_address_o)
);            
        
        
// User logic ends

endmodule