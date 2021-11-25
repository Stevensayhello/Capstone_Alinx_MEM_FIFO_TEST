`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/08/23 14:08:19
// Design Name: 
// Module Name: top
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

module top(
    input         sys_clk_p,
    input         sys_clk_n,
    input 				key1,
    output                             c0_ddr4_act_n   ,
	output [16:0]                      c0_ddr4_adr     ,
	output [1:0]                       c0_ddr4_ba      ,
	output [0:0]                       c0_ddr4_bg      ,
	output [0:0]                       c0_ddr4_cke     ,
	output [0:0]                       c0_ddr4_odt     ,
	output [0:0]                       c0_ddr4_cs_n    ,
	output [0:0]                       c0_ddr4_ck_t    ,
	output [0:0]                       c0_ddr4_ck_c    ,
	output                             c0_ddr4_reset_n ,
	inout [7:0]                        c0_ddr4_dm_dbi_n,
	inout [63:0]                       c0_ddr4_dq      ,
	inout [7:0]                        c0_ddr4_dqs_c   ,
	inout [7:0]                        c0_ddr4_dqs_t  

    );

    wire		sys_clk_buf ;

    IBUFDS #(
   .DIFF_TERM("FALSE"),       // Differential Termination
   .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
   .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
) IBUFDS_inst (
   .O(sys_clk_buf),  // Buffer output
   .I(sys_clk_p),  // Diff_p buffer input (connect directly to top-level port)
   .IB(sys_clk_n) // Diff_n buffer input (connect directly to top-level port)
);
  BUFG BUFG_inst (
      .O(sys_clk), // 1-bit output: Clock output
      .I(sys_clk_buf)  // 1-bit input: Clock input
   );


(* IODELAY_GROUP = "delay_group" *)
IDELAYCTRL #(
   .SIM_DEVICE("ULTRASCALE")  // Must be set to "ULTRASCALE" 
)
IDELAYCTRL_inst (
   .RDY(),       // 1-bit output: Ready output
   .REFCLK(sys_clk), // 1-bit input: Reference clock input
   .RST(~key1)        // 1-bit input: Active high reset input. Asynchronous assert, synchronous deassert to
                    // REFCLK.
); 


ddr4_top ddr4_test_inst
(
	.c0_ddr4_act_n            (c0_ddr4_act_n   ),
	.c0_ddr4_adr              (c0_ddr4_adr     ),
	.c0_ddr4_ba               (c0_ddr4_ba      ),
	.c0_ddr4_bg               (c0_ddr4_bg      ),
	.c0_ddr4_cke              (c0_ddr4_cke     ),
	.c0_ddr4_odt              (c0_ddr4_odt     ),
	.c0_ddr4_cs_n             (c0_ddr4_cs_n    ),
	.c0_ddr4_ck_t             (c0_ddr4_ck_t    ),
	.c0_ddr4_ck_c             (c0_ddr4_ck_c    ),
	.c0_ddr4_reset_n          (c0_ddr4_reset_n ),
	.c0_ddr4_dm_dbi_n         (c0_ddr4_dm_dbi_n),
	.c0_ddr4_dq               (c0_ddr4_dq      ),
	.c0_ddr4_dqs_c            (c0_ddr4_dqs_c   ),
	.c0_ddr4_dqs_t            (c0_ddr4_dqs_t   ),

	.sys_clk       	  		  (sys_clk),
	.error	       	  		  (ddr4_error),
	.c0_init_calib_complete	       	  		  (c0_init_calib_complete),
	.sys_rst	          	  (~key1	  	 )
   );

fifo_test fifo_test_inst
(
	.sys_clk_p(sys_clk_p),
	.sys_clk_n(sys_clk_n),
	.rst_n(1),
	.clk(sys_clk)
);

endmodule

module ddr4_top(  
	output                             c0_ddr4_act_n   ,
	output [16:0]                      c0_ddr4_adr     ,
	output [1:0]                       c0_ddr4_ba      ,
	output [0:0]                       c0_ddr4_bg      ,
	output [0:0]                       c0_ddr4_cke     ,
	output [0:0]                       c0_ddr4_odt     ,
	output [0:0]                       c0_ddr4_cs_n    ,
	output [0:0]                       c0_ddr4_ck_t    ,
	output [0:0]                       c0_ddr4_ck_c    ,
	output                             c0_ddr4_reset_n ,
	inout [7:0]                        c0_ddr4_dm_dbi_n,
	inout [63:0]                       c0_ddr4_dq      ,
	inout [7:0]                        c0_ddr4_dqs_c   ,
	inout [7:0]                        c0_ddr4_dqs_t   ,               
	
	//Differential system clocks
	input         sys_clk,
	//input         sys_clk_n,

	(* MARK_DEBUG="true" *)output                       	error,
	(* MARK_DEBUG="true" *)output                       	c0_init_calib_complete,
	input                              sys_rst
   );

localparam AXI_ADDR_WIDTH = 32 ;

reg 								c0_ddr4_aresetn;	
wire 								c0_ddr4_rst;	
wire 								c0_ddr4_clk;
// Slave Interface Write Address Ports
wire [3:0]      				   	c0_ddr4_s_axi_awid;
wire [AXI_ADDR_WIDTH-1:0]     				   	c0_ddr4_s_axi_awaddr;
wire [7:0]                       	c0_ddr4_s_axi_awlen;
wire [2:0]                       	c0_ddr4_s_axi_awsize;
wire [1:0]                       	c0_ddr4_s_axi_awburst;
wire                        		c0_ddr4_s_axi_awlock;
wire [3:0]                       	c0_ddr4_s_axi_awcache;
wire [2:0]                       	c0_ddr4_s_axi_awprot;
wire [3:0]                       	c0_ddr4_s_axi_awqos;
wire [0:0]                       	c0_ddr4_s_axi_awuser;
wire                             	c0_ddr4_s_axi_awvalid;
wire                             	c0_ddr4_s_axi_awready;
 // Slave Interface Write Data Ports
wire [63:0]    						c0_ddr4_s_axi_wdata;
wire [7:0]  	 					c0_ddr4_s_axi_wstrb;
wire                             	c0_ddr4_s_axi_wlast;
wire [0:0]                          c0_ddr4_s_axi_wuser;
wire                             	c0_ddr4_s_axi_wvalid;
wire                             	c0_ddr4_s_axi_wready;
 // Slave Interface Write Response Ports
wire                             	c0_ddr4_s_axi_bready;
wire [3:0]      					c0_ddr4_s_axi_bid;
wire [1:0]                       	c0_ddr4_s_axi_bresp;
wire [0:0]                          c0_ddr4_s_axi_buser;
wire                             	c0_ddr4_s_axi_bvalid;
 // Slave Interface Read Address Ports
wire [3:0]      					c0_ddr4_s_axi_arid;
wire [AXI_ADDR_WIDTH-1:0]    						c0_ddr4_s_axi_araddr;
wire [7:0]                       	c0_ddr4_s_axi_arlen;
wire [2:0]                       	c0_ddr4_s_axi_arsize;
wire [1:0]                       	c0_ddr4_s_axi_arburst;
wire [1:0]                       	c0_ddr4_s_axi_arlock;
wire [3:0]                       	c0_ddr4_s_axi_arcache;
wire [2:0]                       	c0_ddr4_s_axi_arprot;
wire [3:0]                       	c0_ddr4_s_axi_arqos;
wire [0:0]                       	c0_ddr4_s_axi_aruser;
wire                             	c0_ddr4_s_axi_arvalid;
wire                             	c0_ddr4_s_axi_arready;
 // Slave Interface Read Data Ports

wire [3:0]      					c0_ddr4_s_axi_rid;
wire [63:0]    						c0_ddr4_s_axi_rdata;
wire [1:0]                       	c0_ddr4_s_axi_rresp;
wire                             	c0_ddr4_s_axi_rlast;
wire [0:0]                          c0_ddr4_s_axi_ruser;
wire                             	c0_ddr4_s_axi_rvalid;
wire                             	c0_ddr4_s_axi_rready;
wire                                sys_clk_buf;

(*mark_debug="true"*)wire wr_burst_data_req;
(*mark_debug="true"*)wire wr_burst_finish;
(*mark_debug="true"*)wire rd_burst_finish;
(*mark_debug="true"*)wire rd_burst_req;
(*mark_debug="true"*)wire wr_burst_req;
(*mark_debug="true"*)wire[9:0] rd_burst_len;
(*mark_debug="true"*)wire[9:0] wr_burst_len;
(*mark_debug="true"*)wire[31:0] rd_burst_addr;
(*mark_debug="true"*)wire[31:0] wr_burst_addr;
(*mark_debug="true"*)wire rd_burst_data_valid;
(*mark_debug="true"*)wire[63 : 0] rd_burst_data;
(*mark_debug="true"*)wire[63 : 0] wr_burst_data;

//(* MARK_DEBUG="true" *)wire [63 : 0]							   error_cnt;
//(* MARK_DEBUG="true" *)wire							   c0_init_calib_complete;

// wire	sys_clk ;

// IBUFDS #(
   // .DIFF_TERM("FALSE"),       // Differential Termination
   // .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
   // .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
// ) IBUFDS_inst (
   // .O(sys_clk),  // Buffer output
   // .I(sys_clk_p),  // Diff_p buffer input (connect directly to top-level port)
   // .IB(sys_clk_n) // Diff_n buffer input (connect directly to top-level port)
// );

//BUFDS #(
//  .DIFF_TERM("FALSE"),       // Differential Termination
//  .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
//  .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
// IBUFDS_inst (
//  .O(sys_clk_buf),  // Buffer output
//  .I(sys_clk_p),  // Diff_p buffer input (connect directly to top-level port)
//  .IB(sys_clk_n) // Diff_n buffer input (connect directly to top-level port)
//;
//
//  BUFG BUFG_inst (
//     .O(sys_clk), // 1-bit output: Clock output
//     .I(sys_clk_buf)  // 1-bit input: Clock input
//  );


mem_test
#(
	.MEM_DATA_BITS(64),
	.ADDR_BITS(AXI_ADDR_WIDTH-3)
)
mem_test_m0
(
	.rst						(~c0_ddr4_aresetn),                                 
	.mem_clk					(c0_ddr4_clk),                             
	.rd_burst_req				(rd_burst_req),               
	.wr_burst_req				(wr_burst_req),               
	.rd_burst_len				(rd_burst_len),               
	.wr_burst_len				(wr_burst_len),               
	.rd_burst_addr				(rd_burst_addr),        
	.wr_burst_addr				(wr_burst_addr),        
	.rd_burst_data_valid		(rd_burst_data_valid),  
	.wr_burst_data_req			(wr_burst_data_req),  
	.rd_burst_data				(rd_burst_data),  
	.wr_burst_data				(wr_burst_data),    
	.rd_burst_finish			(rd_burst_finish),   
	.wr_burst_finish			(wr_burst_finish),

	//.error_cnt						(error_cnt),
	.error						(error)
); 
aq_axi_master
#(
	.AXI_ADDR_WIDTH(AXI_ADDR_WIDTH)
)
u_aq_axi_master
(
	.ARESETN					(c0_ddr4_aresetn),
	.ACLK						(c0_ddr4_clk),
	
	.M_AXI_AWID                 (c0_ddr4_s_axi_awid            ),
	.M_AXI_AWADDR               (c0_ddr4_s_axi_awaddr          ),
	.M_AXI_AWLEN                (c0_ddr4_s_axi_awlen           ),
	.M_AXI_AWSIZE               (c0_ddr4_s_axi_awsize          ),
	.M_AXI_AWBURST              (c0_ddr4_s_axi_awburst         ),
	.M_AXI_AWLOCK               (c0_ddr4_s_axi_awlock          ),
	.M_AXI_AWCACHE              (c0_ddr4_s_axi_awcache         ),
	.M_AXI_AWPROT               (c0_ddr4_s_axi_awprot          ),
	.M_AXI_AWQOS                (c0_ddr4_s_axi_awqos           ),
	.M_AXI_AWUSER               (c0_ddr4_s_axi_awuser          ),
	.M_AXI_AWVALID              (c0_ddr4_s_axi_awvalid         ),
	.M_AXI_AWREADY              (c0_ddr4_s_axi_awready         ),
	.M_AXI_WDATA                (c0_ddr4_s_axi_wdata           ),
	.M_AXI_WSTRB                (c0_ddr4_s_axi_wstrb           ),
	.M_AXI_WLAST                (c0_ddr4_s_axi_wlast           ),
	.M_AXI_WUSER                (c0_ddr4_s_axi_wuser           ),
	.M_AXI_WVALID               (c0_ddr4_s_axi_wvalid          ),
	.M_AXI_WREADY               (c0_ddr4_s_axi_wready          ),
	.M_AXI_BID                  (c0_ddr4_s_axi_bid             ),
	.M_AXI_BRESP                (c0_ddr4_s_axi_bresp           ),
	.M_AXI_BUSER                (c0_ddr4_s_axi_buser           ),
	.M_AXI_BVALID               (c0_ddr4_s_axi_bvalid          ),
	.M_AXI_BREADY               (c0_ddr4_s_axi_bready          ),
	.M_AXI_ARID                 (c0_ddr4_s_axi_arid            ),
	.M_AXI_ARADDR               (c0_ddr4_s_axi_araddr          ),
	.M_AXI_ARLEN                (c0_ddr4_s_axi_arlen           ),
	.M_AXI_ARSIZE               (c0_ddr4_s_axi_arsize          ),
	.M_AXI_ARBURST              (c0_ddr4_s_axi_arburst         ),
	.M_AXI_ARLOCK               (c0_ddr4_s_axi_arlock          ),
	.M_AXI_ARCACHE              (c0_ddr4_s_axi_arcache         ),
	.M_AXI_ARPROT               (c0_ddr4_s_axi_arprot          ),
	.M_AXI_ARQOS                (c0_ddr4_s_axi_arqos           ),
	.M_AXI_ARUSER               (c0_ddr4_s_axi_aruser          ),
	.M_AXI_ARVALID              (c0_ddr4_s_axi_arvalid         ),
	.M_AXI_ARREADY              (c0_ddr4_s_axi_arready         ),
	.M_AXI_RID                  (c0_ddr4_s_axi_rid             ),
	.M_AXI_RDATA                (c0_ddr4_s_axi_rdata           ),
	.M_AXI_RRESP                (c0_ddr4_s_axi_rresp           ),
	.M_AXI_RLAST                (c0_ddr4_s_axi_rlast           ),
	.M_AXI_RUSER                (c0_ddr4_s_axi_ruser           ),
	.M_AXI_RVALID               (c0_ddr4_s_axi_rvalid          ),
	.M_AXI_RREADY               (c0_ddr4_s_axi_rready          ),
	
	.MASTER_RST					(1'b0),
	
	.WR_START					(wr_burst_req),
	.WR_ADRS					({wr_burst_addr[29:0],3'd0}),
	.WR_LEN						({wr_burst_len,3'd0}), 
	.WR_READY					(),
	.WR_FIFO_RE					(wr_burst_data_req),
	.WR_FIFO_EMPTY				(1'b0),
	.WR_FIFO_AEMPTY				(1'b0),
	.WR_FIFO_DATA				(wr_burst_data),
	.WR_DONE					(wr_burst_finish),
	
	.RD_START					(rd_burst_req),
	.RD_ADRS					({rd_burst_addr[29:0],3'd0}),
	.RD_LEN						({rd_burst_len,3'd0}), 
	.RD_READY					(),
	.RD_FIFO_WE					(rd_burst_data_valid),
	.RD_FIFO_FULL				(1'b0),
	.RD_FIFO_AFULL				(1'b0),
	.RD_FIFO_DATA				(rd_burst_data),
	.RD_DONE					(rd_burst_finish),
	.DEBUG()                                         
);

	

//(* IODELAY_GROUP = "delay_group" *)
//IDELAYCTRL #(
//   .SIM_DEVICE("ULTRASCALE")  // Must be set to "ULTRASCALE" 
//)
//IDELAYCTRL_inst (
//   .RDY(),       // 1-bit output: Ready output
//   .REFCLK(sys_clk), // 1-bit input: Reference clock input
//   .RST(~key1)        // 1-bit input: Active high reset input. Asynchronous assert, synchronous deassert to
//                    // REFCLK.
//); 
//
ddr4_0 your_instance_name (
  .c0_init_calib_complete(c0_init_calib_complete),    // output wire c0_init_calib_complete
  .dbg_clk(),                                  // output wire dbg_clk
  .c0_sys_clk_i(sys_clk),                        // input wire c0_sys_clk_i
  .dbg_bus(),                                  // output wire [511 : 0] dbg_bus
  .c0_ddr4_adr(c0_ddr4_adr),                          // output wire [16 : 0] c0_ddr4_adr
  .c0_ddr4_ba(c0_ddr4_ba),                            // output wire [1 : 0] c0_ddr4_ba
  .c0_ddr4_cke(c0_ddr4_cke),                          // output wire [0 : 0] c0_ddr4_cke
  .c0_ddr4_cs_n(c0_ddr4_cs_n),                        // output wire [0 : 0] c0_ddr4_cs_n
  .c0_ddr4_dm_dbi_n(c0_ddr4_dm_dbi_n),                // inout wire [7 : 0] c0_ddr4_dm_dbi_n
  .c0_ddr4_dq(c0_ddr4_dq),                            // inout wire [63 : 0] c0_ddr4_dq
  .c0_ddr4_dqs_c(c0_ddr4_dqs_c),                      // inout wire [7 : 0] c0_ddr4_dqs_c
  .c0_ddr4_dqs_t(c0_ddr4_dqs_t),                      // inout wire [7 : 0] c0_ddr4_dqs_t
  .c0_ddr4_odt(c0_ddr4_odt),                          // output wire [0 : 0] c0_ddr4_odt
  .c0_ddr4_bg(c0_ddr4_bg),                            // output wire [0 : 0] c0_ddr4_bg
  .c0_ddr4_reset_n(c0_ddr4_reset_n),                  // output wire c0_ddr4_reset_n
  .c0_ddr4_act_n(c0_ddr4_act_n),                      // output wire c0_ddr4_act_n
  .c0_ddr4_ck_c(c0_ddr4_ck_c),                        // output wire [0 : 0] c0_ddr4_ck_c
  .c0_ddr4_ck_t(c0_ddr4_ck_t),                        // output wire [0 : 0] c0_ddr4_ck_t
  .c0_ddr4_ui_clk(c0_ddr4_clk),                    // output wire c0_ddr4_ui_clk
  .c0_ddr4_ui_clk_sync_rst(c0_ddr4_rst),  // output wire c0_ddr4_ui_clk_sync_rst
  .c0_ddr4_aresetn(c0_ddr4_aresetn),                  // input wire c0_ddr4_aresetn
  .c0_ddr4_s_axi_awid(c0_ddr4_s_axi_awid),            // input wire [3 : 0] c0_ddr4_s_axi_awid
  .c0_ddr4_s_axi_awaddr(c0_ddr4_s_axi_awaddr),        // input wire [31 : 0] c0_ddr4_s_axi_awaddr
  .c0_ddr4_s_axi_awlen(c0_ddr4_s_axi_awlen),          // input wire [7 : 0] c0_ddr4_s_axi_awlen
  .c0_ddr4_s_axi_awsize(c0_ddr4_s_axi_awsize),        // input wire [2 : 0] c0_ddr4_s_axi_awsize
  .c0_ddr4_s_axi_awburst(c0_ddr4_s_axi_awburst),      // input wire [1 : 0] c0_ddr4_s_axi_awburst
  .c0_ddr4_s_axi_awlock(c0_ddr4_s_axi_awlock),        // input wire [0 : 0] c0_ddr4_s_axi_awlock
  .c0_ddr4_s_axi_awcache(c0_ddr4_s_axi_awcache),      // input wire [3 : 0] c0_ddr4_s_axi_awcache
  .c0_ddr4_s_axi_awprot(c0_ddr4_s_axi_awprot),        // input wire [2 : 0] c0_ddr4_s_axi_awprot
  .c0_ddr4_s_axi_awqos(c0_ddr4_s_axi_awqos),          // input wire [3 : 0] c0_ddr4_s_axi_awqos
  .c0_ddr4_s_axi_awvalid(c0_ddr4_s_axi_awvalid),      // input wire c0_ddr4_s_axi_awvalid
  .c0_ddr4_s_axi_awready(c0_ddr4_s_axi_awready),      // output wire c0_ddr4_s_axi_awready
  .c0_ddr4_s_axi_wdata(c0_ddr4_s_axi_wdata),          // input wire [63 : 0] c0_ddr4_s_axi_wdata
  .c0_ddr4_s_axi_wstrb(c0_ddr4_s_axi_wstrb),          // input wire [7 : 0] c0_ddr4_s_axi_wstrb
  .c0_ddr4_s_axi_wlast(c0_ddr4_s_axi_wlast),          // input wire c0_ddr4_s_axi_wlast
  .c0_ddr4_s_axi_wvalid(c0_ddr4_s_axi_wvalid),        // input wire c0_ddr4_s_axi_wvalid
  .c0_ddr4_s_axi_wready(c0_ddr4_s_axi_wready),        // output wire c0_ddr4_s_axi_wready
  .c0_ddr4_s_axi_bready(c0_ddr4_s_axi_bready),        // input wire c0_ddr4_s_axi_bready
  .c0_ddr4_s_axi_bid(c0_ddr4_s_axi_bid),              // output wire [3 : 0] c0_ddr4_s_axi_bid
  .c0_ddr4_s_axi_bresp(c0_ddr4_s_axi_bresp),          // output wire [1 : 0] c0_ddr4_s_axi_bresp
  .c0_ddr4_s_axi_bvalid(c0_ddr4_s_axi_bvalid),        // output wire c0_ddr4_s_axi_bvalid
  .c0_ddr4_s_axi_arid(c0_ddr4_s_axi_arid),            // input wire [3 : 0] c0_ddr4_s_axi_arid
  .c0_ddr4_s_axi_araddr(c0_ddr4_s_axi_araddr),        // input wire [31 : 0] c0_ddr4_s_axi_araddr
  .c0_ddr4_s_axi_arlen(c0_ddr4_s_axi_arlen),          // input wire [7 : 0] c0_ddr4_s_axi_arlen
  .c0_ddr4_s_axi_arsize(c0_ddr4_s_axi_arsize),        // input wire [2 : 0] c0_ddr4_s_axi_arsize
  .c0_ddr4_s_axi_arburst(c0_ddr4_s_axi_arburst),      // input wire [1 : 0] c0_ddr4_s_axi_arburst
  .c0_ddr4_s_axi_arlock(c0_ddr4_s_axi_arlock),        // input wire [0 : 0] c0_ddr4_s_axi_arlock
  .c0_ddr4_s_axi_arcache(c0_ddr4_s_axi_arcache),      // input wire [3 : 0] c0_ddr4_s_axi_arcache
  .c0_ddr4_s_axi_arprot(c0_ddr4_s_axi_arprot),        // input wire [2 : 0] c0_ddr4_s_axi_arprot
  .c0_ddr4_s_axi_arqos(c0_ddr4_s_axi_arqos),          // input wire [3 : 0] c0_ddr4_s_axi_arqos
  .c0_ddr4_s_axi_arvalid(c0_ddr4_s_axi_arvalid),      // input wire c0_ddr4_s_axi_arvalid
  .c0_ddr4_s_axi_arready(c0_ddr4_s_axi_arready),      // output wire c0_ddr4_s_axi_arready
  .c0_ddr4_s_axi_rready(c0_ddr4_s_axi_rready),        // input wire c0_ddr4_s_axi_rready
  .c0_ddr4_s_axi_rlast(c0_ddr4_s_axi_rlast),          // output wire c0_ddr4_s_axi_rlast
  .c0_ddr4_s_axi_rvalid(c0_ddr4_s_axi_rvalid),        // output wire c0_ddr4_s_axi_rvalid
  .c0_ddr4_s_axi_rresp(c0_ddr4_s_axi_rresp),          // output wire [1 : 0] c0_ddr4_s_axi_rresp
  .c0_ddr4_s_axi_rid(c0_ddr4_s_axi_rid),              // output wire [3 : 0] c0_ddr4_s_axi_rid
  .c0_ddr4_s_axi_rdata(c0_ddr4_s_axi_rdata),          // output wire [63 : 0] c0_ddr4_s_axi_rdata
  .sys_rst(sys_rst)                                  // input wire sys_rst
);


                                            


 always @(posedge c0_ddr4_clk) begin
   c0_ddr4_aresetn <= ~c0_ddr4_rst;
 end
   
endmodule