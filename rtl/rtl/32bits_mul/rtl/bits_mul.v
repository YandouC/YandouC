module bits_mul(
input                   clk,
input                   rst_n,
input           [7:0]   count_a,
input           [7:0]   count_b,
output wire     [15:0]  result
);
reg [7:0]       count_t  [0:7];
wire [15:0]      result_t;
assign result[15:0] = result_t[15:0];   
always@(*)begin
        case(count_b[0])
                1'b1:
                        count_t[0][7:0] = count_a[7:0];
                default:
                        count_t[0][7:0] = 8'h00;
                        endcase
        case(count_b[1])
                1'b1:
                        count_t[1][7:0] = count_a[7:0];
                default:
                        count_t[1][7:0] = 8'h00;
                        endcase
        case(count_b[2])
                1'b1:
                        count_t[2][7:0] = count_a[7:0];
                default:
                        count_t[2][7:0] = 8'h00;
                        endcase
        case(count_b[3])
                1'b1:
                        count_t[3][7:0] = count_a[7:0];
                default:
                        count_t[3][7:0] = 8'h00;
                        endcase
        case(count_b[4])
                1'b1:
                        count_t[4][7:0] = count_a[7:0];
                default:
                        count_t[4][7:0] = 8'h00;
                        endcase
        case(count_b[5])
                1'b1:
                        count_t[5][7:0] = count_a[7:0];
                default:
                        count_t[5][7:0] = 8'h00;
                        endcase
        case(count_b[6])
                1'b1:
                        count_t[6][7:0] = count_a[7:0];
                default:
                        count_t[6][7:0] = 8'h00;
                        endcase
        case(count_b[7])
                1'b1:
                        count_t[7][7:0] = count_a[7:0];
                default:
                        count_t[7][7:0] = 8'h00;
                        endcase
end
assign result_t = {count_t[7],7'h0}  + {count_t[6],6'h0} + {count_t[5],5'h0} + {count_t[4],4'h0}
                                                + {count_t[3],3'h0}  + {count_t[2],2'h0}  + {count_t[1],1'h0} + {count_t[0]};
endmodule
        


        
