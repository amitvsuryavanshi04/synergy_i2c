interface i2c_if();
  logic clk;
  logic rst;
  logic start;
  logic rw;
  logic [6:0] addr;
  logic [7:0] master_data_in;
  logic [7:0] slave_data_in;
  logic more_data;
  logic [7:0] master_data_out;
  logic [7:0] slave_data_out;
  logic ready;
  logic error_flag;
  wire sda;
  wire scl;
  
//   property start_then_ready;
//     @(posedge clk) disable iff (rst)
//     start |=> ##[1:5] ready;
//   endproperty

//   assert property (start_then_ready)
//     else $error("ASSERTION FAILED: 'start' not followed by 'ready' in 5 cycles.");

endinterface

// module i2c_top_design (
//   input clk,
//   input rst,
//   input start,
//   input rw,
//   input [6:0] addr,
//   input [7:0] master_data_in,
//   input more_data,
//   input [7:0] slave_data_in,
  
//   output [7:0] master_data_out,
//   output [7:0] slave_data_out,
//   output ready,
//   output error_flag
// );