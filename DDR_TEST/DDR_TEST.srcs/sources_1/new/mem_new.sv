module mem_new
#(
    parameter MEM_DATA_BITS         = 64,
    parameter ADDR_BITS             = 32,
    parameter LENGTH                = 32
)
(
    input                               rst,
    input                               mem_clk,
    input                               RD_FIFO_WE,//datavalid
    input                               WR_FIFO_RE,//datareq
    input                               RD_DONE,
    input                               WR_DONE,
    output logic                        RD_START,
    output logic                        WR_START,
    output logic [LENGTH - 1 : 0]       WR_LEN,
    output logic [LENGTH - 1 : 0]       RD_LEN,
    output logic [ADDR_BITS - 1:0]      RD_ADRS,
    output logic [ADDR_BITS - 1:0]      WR_ADRS,

    input [MEM_DATA_BITS - 1 : 0]       RD_FIFO_DATA,
    output logic [MEM_DATA_BITS - 1:0]  WR_FIFO_DATA
);

logic [3:0] state;

parameter [3:0] IDLE                = 4'd0;
parameter [3:0] ENABLE_WRITE        = 4'd1;
parameter [3:0] WAIT_WR_DONE        = 4'd2;
parameter [3:0] WAIT_RD_DONE        = 4'd3;

always @(posedge mem_clk or posedge rst) begin
    
    if(rst == 1)
        state <= IDLE;
    else begin
        case(state)
            IDLE: begin
                WR_START        <= 0;
                WR_ADRS         <= 0;     
                WR_LEN          <= LENGTH;
                WR_FIFO_DATA    <= 0;

                RD_START        <= 0;
                RD_ADRS         <= 0;
                RD_LEN          <= LENGTH;
                //RD_FIFO_DATA    <= 0;

                state           <= ENABLE_WRITE;
            end

            ENABLE_WRITE: begin
                if(WR_ADRS == 32'hFFFFFFFF)
                    state <= IDLE;

                WR_START        <= 1;
                WR_FIFO_DATA    <= WR_FIFO_DATA + 64'd1;
                WR_ADRS         <= WR_ADRS + 32'd1;
                state           <= WAIT_WR_DONE;
            end

            WAIT_WR_DONE: begin
                if(WR_DONE) begin
                    WR_START    <= 0;
                    RD_START    <= 1;
                    RD_ADRS     <= WR_ADRS;
                    state       <= WAIT_RD_DONE;
                end
                state <= WAIT_WR_DONE;
            end

            WAIT_RD_DONE: begin
                if(RD_DONE) begin
                    RD_START    <= 0;
                    state       <= ENABLE_WRITE;
                end
                state <= WAIT_RD_DONE;
            end

            default: state <= IDLE;

        endcase
    end

end

endmodule