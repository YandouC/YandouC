/****************************/
/*lpf module        */
/*author:carloy     */
/*version:v0.0      */
/*date:2022/2/16    */
/****************************/

module lpf #(parameter width=32)
    (
    input                     clk,
    input                     rst_n,
    input                     lpfsta,

    input       [width-1:0]   y_ex,
    input       [width-1:0]   x,
    input       [width-1:0]   lpf_k,

    output wire [width-1:0]   y);
//parameter define
    parameter   IDLE    =3'b000;
    parameter   LPF_K   =3'b001;
    parameter   LPF_Y   =3'b010;
    
//register
    reg     [width-1:0] y_reg;
    reg     [2:0] lpf_state;
    reg     [2:0] lpf_next_state;
    reg     [width-1:0] count_a;
    reg     [width-1:0] count_b;
//wire
    wire    [63:0]mul_res;
    assign y = y_reg;
//lpf_state
    always@(posedge clk or negedge rst_n)
        if(!rst_n)
            lpf_state <= IDLE;
        else 
            lpf_state <= lpf_next_state;
    always @(*)
        if(!rst_n)
            lpf_next_state = IDLE;            
        else begin
            case(lpf_state)
            IDLE:
                if(lpfsta)   lpf_next_state = LPF_K;
            LPF_K:
                lpf_next_state = LPF_Y;
            LPF_Y:
                lpf_next_state = IDLE;           
            default:
                lpf_next_state = IDLE;
            endcase
            end
//register bank
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            y_reg  <= 32'h0;
            count_a <= 32'h0;
            count_b <= 32'h0;            
        end
        else begin  
            case(lpf_state)
            LPF_K:begin
                y_reg <= y_ex;
                count_a <= lpf_k;
                count_b <= x - y_ex;
                end
            LPF_Y:begin
                y_reg <= y_reg + mul_res;
                count_a <= 32'h0;
                count_b <= 32'h0;
                end            
            default:begin
                count_a <= 32'h0;
                count_b <= 32'h0;
                end
            endcase            
        end
    end
mul_32bits u_mul_32bits(
    .clk    (clk),
    .rst_n  (rst_n),
    .count_a(count_a),
    .count_b(count_b),
    .result(mul_res)
);
endmodule

