module ts_radian(
    input   clk,
    input   rst_n,
    input   touch,
    output  [7:0]   sin_o,
    
    output clk_o,
    output rst_n_o,
    output touch_o,
    output [3:0] cnt_o
    );

    reg [31:0] angle;
    reg [3:0] cnt;
    wire [31:0] sin;

    assign clk_o = clk;
    assign rst_n = rst_n_o;
    assign touch_o = touch;
    assign cnt_o[3:0] = cnt[3:0];
    always @(posedge clk or negedge rst_n) 
        if(!rst_n)
            angle <= 32'd00;
        else if(touch & (cnt == 4'h8))
            angle <= angle + 32'd100;
        else if(angle == 32'd1000)
            angle <= 32'd00;   
    always @(posedge clk or negedge rst_n) 
        if(!rst_n)
            cnt <= 4'h0;
        else if(cnt == 4'h8)
            cnt <= 4'h0;
        else if(touch)
            cnt <= cnt + 1'b1;
        
    assign sin_o[7:0]=sin[7:0]; 
radian u_radian(
    .clk(clk),
    .rst_n(rst_n),
    .angle(angle),
    .radian(radian),
    .sin_o(sin)
);
endmodule
    