module IRQHandler_1st(
    input                   clk,
    input                   rst_n,
    
    input signed [31:0]     pwm,
    input signed [31:0]     speed,
    input signed [31:0]     IDR, 
    input signed [31:0]     last_Hall,
    
    output wire [31:0]      set_IQ_o,
    output wire [31:0]      hall_angle_o, 
    output wire [31:0]      dat_o,   

    output wire [31:0]      last_Hall_o,
    output wire             direct_o

);
    parameter hall_n0 = 4'h4;
    parameter hall_n1 = 4'h5;
    parameter hall_n2 = 4'h1;
    parameter hall_n3 = 4'h3;
    parameter hall_n4 = 4'h2;
    parameter hall_n5 = 4'h6;
    reg signed [31:0] set_IQ;
    reg signed [31:0] hall_angle;
    reg signed [31:0] dat;
    reg signed [31:0] dat_r;
    reg direct_r;
    reg signed [31:0] hall_angle_r;
    reg signed [31:0] last_Hall_r;
    //set_IQ
    always @(posedge clk or negedge rst_n) 
        if(!rst_n)
            set_IQ <= 32'd1000;
        else 
            set_IQ <= {pwm[31:0],2'b00};
    assign set_IQ_o[31:0] <= set_IQ[31:0]; 
    //angle
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            hall_angle <= 32'h0;
        else 
            hall_angle <= hall_angle + {speed[31:0],1'b1} + speed[31:0];
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            hall_angle_r[31:0] <= 32'h0;
        else 
            hall_angle_r[31:0] <= hall_angle[31] ? hall_angle + 31'd3600000 :
                                hall_angle[30:0] >= 31'd3600000 ? hall_angle[30:0] - 31'd3600000 : hall_angle[31:0] ;
    assign hall_angle_o[31:0] = hall_angle_r[31:0];
    //dat
    always @(posedge clk or negedge rst_n) 
        if (!rst_n)
            dat <= 32'h0;
        else 
            dat <= {31'h0,IDR[0]};
    always @(posedge clk or negedge rst_n) 
        if (!rst_n)
            dat_r <= 32'h0;
        else if(IDR[4])
            dat_r <= dat + 4'd4;
        else if(IDR[5])
            dat_r <= dat + 4'd2;
        else 
            dat_r <= dat;
    assign dat_o[31:0] = dat_r[31:0];
    //direct
    assign direct_1_en =(last_Hall == hall_n1 && dat_r == hall_n2)||
                        (last_Hall == hall_n2 && dat_r == hall_n3)||
                        (last_Hall == hall_n3 && dat_r == hall_n4)||
                        (last_Hall == hall_n4 && dat_r == hall_n5)||
                        (last_Hall == hall_n5 && dat_r == hall_n0)||
                        (last_Hall == hall_n0 && dat_r == hall_n1);

    assign direct_0_en =(last_Hall == hall_n2 && dat_r == hall_n1)||
                        (last_Hall == hall_n3 && dat_r == hall_n2)||
                        (last_Hall == hall_n4 && dat_r == hall_n3)||
                        (last_Hall == hall_n5 && dat_r == hall_n4)||
                        (last_Hall == hall_n0 && dat_r == hall_n5)||
                        (last_Hall == hall_n1 && dat_r == hall_n0);
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            direct_r <= 1'b0;
        else if(direct_1_en) 
            direct_r <= 1'b1;
        else if(direct_0_en) 
            direct_r <= 1'b0;
    assign direct_o = direct_r;
    //last_Hall
    always @(posedge clk or negedge rst_n)
        if (!rst_n)
            last_Hall_r <= 32'h0;
        else 
            last_Hall_r <= dat_r[31:0];
    assign last_Hall_o[31:0] = last_Hall_r[31:0];
    
endmodule
    
