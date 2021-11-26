// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Nov 25 21:02:42 2021
// Host        : Stevensayhello-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Steven
//               Su/Desktop/Capstone_Alinx_MEM_FIFO_TEST/DDR_TEST/DDR_TEST.srcs/sources_1/ip/ila_3/ila_3_stub.v}
// Design      : ila_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2018.3" *)
module ila_3(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[31:0],probe2[31:0],probe3[63:0],probe4[0:0],probe5[31:0],probe6[31:0],probe7[63:0],probe8[3:0],probe9[0:0],probe10[0:0]" */;
  input clk;
  input [0:0]probe0;
  input [31:0]probe1;
  input [31:0]probe2;
  input [63:0]probe3;
  input [0:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
  input [63:0]probe7;
  input [3:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
endmodule
