module 8bitsspi(
    input clk,
    input rst_n,
    
    input scl,
    input [7:0]     sdi,
    input wr_i,               //wr_iite: 1'b0  read:1'b1
    input cs_i,
    input [31:0]    rdata_i,

    output [7:0]    sdo,
    output [31:0]   addr_o,
    output [31:0]   data_o
);

reg scl_r0;
reg scl_r1;
reg [3:0] byte_cnt;
reg [31:0]   data_r;
reg [31:0]   addr_r;

always @(posedge clk or negedge rst_n)
    if(!rst_n)begin
        scl_r0 <= 1'b0;
        scl_r1 <= 1'b0;
    end
    else begin
        scl_r0 <= scl;
        scl_r1 <= scl_r0;
    end
assign scl_p = scl_r0 & ~scl_r1;
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        byte_cnt <= 4'h0;
    else if(!cs_i)
        byte_cnt <= 4'h0;
    else if(byte_cnt == 4'h4 - 1'b1)
        byte_cnt <= 4'h0;
    else if(scl_p & cs_i) 
        byte_cnt <= byte_cnt + 1'b1;
    
//data load
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        data_r <= 32'h0;
    else if(!cs_i)
        data_r <= 32'h0;
    else if(scl_p & cs_i & !wr_i)
        data_r <= {data_r[31:8],sdi[7:0]};
end
assign data_o[31:0] = (byte_cnt == 4'h4 - 1'b1) ? data_r[31:0] : data_o[31:0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        addr_r <= 32'h0;
    else if(!cs_i)
        addr_r <= 32'h0;    
    else if(scl_p & cs_i) 
        addr_r <= addr_r + 1'b1;
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        sdo <= 8'h0;
    else if(cs_i & wr_i)
        case(byte_cnt)
            4'h0: sdo <= rdata_i[7:0];
            4'h1: sdo <= rdata_i[15:8];
            4'h2: sdo <= rdata_i[23:16];
            4'h3: sdo <= rdata_i[31:24];
            default: sdo <= 8'hff;
        endcase
    
    
