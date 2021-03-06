module mul_32bits(
input                   clk,
input                   rst_n,
input wire [31:0]       count_a,
input wire [31:0]       count_b,
output wire [63:0]      result
);
wire [30:0]     count_a_abs;
wire [30:0]     count_b_abs;
wire            sign_a;
wire            sign_b;
wire [15:0]     result_t [0:16];
wire [63:0]     mul_result_t;
wire [30:0]     count_a_t;
wire [30:0]     count_b_t;
reg  [63:0]     mul_result;

assign          count_a_t = count_a - 1'b1;
assign          count_b_t = count_b - 1'b1;
assign          sign_a = count_a[31];
assign          sign_b = count_b[31];
assign          count_a_abs = sign_a ? ~count_a_t : count_a;
assign          count_b_abs = sign_b ? ~count_b_t : count_b;
assign          sign = sign_a + sign_b;

assign          mul_result_t =  {result_t[0] + {result_t[1],8'h0} + {result_t[2],16'h00} + {result_t[3],24'h000}} +
                                {{result_t[4] + {result_t[5],8'h0} + {result_t[6],16'h00} + {result_t[7],24'h000}},8'h0} +
                                {{result_t[8] + {result_t[9],8'h0} + {result_t[10],16'h00} + {result_t[11],24'h000}},16'h00} +
                                {{result_t[12] + {result_t[13],8'h0} + {result_t[14],16'h00} + {result_t[15],24'h000}},24'h00} ;
assign          result = mul_result;
always@(negedge clk or negedge rst_n)
        if(!rst_n)
                mul_result <= 64'h0;
        else if (sign)
                mul_result <= ~mul_result_t +1'b1;
        else 
                mul_result <= mul_result_t;     



bits_mul u_bits1_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[7:0]), .count_b(count_b_abs[7:0]), .result(result_t[0]));
bits_mul u_bits2_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[15:8]), .count_b(count_b_abs[7:0]), .result(result_t[1]));
bits_mul u_bits3_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[23:16]), .count_b(count_b_abs[7:0]), .result(result_t[2]));
bits_mul u_bits4_mul(.clk(clk), .rst_n(rst_n), .count_a({1'b0,count_a_abs[30:24]}), .count_b(count_b_abs[7:0]), .result(result_t[3]));

bits_mul u_bits5_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[7:0]), .count_b(count_b_abs[15:8]), .result(result_t[4]));
bits_mul u_bits6_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[15:8]), .count_b(count_b_abs[15:8]), .result(result_t[5]));
bits_mul u_bits7_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[23:16]), .count_b(count_b_abs[15:8]), .result(result_t[6]));
bits_mul u_bits8_mul(.clk(clk), .rst_n(rst_n), .count_a({1'b0,count_a_abs[30:24]}), .count_b(count_b_abs[15:8]), .result(result_t[7]));

bits_mul u_bits9_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[7:0]), .count_b(count_b_abs[23:16]), .result(result_t[8]));
bits_mul u_bits10_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[15:8]), .count_b(count_b_abs[23:16]), .result(result_t[9]));
bits_mul u_bits11_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[23:16]), .count_b(count_b_abs[23:16]), .result(result_t[10]));
bits_mul u_bits12_mul(.clk(clk), .rst_n(rst_n), .count_a({1'b0,count_a_abs[30:24]}), .count_b(count_b_abs[23:16]), .result(result_t[11]));

bits_mul u_bits13_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[7:0]), .count_b({1'b0,count_b_abs[30:24]}), .result(result_t[12]));
bits_mul u_bits14_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[15:8]), .count_b({1'b0,count_b_abs[30:24]}), .result(result_t[13]));
bits_mul u_bits15_mul(.clk(clk), .rst_n(rst_n), .count_a(count_a_abs[23:16]), .count_b({1'b0,count_b_abs[30:24]}), .result(result_t[14]));
bits_mul u_bits16_mul(.clk(clk), .rst_n(rst_n), .count_a({1'b0,count_a_abs[30:24]}), .count_b({1'b0,count_b_abs[30:24]}), .result(result_t[15]));


endmodule
