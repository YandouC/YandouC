module sqrt #(parameter width=64)
(
input                                       clk,
input                                       rst_n,
input   [width - 1'b1 : 0]          sqrt_data,
output  [width/2 - 1'b1 : 0]    sqrt_o,
output                          done,
output  [5:0]   sqrt_st_o,
output  sqrt_en_o,
output  [5:0]   sqrt_t_wd_o
);
parameter   IDLE     =6'd0;
parameter   ST_1B    =6'd1;
parameter   ST_2B    =6'd2;
parameter   ST_3B    =6'd3;
parameter   ST_4B    =6'd4;
parameter   ST_5B    =6'd5;
parameter   ST_6B    =6'd6;
parameter   ST_7B    =6'd7;
parameter   ST_8B    =6'd8;
parameter   ST_9B    =6'd9;
parameter   ST_10B   =6'd10;
parameter   ST_11B   =6'd11;
parameter   ST_12B   =6'd12;
parameter   ST_13B   =6'd13;
parameter   ST_14B   =6'd14;
parameter   ST_15B   =6'd15;
parameter   ST_16B   =6'd16;
parameter   ST_17B   =6'd17;
parameter   ST_18B   =6'd18;
parameter   ST_19B   =6'd19;
parameter   ST_20B   =6'd20;
parameter   ST_21B   =6'd21;
parameter   ST_22B   =6'd22;
parameter   ST_23B   =6'd23;
parameter   ST_24B   =6'd24;
parameter   ST_25B   =6'd25;
parameter   ST_26B   =6'd26;
parameter   ST_27B   =6'd27;
parameter   ST_28B   =6'd28;
parameter   ST_29B   =6'd29;
parameter   ST_30B   =6'd30;
parameter   ST_31B   =6'd31;
parameter   ST_32B   =6'd32;
parameter   SQRT_END =6'd33;

reg     [width - 1'b1 : 0]      sqrt_data_r0;
reg     [width - 1'b1 : 0]      sqrt_data_r1;
reg     [width/2 - 1'b1: 0]     sqrt_t;
reg     [5:0]                   sqrt_t_wd;
reg     [5:0]                   sqrt_st;
reg     [5:0]                   sqrt_next_st;
reg     [5:0]                   sqrt_st_t;
reg                             done_t;
reg     [2:0]                   cnt;
reg                             sqrt_en;
reg                             sqrt_en_r;
reg     [width/2 - 1'b1: 0]     sqrt_o_t;

wire    [width - 1'b1 : 0]      mul_res;

assign sqrt_st_o = sqrt_st;
assign sqrt_en_o = sqrt_en_r;
assign sqrt_t_wd_o = sqrt_t_wd;


assign done = done_t;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        sqrt_data_r0 <= 0;
        sqrt_data_r1 <= 0;
        end
    else begin
        sqrt_data_r0 <= sqrt_data; 
        sqrt_data_r1 <= sqrt_data_r0; 
        end
end
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        sqrt_en <= 1'b0;
    else if (sqrt_data_r1 != sqrt_data_r0)
        sqrt_en <= 1'b1;
    else
        sqrt_en <= 1'b0;
end

always @(posedge clk or negedge rst_n) 
    if(!rst_n)
        sqrt_en_r <= 1'b0;
    else
        sqrt_en_r <= sqrt_en;
//confirm bits of sqrt_data
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        sqrt_t_wd <= 5'h00;
    else if (sqrt_en)
        if(sqrt_data_r0[63] || sqrt_data_r0[62])
            sqrt_t_wd <= 6'd32;
        else if(sqrt_data_r0[61] || sqrt_data_r0[60])
            sqrt_t_wd <= 6'd31;
        else if(sqrt_data_r0[59] || sqrt_data_r0[58])
            sqrt_t_wd <= 6'd30;
        else if(sqrt_data_r0[57] || sqrt_data_r0[56])
            sqrt_t_wd <= 6'd29;
        else if(sqrt_data_r0[55] || sqrt_data_r0[54])
            sqrt_t_wd <= 6'd28;
        else if(sqrt_data_r0[53] || sqrt_data_r0[52])
            sqrt_t_wd <= 6'd27;
        else if(sqrt_data_r0[51] || sqrt_data_r0[50])
            sqrt_t_wd <= 6'd26;
        else if(sqrt_data_r0[49] || sqrt_data_r0[48])
            sqrt_t_wd <= 6'd25;
        else if(sqrt_data_r0[47] || sqrt_data_r0[46])
            sqrt_t_wd <= 6'd24;
        else if(sqrt_data_r0[45] || sqrt_data_r0[44])
            sqrt_t_wd <= 6'd23;
        else if(sqrt_data_r0[43] || sqrt_data_r0[42])
            sqrt_t_wd <= 6'd22;
        else if(sqrt_data_r0[41] || sqrt_data_r0[40])
            sqrt_t_wd <= 6'd21;
        else if(sqrt_data_r0[39] || sqrt_data_r0[38])
            sqrt_t_wd <= 6'd20;
        else if(sqrt_data_r0[37] || sqrt_data_r0[36])
            sqrt_t_wd <= 6'd19;
        else if(sqrt_data_r0[35] || sqrt_data_r0[34])
            sqrt_t_wd <= 6'd18;
        else if(sqrt_data_r0[33] || sqrt_data_r0[32])
            sqrt_t_wd <= 6'd17;
        else if(sqrt_data_r0[31] || sqrt_data_r0[30])
            sqrt_t_wd <= 6'd16;
        else if(sqrt_data_r0[29] || sqrt_data_r0[28])
            sqrt_t_wd <= 6'd15;
        else if(sqrt_data_r0[27] || sqrt_data_r0[26])
            sqrt_t_wd <= 6'd14;
        else if(sqrt_data_r0[25] || sqrt_data_r0[24])
            sqrt_t_wd <= 6'd13;
        else if(sqrt_data_r0[23] || sqrt_data_r0[22])
            sqrt_t_wd <= 6'd12;
        else if(sqrt_data_r0[21] || sqrt_data_r0[20])
            sqrt_t_wd <= 6'd11;
        else if(sqrt_data_r0[19] || sqrt_data_r0[18])
            sqrt_t_wd <= 6'd10;
        else if(sqrt_data_r0[17] || sqrt_data_r0[16])
            sqrt_t_wd <= 6'd9;
        else if(sqrt_data_r0[15] || sqrt_data_r0[14])
            sqrt_t_wd <= 6'd8;
        else if(sqrt_data_r0[13] || sqrt_data_r0[12])
            sqrt_t_wd <= 6'd7;
        else if(sqrt_data_r0[11] || sqrt_data_r0[10])
            sqrt_t_wd <= 6'd6;
        else if(sqrt_data_r0[9] || sqrt_data_r0[8])
            sqrt_t_wd <= 6'd5;
        else if(sqrt_data_r0[7] || sqrt_data_r0[6])
            sqrt_t_wd <= 6'd4;
        else if(sqrt_data_r0[5] || sqrt_data_r0[4])
            sqrt_t_wd <= 6'd3;
        else if(sqrt_data_r0[3] || sqrt_data_r0[2])
            sqrt_t_wd <= 6'd2;
        else if(sqrt_data_r0[1] || sqrt_data_r0[0])
            sqrt_t_wd <= 6'd1;
        else
            sqrt_t_wd <= 6'd0;
    else
            sqrt_t_wd <= 6'd0;    
end
//next state
always @(negedge clk or negedge rst_n)begin
    if(!rst_n)
        sqrt_next_st <= IDLE;
    else if(sqrt_en_r) begin
        case(sqrt_t_wd)
            6'd32 : 
            sqrt_next_st <= ST_32B;
            6'd31 : 
            sqrt_next_st <= ST_31B;
            6'd30 : 
            sqrt_next_st <= ST_30B;
            6'd29 : 
            sqrt_next_st <= ST_29B;
            6'd28 : 
            sqrt_next_st <= ST_28B;
            6'd27 : 
            sqrt_next_st <= ST_27B;
            6'd26 : 
            sqrt_next_st <= ST_26B;
            6'd25 : 
            sqrt_next_st <= ST_25B;
            6'd24 : 
            sqrt_next_st <= ST_24B;
            6'd23 : 
            sqrt_next_st <= ST_23B;
            6'd22 : 
            sqrt_next_st <= ST_22B;
            6'd21 : 
            sqrt_next_st <= ST_21B;
            6'd20 : 
            sqrt_next_st <= ST_20B;
            6'd19 : 
            sqrt_next_st <= ST_19B;
            6'd18 : 
            sqrt_next_st <= ST_18B;
            6'd17 : 
            sqrt_next_st <= ST_17B;
            6'd16 : 
            sqrt_next_st <= ST_16B;
            6'd15 : 
            sqrt_next_st <= ST_15B;
            6'd14 : 
            sqrt_next_st <= ST_14B;
            6'd13 : 
            sqrt_next_st <= ST_13B;
            6'd12 : 
            sqrt_next_st <= ST_12B;
            6'd11 : 
            sqrt_next_st <= ST_11B;
            6'd10 : 
            sqrt_next_st <= ST_10B;
            6'd9 : 
            sqrt_next_st <= ST_9B;
            6'd8 : 
            sqrt_next_st <= ST_8B;
            6'd7 : 
            sqrt_next_st <= ST_7B;
            6'd6 : 
            sqrt_next_st <= ST_6B;
            6'd5 : 
            sqrt_next_st <= ST_5B;
            6'd4 : 
            sqrt_next_st <= ST_4B;
            6'd3 : 
            sqrt_next_st <= ST_3B;
            6'd2 : 
            sqrt_next_st <= ST_2B;
            6'd1 : 
            sqrt_next_st <= ST_1B;
            default :
            sqrt_next_st <= IDLE;
        endcase
    end
    else begin
        if(cnt == 3'h1)
        case(sqrt_st)
            ST_32B :
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else           
                sqrt_next_st <= ST_31B;
            ST_31B :  
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else           
                sqrt_next_st <= ST_30B;
            ST_30B :
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_29B;
            ST_29B :
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else 
                sqrt_next_st <= ST_28B;            
            ST_28B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_27B;
            ST_27B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_26B;
            ST_26B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_25B;
            ST_25B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_24B;
            ST_24B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_23B;
            ST_23B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_22B;
            ST_22B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_21B;
            ST_21B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_20B;
            ST_20B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_19B;
            ST_19B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_18B;
            ST_18B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_17B;
            ST_17B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_16B;
            ST_16B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_15B;
            ST_15B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_14B;
            ST_14B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_13B;
            ST_13B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_12B;
            ST_12B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_11B;
            ST_11B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_10B;
            ST_10B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_9B;
            ST_9B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_8B;
            ST_8B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_7B;
            ST_7B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_6B;
            ST_6B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_5B;
            ST_5B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_4B;
            ST_4B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_3B;
            ST_3B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_2B;
            ST_2B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= ST_1B;
            ST_1B : 
            if(mul_res == sqrt_data_r0)
                sqrt_next_st <= SQRT_END;  
            else
                sqrt_next_st <= SQRT_END;
            SQRT_END :
                sqrt_next_st <= IDLE;
            default :
                sqrt_next_st <= IDLE;
        endcase
    end
end
//current state
always @(posedge clk or negedge rst_n) 
    if(!rst_n)begin
        sqrt_st <= IDLE;
        sqrt_st_t <= IDLE; 
        end
    else begin
        sqrt_st <= sqrt_next_st;
        sqrt_st_t <= sqrt_st;
        end
//delay counter
assign cnt_en = (sqrt_st == IDLE) ? 1'b0 : 1'b1; 
assign cnt_rst = (sqrt_st == sqrt_next_st) ? 1'b0 : 1'b1; 
always @(posedge clk or negedge rst_n) 
    if(!rst_n)
        cnt <= 3'h0;
    else if (cnt_rst)
        cnt <= 3'h0;
    else if(cnt_en)
        if(cnt < 3'h2)
            cnt <= cnt + 1'b1;
//register bank
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        sqrt_t <= 32'h0;
        sqrt_o_t <= 32'h0;
        done_t <= 1'b1;
        end
    else begin
        case(sqrt_st)
            IDLE   :begin
                sqrt_t <= 32'h0;                
                done_t <= 1'b1;
                end
            ST_32B : begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h8000_0000;
                done_t <= 1'b0;
                end
            ST_31B : begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h4000_0000;
                else if(cnt == 3'h1 )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h4000_0000;
                done_t <= 1'b0;
                end 
            ST_30B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h2000_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h2000_0000;
                done_t <= 1'b0;
                end                
            ST_29B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h1000_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h1000_0000;
                done_t <= 1'b0;
                end                          
            ST_28B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0800_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0800_0000;
                done_t <= 1'b0;
                end                 
            ST_27B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0400_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0400_0000;
                done_t <= 1'b0;
                end                 
            ST_26B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0200_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0200_0000;
                done_t <= 1'b0;
                end                
            ST_25B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0100_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0100_0000;
                done_t <= 1'b0;
                end                 
            ST_24B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0080_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0080_0000;
                done_t <= 1'b0;
                end               
            ST_23B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0040_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0040_0000;
                done_t <= 1'b0;
                end                 
            ST_22B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0020_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0020_0000;
                done_t <= 1'b0;
                end
            ST_21B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0010_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0010_0000;
                done_t <= 1'b0;
                end
            ST_20B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0008_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0008_0000;
                done_t <= 1'b0;
                end                
            ST_19B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0004_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0004_0000;
                done_t <= 1'b0;
                end
            ST_18B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0002_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0002_0000;
                done_t <= 1'b0;
                end
            ST_17B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0001_0000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0001_0000;
                done_t <= 1'b0;
                end
            ST_16B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_8000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_8000;
                done_t <= 1'b0;
                end
            ST_15B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_4000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_4000;
                done_t <= 1'b0;
                end
            ST_14B : begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_2000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_2000;
                done_t <= 1'b0;
                end                
            ST_13B : begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_1000;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_1000;
                done_t <= 1'b0;
                end                
            ST_12B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0800;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0800;
                done_t <= 1'b0;
                end                 
            ST_11B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0400;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0400;
                done_t <= 1'b0;
                end                
            ST_10B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0200;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0200;
                done_t <= 1'b0;
                end                
            ST_9B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0100;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0100;
                done_t <= 1'b0;
                end                 
            ST_8B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0080;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0080;
                done_t <= 1'b0;
                end                
            ST_7B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0040;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0040;
                done_t <= 1'b0;
                end
            ST_6B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0020;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0020;
                done_t <= 1'b0;
                end
            ST_5B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0010;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0010;
                done_t <= 1'b0;
                end 
            ST_4B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0008;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0008;
                done_t <= 1'b0;
                end
            ST_3B : begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0004;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0004;
                done_t <= 1'b0;
                end
            ST_2B : begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0002;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0002;
                done_t <= 1'b0;
                end
            ST_1B :begin
                if(cnt == 3'h0 )
                sqrt_t <= sqrt_t + 32'h0000_0001;
                else if(cnt == 3'h1  )
                    if(mul_res > sqrt_data_r0)
                        sqrt_t <= sqrt_t - 32'h0000_0001;
                done_t <= 1'b0;
                end                
            SQRT_END : begin
                if(cnt == 3'h1  )begin
                    sqrt_t <= 32'h0;
                    sqrt_o_t <= sqrt_t;
                    done_t <= 1'b1;
                    end
                end
            default :begin
                sqrt_t <= 32'h0;
                sqrt_o_t <= 32'h0;
                done_t <= 1'b1;
                end   
        endcase          
    end
end
assign sqrt_o = sqrt_o_t;
mul_32bits u_mul_32bits(
    .clk    (clk),
    .rst_n  (rst_n),
    .count_a(sqrt_t),
    .count_b(sqrt_t),
    .result (mul_res)
);

endmodule
