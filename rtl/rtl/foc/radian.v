module radian(
    input           clk,
    input           rst_n,
    input [31:0]    angle,
    output[31:0]    radian, 
    output wire [31:0]    sin_o);
//TENK :ten k
parameter TENK_0 = 6'd0;
parameter TENK_1 = 6'd1;
parameter TENK_2 = 6'd2;
parameter TENK_3 = 6'd3;
parameter TENK_4 = 6'd4;
parameter TENK_5 = 6'd5;
parameter TENK_6 = 6'd6;
parameter TENK_7 = 6'd7;
parameter TENK_8 = 6'd8;
parameter TENK_9 = 6'd9;

parameter TENK_10 = 6'd10;
parameter TENK_11 = 6'd11;
parameter TENK_12 = 6'd12;
parameter TENK_13 = 6'd13;
parameter TENK_14 = 6'd14;
parameter TENK_15 = 6'd15;
parameter TENK_16 = 6'd16;
parameter TENK_17 = 6'd17;
parameter TENK_18 = 6'd18;
parameter TENK_19 = 6'd19;

parameter TENK_20 = 6'd20;
parameter TENK_21 = 6'd21;
parameter TENK_22 = 6'd22;
parameter TENK_23 = 6'd23;
parameter TENK_24 = 6'd24;
parameter TENK_25 = 6'd25;
parameter TENK_26 = 6'd26;
parameter TENK_27 = 6'd27;
parameter TENK_28 = 6'd28;
parameter TENK_29 = 6'd29;

parameter TENK_30 = 6'd30;
parameter TENK_31 = 6'd31;
parameter TENK_32 = 6'd32;
parameter TENK_33 = 6'd33;
parameter TENK_34 = 6'd34;
parameter TENK_35 = 6'd35;
parameter TENK_36 = 6'd36;
parameter TENK_37 = 6'd37;
parameter TENK_38 = 6'd38;
parameter TENK_39 = 6'd39;

parameter TENK_40 = 6'd40;
parameter TENK_41 = 6'd41;
parameter TENK_42 = 6'd42;
parameter TENK_43 = 6'd43;
parameter TENK_44 = 6'd44;
parameter TENK_45 = 6'd45;
parameter TENK_46 = 6'd46;
parameter TENK_47 = 6'd47;
parameter TENK_48 = 6'd48;
parameter TENK_49 = 6'd49;

parameter TENK_50 = 6'd50;
parameter TENK_51 = 6'd51;
parameter TENK_52 = 6'd52;
parameter TENK_53 = 6'd53;
parameter TENK_54 = 6'd54;
parameter TENK_55 = 6'd55;
parameter TENK_56 = 6'd56;
parameter TENK_57 = 6'd57;

reg [31:0]  radian_r;
reg [5:0]   sin_add;
reg [31:0]  sin_r;
assign sin_o[31:0] = sin_r[31:0];

assign  radian  [31:0]  =   {angle[21:0],10'h0} + {angle[22:0],9'h0} + 
                            {angle[24:0],7'h0} + {angle[25:0],6'h0} + {angle[27:0],4'h0} +
                            angle[31:0];
always @(posedge clk or negedge rst_n) 
    if(!rst_n)
        radian_r <= 32'h00;
    else 
        radian_r <= radian[31:0];
always @(negedge clk or negedge rst_n)
    if (!rst_n) 
        sin_add <=  TENK_0;
    else if(angle <= 32'd178)
        sin_add <=  TENK_0;
    else if(angle <= 32'd257)
        sin_add <=  TENK_1;
    else if(angle <= 32'd305)
        sin_add <=  TENK_2;
    else if(angle <= 32'd342)
        sin_add <=  TENK_3;
    else if(angle <= 32'd372)
        sin_add <=  TENK_4;
    else if(angle <= 32'd399)
        sin_add <=  TENK_5;
    else if(angle <= 32'd422)
        sin_add <=  TENK_6;
    else if(angle <= 32'd443)
        sin_add <=  TENK_7;
    else if(angle <= 32'd462)
        sin_add <=  TENK_8;
    else if(angle <= 32'd480)
        sin_add <=  TENK_9;

    else if(angle <= 32'd497)
        sin_add <=  TENK_10;
    else if(angle <= 32'd513)
        sin_add <=  TENK_11;   
    else if(angle <= 32'd527)
        sin_add <=  TENK_12;
    else if(angle <= 32'd542)
        sin_add <=  TENK_13;
    else if(angle <= 32'd555)
        sin_add <=  TENK_14;
    else if(angle <= 32'd568)
        sin_add <=  TENK_15;
    else if(angle <= 32'd580)
        sin_add <=  TENK_16;
    else if(angle <= 32'd592)
        sin_add <=  TENK_17;
    else if(angle <= 32'd604)
        sin_add <=  TENK_18;
    else if(angle <= 32'd615)
        sin_add <=  TENK_19;
    
    else if(angle <= 32'd626)
        sin_add <=  TENK_20;
    else if(angle <= 32'd636)
        sin_add <=  TENK_21;   
    else if(angle <= 32'd646)
        sin_add <=  TENK_22;
    else if(angle <= 32'd656)
        sin_add <=  TENK_23;
    else if(angle <= 32'd666)
        sin_add <=  TENK_24;
    else if(angle <= 32'd675)
        sin_add <=  TENK_25;
    else if(angle <= 32'd684)
        sin_add <=  TENK_26;
    else if(angle <= 32'd693)
        sin_add <=  TENK_27;
    else if(angle <= 32'd702)
        sin_add <=  TENK_28;
    else if(angle <= 32'd711)
        sin_add <=  TENK_29;
    
    else if(angle <= 32'd719)
        sin_add <=  TENK_30;
    else if(angle <= 32'd727)
        sin_add <=  TENK_31;   
    else if(angle <= 32'd735)
        sin_add <=  TENK_32;
    else if(angle <= 32'd743)
        sin_add <=  TENK_33;
    else if(angle <= 32'd751)
        sin_add <=  TENK_34;
    else if(angle <= 32'd759)
        sin_add <=  TENK_35;
    else if(angle <= 32'd766)
        sin_add <=  TENK_36;
    else if(angle <= 32'd774)
        sin_add <=  TENK_37;
    else if(angle <= 32'd781)
        sin_add <=  TENK_38;
    else if(angle <= 32'd788)
        sin_add <=  TENK_39;
    
    else if(angle <= 32'd795)
        sin_add <=  TENK_40;
    else if(angle <= 32'd802)
        sin_add <=  TENK_41;   
    else if(angle <= 32'd809)
        sin_add <=  TENK_42;
    else if(angle <= 32'd816)
        sin_add <=  TENK_43;
    else if(angle <= 32'd822)
        sin_add <=  TENK_44;
    else if(angle <= 32'd829)
        sin_add <=  TENK_45;
    else if(angle <= 32'd835)
        sin_add <=  TENK_46;
    else if(angle <= 32'd842)
        sin_add <=  TENK_47;
    else if(angle <= 32'd848)
        sin_add <=  TENK_48;
    else if(angle <= 32'd854)
        sin_add <=  TENK_49;
    
    else if(angle <= 32'd860)
        sin_add <=  TENK_50;
    else if(angle <= 32'd867)
        sin_add <=  TENK_51;   
    else if(angle <= 32'd873)
        sin_add <=  TENK_52;
    else if(angle <= 32'd879)
        sin_add <=  TENK_53;
    else if(angle <= 32'd885)
        sin_add <=  TENK_54;
    else if(angle <= 32'd890)
        sin_add <=  TENK_55;
    else if(angle <= 32'd896)
        sin_add <=  TENK_56;
    else if(angle <= 32'd900)
        sin_add <=  TENK_57;
    else 
        sin_add <=  TENK_0;    

always @(posedge clk or negedge rst_n) 
    if(!rst_n)
        sin_r <= 32'h0;
    else begin
        case(sin_add)
        TENK_0:  sin_r <= radian ;
        TENK_1:  sin_r <= radian -   32'd10000;
        TENK_2:  sin_r <= radian -   32'd20000;
        TENK_3:  sin_r <= radian -   32'd30000;
        TENK_4:  sin_r <= radian -   32'd40000;
        TENK_5:  sin_r <= radian -   32'd50000;
        TENK_6:  sin_r <= radian -   32'd60000;
        TENK_7:  sin_r <= radian -   32'd70000;
        TENK_8:  sin_r <= radian -   32'd80000;
        TENK_9:  sin_r <= radian -   32'd90000;
        TENK_10:  sin_r <= radian - 32'd100000;

        TENK_11:  sin_r <= radian - 32'd110000;
        TENK_12:  sin_r <= radian - 32'd120000;
        TENK_13:  sin_r <= radian - 32'd130000;
        TENK_14:  sin_r <= radian - 32'd140000;
        TENK_15:  sin_r <= radian - 32'd150000;
        TENK_16:  sin_r <= radian - 32'd160000;
        TENK_17:  sin_r <= radian - 32'd170000;
        TENK_18:  sin_r <= radian - 32'd180000;
        TENK_19:  sin_r <= radian - 32'd190000;
        TENK_20:  sin_r <= radian - 32'd200000;

        TENK_21:  sin_r <= radian - 32'd210000;
        TENK_22:  sin_r <= radian - 32'd220000;
        TENK_23:  sin_r <= radian - 32'd230000;
        TENK_24:  sin_r <= radian - 32'd240000;
        TENK_25:  sin_r <= radian - 32'd250000;
        TENK_26:  sin_r <= radian - 32'd260000;
        TENK_27:  sin_r <= radian - 32'd270000;
        TENK_28:  sin_r <= radian - 32'd280000;
        TENK_29:  sin_r <= radian - 32'd290000;
        TENK_30:  sin_r <= radian - 32'd300000;

        TENK_31:  sin_r <= radian - 32'd310000;
        TENK_32:  sin_r <= radian - 32'd320000;
        TENK_33:  sin_r <= radian - 32'd330000;
        TENK_34:  sin_r <= radian - 32'd340000;
        TENK_35:  sin_r <= radian - 32'd350000;
        TENK_36:  sin_r <= radian - 32'd360000;
        TENK_37:  sin_r <= radian - 32'd370000;
        TENK_38:  sin_r <= radian - 32'd380000;
        TENK_39:  sin_r <= radian - 32'd390000;
        TENK_40:  sin_r <= radian - 32'd400000;

        TENK_41:  sin_r <= radian - 32'd410000;
        TENK_42:  sin_r <= radian - 32'd420000;
        TENK_43:  sin_r <= radian - 32'd430000;
        TENK_44:  sin_r <= radian - 32'd440000;
        TENK_45:  sin_r <= radian - 32'd450000;
        TENK_46:  sin_r <= radian - 32'd460000;
        TENK_47:  sin_r <= radian - 32'd470000;
        TENK_48:  sin_r <= radian - 32'd480000;
        TENK_49:  sin_r <= radian - 32'd490000;
        TENK_50:  sin_r <= radian - 32'd500000;

        TENK_51:  sin_r <= radian - 32'd510000;
        TENK_52:  sin_r <= radian - 32'd520000;
        TENK_53:  sin_r <= radian - 32'd530000;
        TENK_54:  sin_r <= radian - 32'd540000;
        TENK_55:  sin_r <= radian - 32'd550000;
        TENK_56:  sin_r <= radian - 32'd560000;
        TENK_57:  sin_r <= radian - 32'd570000;
        default:  sin_r <= 32'h0;
        endcase  
    end
endmodule
