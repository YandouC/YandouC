module spi_slave(
    input           clk,
    input           rst_n,
    input           sclk,
    input           spi_cs,
    input           mosi,
    
    input   [3:0]   add_nbyte,
    input   [3:0]   data_nbyte,
    
    output          miso,
    output  [31:0]  address_o,
    output  [31:0]  data_o
);

reg         sclk_r0;
reg         sclk_r1;
reg         miso_r;
reg [3:0]   bit_cnt;
reg [4:0]   byte_cnt;
reg [31:0]  address_r ;
reg [31:0]  data_r;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        miso_r <= 1'b0;
    else if(spi_cs)
        miso_r <= mosi;

always @(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        sclk_r0 <= 1'b0;
        sclk_r1 <= 1'b0;
    end
    else if(spi_cs)begin    
        sclk_r0 <= sclk;
        sclk_r1 <= sclk_r0;
    end
end
//spi clk edge
assign sclk_p = sclk_r0 & ~sclk_r1;
assign sclk_n = ~sclk_r0 & sclk_r1;
//cnt
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) 
        bit_cnt <= 4'b0;
    else if(bit_cnt == 4'h)
    else if(sclk_p)
        bit_cnt <= bit_cnt + 1'b1;

end

endmodule
    

