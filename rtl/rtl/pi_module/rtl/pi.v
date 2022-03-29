/****************************/
/*PI module         */
/*author:carloy     */
/*version:v0.0      */
/*date:2022/2/15    */
/****************************/

module pi #(parameter width=32)
(
    input                     clk,
    input                     rst_n,
    input                     pista,

    input       [width-1:0]   uk_ex,
    input       [width-1:0]   kp,
    input       [width-1:0]   ek,
    input       [width-1:0]   ek_ex,
    input       [width-1:0]   ki,
    input       [width-1:0]   uk_min,
    input       [width-1:0]   uk_max,
    output wire [width-1:0]   uk
);
//parameter define
    parameter   IDLE    =3'b000;
    parameter   KP_ST   =3'b001;
    parameter   KI_ST   =3'b010;
    parameter   UK_ST   =3'b011;
    parameter   END     =3'b100;
//register
    reg     [width-1:0] uk_reg;
    reg     [2:0] pi_state;
    reg     [2:0] pi_next_state;
    reg     [width-1:0] count_a;
    reg     [width-1:0] count_b;
//wire
    wire    [63:0]mul_res;
    assign uk = uk_reg;
//pi_state
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            pi_state <= IDLE;
        else 
            pi_state <= pi_next_state;
    always @(*)
        if(!rst_n)
            pi_next_state = IDLE;            
        else begin
            case(pi_state)
            IDLE:
                if(pista)   pi_next_state = KP_ST;
            KP_ST:
                pi_next_state = KI_ST;
            KI_ST:
                pi_next_state = UK_ST;
            UK_ST:
                pi_next_state = END;
            END  :
                pi_next_state = IDLE;    
            default:
                pi_next_state = IDLE;
            endcase
            end
//register bank
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            uk_reg  <= 32'h0;
            count_a <= 32'h0;
            count_b <= 32'h0;            
        end
        else begin  
            case(pi_state)
            KP_ST:begin
                uk_reg <= uk_ex;
                count_a <= kp;
                count_b <= ek - ek_ex;
                end
            KI_ST:begin
                uk_reg <= uk_reg + mul_res;
                count_a <= ki;
                count_b <= ek;
                end
            UK_ST:begin
                uk_reg <= uk_reg + mul_res; 
                count_a <= 32'h0;
                count_b <= 32'h0;
                end
            END  :begin
                if(uk_reg > uk_max)    uk_reg <= uk_max;
                else if(uk_reg < uk_min) uk_reg <= uk_min;
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

