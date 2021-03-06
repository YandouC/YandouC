module ts_sqrt(
    input   clk,
    input   rst_n,
    input   touch,
    
    output  clk_o,
    output  rst_n_o,
    output  touch_o,
    output  [5:0]   sqrt_st,
    output  sqrt_en,
    output  [5:0]   sqrt_t_wd );

    assign clk_o = clk;
    assign rst_n_o = rst_n;
    assign touch_o = touch;

    reg [3:0]   cnt ;
    reg clk_r;
    reg [63:0] data;

    //for timing
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            cnt <= 4'h0;
        else if(cnt == 4'h7)
            cnt <= 4'h0;
        else 
            cnt <= cnt + 1'b1;
    end
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            clk_r <= 1'b0;
        else if(cnt == 4'h3 || cnt == 4'h7)
            clk_r <= ~clk_r;
    end
    //data
    always @(posedge clk or negedge rst_n) 
        if(!rst_n)
            data <= 64'h00;
        else if (touch)
            data <= 64'h3FFF_FFFF_0000_0001;
            //data <= 64'd64;
    sqrt u_sqrt(
        .clk        (clk),
        .rst_n      (rst_n),
        .sqrt_data  (data),

        .sqrt_st_o  (sqrt_st),
        .sqrt_en_o  (sqrt_en),
        .sqrt_t_wd_o(sqrt_t_wd)
    );
endmodule

