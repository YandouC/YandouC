
module divider #( parameter width=32)
(   input                  clk,
    input                  rst_n,
    input [width - 1'b1:0] dividend,
    input [width - 1'b1:0] divisor,
    output                 div_done,
    output [31:0]          div_dout);

parameter   IDLE    =3'b000;
parameter   DIV_COM =3'b001;
parameter   DIV_ADD =3'b010;
parameter   DIV_SUB =3'b011;
parameter   END     =3'b100;

reg     [width - 1'b1:0] dividend_r0;
reg     [width - 1'b1:0] dividend_r1;

reg     [width - 1'b1:0] divisor_r0;
reg     [width - 1'b1:0] divisor_r1;

reg     [5:0]            dividend_r0_wd;
reg     [5:0]            divisor_r0_wd;

reg                      done;
reg     [31:0]           divisor_temp;
reg     [31:0]           temp_divs;
reg     [31:0]           temp_divd;
reg     [31:0]           result;
reg                      div_en;
wire    [4:0]            mov_bits;
wire                     div_start;

//div data register
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        dividend_r0 <= 0;
        dividend_r1 <= 0;
    end
    else begin
        dividend_r0 <= dividend;
        dividend_r1 <= dividend_r0;
    end    
end
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        divisor_r0 <= 0;
        divisor_r1 <= 0;
    end
    else begin
        divisor_r0 <= divisor;
        divisor_r1 <= divisor_r0;
    end    
end
assign divd_chg = (dividend_r0 == dividend_r1) ? 1'b0 : 1'b1 ;  //dividend change
assign divr_chg = (divisor_r0 == divisor_r1) ? 1'b0 : 1'b1 ;    //divisor change
assign div_start = divd_chg || divr_chg;                        //divider start
//comfirm max bit
always @(*) 
    if(!rst_n)               dividend_r0_wd = 6'd00;
    else if(dividend_r0[31]) dividend_r0_wd = 6'd32;
    else if(dividend_r0[30]) dividend_r0_wd = 6'd31;
    else if(dividend_r0[29]) dividend_r0_wd = 6'd30;
    else if(dividend_r0[28]) dividend_r0_wd = 6'd29;
    else if(dividend_r0[27]) dividend_r0_wd = 6'd28;
    else if(dividend_r0[26]) dividend_r0_wd = 6'd27;
    else if(dividend_r0[25]) dividend_r0_wd = 6'd26;
    else if(dividend_r0[24]) dividend_r0_wd = 6'd25;

    else if(dividend_r0[23]) dividend_r0_wd = 6'd24;
    else if(dividend_r0[22]) dividend_r0_wd = 6'd23;
    else if(dividend_r0[21]) dividend_r0_wd = 6'd22;
    else if(dividend_r0[20]) dividend_r0_wd = 6'd21;
    else if(dividend_r0[19]) dividend_r0_wd = 6'd20;
    else if(dividend_r0[18]) dividend_r0_wd = 6'd19;
    else if(dividend_r0[17]) dividend_r0_wd = 6'd18;
    else if(dividend_r0[16]) dividend_r0_wd = 6'd17;

    else if(dividend_r0[15]) dividend_r0_wd = 6'd16;
    else if(dividend_r0[14]) dividend_r0_wd = 6'd15;
    else if(dividend_r0[13]) dividend_r0_wd = 6'd14;
    else if(dividend_r0[12]) dividend_r0_wd = 6'd13;
    else if(dividend_r0[11]) dividend_r0_wd = 6'd12;
    else if(dividend_r0[10]) dividend_r0_wd = 6'd11;
    else if(dividend_r0[9])  dividend_r0_wd = 6'd10;
    else if(dividend_r0[8])  dividend_r0_wd = 6'd9;

    else if(dividend_r0[7])  dividend_r0_wd = 6'd8;
    else if(dividend_r0[6])  dividend_r0_wd = 6'd7;
    else if(dividend_r0[5])  dividend_r0_wd = 6'd6;
    else if(dividend_r0[4])  dividend_r0_wd = 6'd5;
    else if(dividend_r0[3])  dividend_r0_wd = 6'd4;
    else if(dividend_r0[2])  dividend_r0_wd = 6'd3;
    else if(dividend_r0[1])  dividend_r0_wd = 6'd2;
    else if(dividend_r0[0])  dividend_r0_wd = 6'd1;

always @(*) 
    if(!rst_n)              divisor_r0_wd = 6'h00;
    else if(divisor_r0[31]) divisor_r0_wd = 6'd32;
    else if(divisor_r0[30]) divisor_r0_wd = 6'd31;
    else if(divisor_r0[29]) divisor_r0_wd = 6'd30;
    else if(divisor_r0[28]) divisor_r0_wd = 6'd29;
    else if(divisor_r0[27]) divisor_r0_wd = 6'd28;
    else if(divisor_r0[26]) divisor_r0_wd = 6'd27;
    else if(divisor_r0[25]) divisor_r0_wd = 6'd26;
    else if(divisor_r0[24]) divisor_r0_wd = 6'd25;

    else if(divisor_r0[23]) divisor_r0_wd = 6'd24;
    else if(divisor_r0[22]) divisor_r0_wd = 6'd23;
    else if(divisor_r0[21]) divisor_r0_wd = 6'd22;
    else if(divisor_r0[20]) divisor_r0_wd = 6'd21;
    else if(divisor_r0[19]) divisor_r0_wd = 6'd20;
    else if(divisor_r0[18]) divisor_r0_wd = 6'd19;
    else if(divisor_r0[17]) divisor_r0_wd = 6'd18;
    else if(divisor_r0[16]) divisor_r0_wd = 6'd17;

    else if(divisor_r0[15]) divisor_r0_wd = 6'd16;
    else if(divisor_r0[14]) divisor_r0_wd = 6'd15;
    else if(divisor_r0[13]) divisor_r0_wd = 6'd14;
    else if(divisor_r0[12]) divisor_r0_wd = 6'd13;
    else if(divisor_r0[11]) divisor_r0_wd = 6'd12;
    else if(divisor_r0[10]) divisor_r0_wd = 6'd11;
    else if(divisor_r0[9])  divisor_r0_wd = 6'd10;
    else if(divisor_r0[8])  divisor_r0_wd = 6'd9;

    else if(divisor_r0[7])  divisor_r0_wd = 6'd8;
    else if(divisor_r0[6])  divisor_r0_wd = 6'd7;
    else if(divisor_r0[5])  divisor_r0_wd = 6'd6;
    else if(divisor_r0[4])  divisor_r0_wd = 6'd5;
    else if(divisor_r0[3])  divisor_r0_wd = 6'd4;
    else if(divisor_r0[2])  divisor_r0_wd = 6'd3;
    else if(divisor_r0[1])  divisor_r0_wd = 6'd2;
    else if(divisor_r0[0])  divisor_r0_wd = 6'd1;

assign mov_bits[4:0] = dividend_r0_wd - divisor_r0_wd;
always @(*) begin
    if(!rst_n)
        divisor_temp = 32'h0;
    case(mov_bits)
        6'd30 : divisor_temp = {divisor_r0[1:0],30'h0};
        6'd29 : divisor_temp = {divisor_r0[2:0],29'h0};
        6'd28 : divisor_temp = {divisor_r0[3:0],28'h0};
        6'd27 : divisor_temp = {divisor_r0[4:0],27'h0};
        6'd26 : divisor_temp = {divisor_r0[5:0],26'h0};
        6'd25 : divisor_temp = {divisor_r0[6:0],25'h0};
        6'd24 : divisor_temp = {divisor_r0[7:0],24'h0};
        6'd23 : divisor_temp = {divisor_r0[8:0],23'h0};
        6'd22 : divisor_temp = {divisor_r0[9:0],22'h0};
        6'd21 : divisor_temp = {divisor_r0[10:0],21'h0};
        6'd20 : divisor_temp = {divisor_r0[11:0],20'h0};
        6'd19 : divisor_temp = {divisor_r0[12:0],19'h0};
        6'd18 : divisor_temp = {divisor_r0[13:0],18'h0};
        6'd17 : divisor_temp = {divisor_r0[14:0],17'h0};
        6'd16 : divisor_temp = {divisor_r0[15:0],16'h0};
        6'd15 : divisor_temp = {divisor_r0[16:0],15'h0};
        6'd14 : divisor_temp = {divisor_r0[17:0],14'h0};
        6'd13 : divisor_temp = {divisor_r0[18:0],13'h0};
        6'd12 : divisor_temp = {divisor_r0[19:0],12'h0};
        6'd11 : divisor_temp = {divisor_r0[20:0],11'h0};
        6'd10 : divisor_temp = {divisor_r0[21:0],10'h0};
        6'd9 : divisor_temp = {divisor_r0[22:0],9'h0};
        6'd8 : divisor_temp = {divisor_r0[23:0],8'h0};
        6'd7 : divisor_temp = {divisor_r0[24:0],7'h0};
        6'd6 : divisor_temp = {divisor_r0[25:0],6'h0};
        6'd5 : divisor_temp = {divisor_r0[26:0],5'h0};
        6'd4 : divisor_temp = {divisor_r0[27:0],4'h0};
        6'd3 : divisor_temp = {divisor_r0[28:0],3'h0};
        6'd2 : divisor_temp = {divisor_r0[29:0],2'h0};
        6'd1 : divisor_temp = {divisor_r0[30:0],1'h0}; 
        default: divisor_temp = divisor_r0;
    endcase
end
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        temp_divd <= 32'h0;
        temp_divs <= 32'h0;
        result <= 32'h0;
        div_en <= 1'b0;
    end
    else if(div_start) begin
        temp_divd <= dividend_r0;
        temp_divs <= divisor_temp;
        result <= 32'h0;
        div_en <= 1'b1;
    end
    else if((temp_divs >= divisor_r0) & div_en) begin
        if(temp_divd >= temp_divs)begin
            temp_divd <= temp_divd - temp_divs;
            temp_divs <= temp_divs >> 1;
            result <= (result<<1) + 1'b1;
            //result <= {result[30:0] , 1'b1};
        end
        else begin
            temp_divs <= temp_divs >> 1;
            result <= {result[30:0] , 1'b0};
        end
    end
end
endmodule

