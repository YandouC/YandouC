module IRQHandler_2st(
    input               clk,
    input               rst_n,

    input [31:0]        dat,
    input [31:0]        hall_angle,

    output wire [31:0]  DHR12R1_o,
    output wire [31:0]  hall_angle_o
);
    parameter hall_n0 = 4'h4;
    parameter hall_n1 = 4'h5;
    parameter hall_n2 = 4'h1;
    parameter hall_n3 = 4'h3;
    parameter hall_n4 = 4'h2;
    parameter hall_n5 = 4'h6;

    reg [31:0] DHR12R1_r;
    reg [31:0] hall_angle_r;

    always @(posedge clk or negedge rst_n)
        if (!rst_n)
            DHR12R1_r <= 32'h0;
        else 
            DHR12R1_r <= dat * 12'h1f4;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            hall_angle_r <= 32'h0;
        else 
            case(dat)
            hall_n0:
                if((hall_angle > 32'd300000)&&(hall_angle < 32'd1800000))   hall_angle_r <= 32'd300000;
                else if(hall_angle < 32'd3300000)   hall_angle_r <= 32'd3300000;
            hall_n1:
                if(hall_angle < 32'd300000)   hall_angle_r <= 32'd300000;
                else if(hall_angle > 32'd900000)   hall_angle_r <= 32'd900000;
            hall_n2:
                if(hall_angle < 32'd900000)   hall_angle_r <= 32'd900000;
                else if(hall_angle > 32'd1500000)   hall_angle_r <= 32'd1500000;
            hall_n3:
                if(hall_angle < 32'd1500000)   hall_angle_r <= 32'd1500000;
                else if(hall_angle > 32'd2100000)   hall_angle_r <= 32'd2100000;
            hall_n4:
                if(hall_angle < 32'd2100000)   hall_angle_r <= 32'd2100000;
                else if(hall_angle > 32'd2700000)   hall_angle_r <= 32'd2700000;
            hall_n5:
                if(hall_angle < 32'd2700000)   hall_angle_r <= 32'd2700000;
                else if(hall_angle > 32'd3300000)   hall_angle_r <= 32'd3300000;
            default:
                hall_angle_r <= hall_angle_r;
            endcase
    assign DHR12R1_o[31:0] = DHR12R1_r[31:0];
    assign hall_angle_o[31:0] = hall_angle_r[31:0];
endmodule
