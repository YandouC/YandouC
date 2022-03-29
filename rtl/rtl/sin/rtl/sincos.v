module sincos(
    input           clk,
    input           rst_n,
    input[11:0]     angle,

    output[31:0]    sin_o,
    output[31:0]    cos_o
);
    reg [3:0] cnt_r;
    reg [11:0] angle_r0;
    reg [11:0] angle_r1;
    reg [11:0] angle_r;
    reg [31:0] sin_r;
    reg [31:0] cos_r;

    wire [11:0] sin_angle;
    wire [11:0] cos_angle;
    wire        sin_sign;
    wire        cos_sign;
    wire [31:0] sin_t;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)begin
            angle_r0 <= 12'h0;
            angle_r1 <= 12'h0;
        end
        else begin
            angle_r0 <= angle;
            angle_r1 <= angle_r0;
        end
    end
    assign sin_en = (angle_r0 != angle_r1) ? 1'b1 : 1'b0;
    always @(posedge clk or negedge rst_n) 
        if(!rst_n)
            cnt_r <= 4'h0;
        else if(cnt_r == 4'h5)
            cnt_r <= 4'h0;
        else if(sin_en)
            cnt_r <= cnt_r + 1'b1;
        else if(cnt_r > 1'b0)
            cnt_r <= cnt_r + 1'b1;    
    always @(posedge clk or negedge rst_n) 
        if(!rst_n)
            angle_r <= 12'h0;
        else if (cnt_r == 4'h1)
            angle_r <= sin_angle[11:0];
        else if (cnt_r == 4'h3)
            angle_r <= cos_angle[11:0];
    always @(posedge clk or negedge rst_n) 
        if(!rst_n)
            sin_r <= 32'h0;
        else if (cnt_r == 4'h3)
            sin_r <= sin_t;
    always @(posedge clk or negedge rst_n) 
        if(!rst_n)
            cos_r <= 32'h0;
        else if (cnt_r == 4'h5)
            cos_r <= sin_t;
    assign sin_o =(sin_sign)? 32'h0 - sin_r : sin_r;
    assign cos_o =(cos_sign)? 32'h0 - cos_r : cos_r;
    angle u_angle(
        .angle          (angle_r1),
        .sin_angle      (sin_angle),
        .sin_sign       (sin_sign),
        .cos_angle      (cos_angle),
        .cos_sign       (cos_sign)     );

    radian u_radian(
        .clk        (clk),
        .rst_n      (rst_n),
        .angle      (angle_r),
        .sin_o      (sin_t)             );
endmodule
