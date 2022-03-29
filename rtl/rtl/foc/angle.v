module angle(
    input [11:0]    angle,
    output [11:0]   sin_angle,
    output          sin_sign,
    output [11:0]   cos_angle,
    output          cos_sign
);
    assign  sin_sign = (angle <= 12'd1800) ? 1'b0 : 1'b1;
    assign  cos_sign = ((angle >= 12'd900)&&(angle <= 12'd2700)) ? 1'b1 : 1'b0;   
    assign sin_angle[11:0] = (angle <= 12'd900) ? angle[11:0] :
                             (angle <= 12'd1800)? 12'd1800 - angle[11:0] :
                             (angle <= 12'd2700)? angle[11:0] - 12'd1800 :
                             (angle <= 12'd3600)? 12'd3600 - angle[11:0] : angle[11:0];
    assign cos_angle[11:0] = (angle <= 12'd900) ? 12'd900 - angle[11:0] :
                             (angle <= 12'd1800)? angle[11:0] - 12'd900 :
                             (angle <= 12'd2700)? 12'd2700 - angle[11:0] :
                             (angle <= 12'd3600)? angle[11:0] - 12'd2700: angle[11:0];
endmodule