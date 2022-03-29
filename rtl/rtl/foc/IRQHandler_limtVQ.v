module IRQHandler_limtVQ(
    input           clk,
    input           rst_n,
    input[31:0]     dat,
    input[31:0]     dat3,
    input[31:0]     IIA_i,
    input[31:0]     IIB_i,
    input[31:0]     pwm_i,
    input[31:0]     voltage_i,
    input[31:0]     sin_i,
    input[63:0]     mul_data,
    input           lock_i,
    input[31:0]     now_angle_i,

    output[11:0]    angle_o,
    output [31:0]   limit_VQ_o
);
    reg [5:0]   cnt_sin_r;
    reg [5:0]   cnt_mul_r;
    reg [11:0]  angle_r;
    reg [31:0]  dat_r0;
    reg [31:0]  dat_r1;
    reg [31:0]  dat3_r0;
    reg [31:0]  dat3_r1;
    reg [31:0]  sin_dat_r;
    reg [31:0]  sin_dat3_r;
    signed reg [63:0]  IQ_r;
    signed reg [63:0]  ID_r;
    reg [31:0]  limit_VQ_r0;
    reg [31:0]  limit_VQ_r1;
    reg [31:0]  VQ_r;
    reg [31:0]  VD_r;
    reg [31:0]  dat_tr0;
    reg [31:0]  dat3_tr0;
    
    always @(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            dat_r0 <= 32'h0;
            dat_r1 <= 32'h0;
        end
        else begin
            dat_r0 <= dat;
            dat_r1 <= dat_r0;
        end
    end
    always @(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            dat3_r0 <= 32'h0;
            dat3_r1 <= 32'h0;
        end
        else begin
            dat3_r0 <= dat3;
            dat3_r1 <= dat3_r0;
        end
    end
    //when data change cnt enable to count
    assign cnt_en = (dat_r0 != dat_r1) || (dat3_r0 != dat3_r1);
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            cnt_sin_r <= 6'h0;
        else if(cnt_sin_r == 6'h7)
            cnt_sin_r <= 6'h0;
        else if(cnt_en)
            cnt_sin_r <= cnt_sin_r + 1'b1;
        else if(cnt_sin_r > 6'h0)
            cnt_sin_r <= cnt_sin_r + 1'b1;
    //select angle 
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            angle_r <= 32'h0;
        else if(cnt_sin_r == 6'h1)
            angle_r <= dat_r0;
        else if(cnt_sin_r == 6'h6)
            angle_r <= dat3_r0;
    
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            sin_dat_r <= 32'h0;
        else if(cnt_sin_r == 6'h5)
            sin_dat_r <= sin_i;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            sin_dat3_r <= 32'h0;
        else if(cnt_sin_r == 6'd10)
            sin_dat3_r <= sin_i;   

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            cnt_mul_r <= 6'h0;
        else if(cnt_mul_r == 6'h13)
            cnt_mul_r <= 6'h0;
        else if(cnt_sin_r == 6'd7)
            cnt_mul_r <= cnt_mul_r + 1'b1;
        else if(cnt_mul_r > 6'h0)
            cnt_mul_r <= cnt_mul_r + 1'b1;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)begin
            mul_a <= 32'h00;
            mul_b <= 32'h00;
            end
        else if(cnt_mul_r == 6'h1)begin
            mul_a <= IIA_i;
            mul_b <= sin_dat_r;
            end
        else if(cnt_mul_r == 6'h3)begin
            mul_a <= IIB_i;
            mul_b <= sin_dat3_r;
            end
        else if(cnt_mul_r == 6'h5)begin
            mul_a <= IIA_i;
            mul_b <= sin_dat3_r;
            end
        else if(cnt_mul_r == 6'h7)begin
            mul_a <= IIB_i;
            mul_b <= sin_dat_r;
            end
        else if(cnt_mul_r == 6'h9)begin
            mul_a <= pwm_i;
            mul_b <= voltage_i;
            end
    end

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            IQ_r <= 64'h0;
        else if(cnt_mul_r == 6'h3)
            IQ_r <= mul_data[63:0];
        else if(cnt_mul_r == 6'h5)
            IQ_r <= IQ_r - mul_data[63:0];
    
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            ID_r <= 64'h0;
        else if(cnt_mul_r == 6'h7)
            ID_r <= 0 - mul_data[63:0];
        else if(cnt_mul_r == 6'h9)
            ID_r <= ID_r - mul_data[63:0];

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            limit_VQ_r0 <= 32'h0;
        else if(cnt_mul_r == 6'h6)
            if(IQ_r > 32'd6000) limit_VQ_r0 <= limit_VQ_r0 - 32'd500;
            else if(IQ_r < (0 - 32'd6000)) limit_VQ_r0 <= limit_VQ_r0 + 32'd500;    
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            VQ_r <= 32'h00;
        else if(lock_i)
            VQ_r <= 32'h00;
        else if(cnt_mul_r == 6'h11) 
            VQ_r <= mul_data;
        else if(cnt_mul_r == 6'h12)
            VQ_r <= {8'h00,VQ_r[31:8]} + {10'h00,VQ_r[31:10]} + {11'h00,VQ_r[31:11]} +
                    {12'h00,VQ_r[31:12]} + {13'h00,VQ_r[31:13]} + {15'h00,VQ_r[31:15]} +
                    {17'h00,VQ_r[31:17]};
    //////////////////////////////////////////////
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            limit_VQ_r1 <= 32'h0;
        else if (cnt_mul_r == 6'h13)
            if(VQ_r - limit_VQ_r0 > 32'd50)
                limit_VQ_r1 <= limit_VQ_r0 + 32'd50;
            if(limit_VQ_r0 - VQ_r > 32'd50)
                limit_VQ_r1 <= limit_VQ_r0 - 32'd50;        
            else 
                limit_VQ_r1 <= VQ_r;
    assign limit_VQ_o = limit_VQ_r1;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            VD_r <= 32'h0;
        else 
            VD_r <= 32'h0;
    always @(posedge clk or negedge rst_n) 
        if(!rst_n)
            dat_tr0

endmodule