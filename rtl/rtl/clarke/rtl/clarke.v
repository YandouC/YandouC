/****************************/
/*clarke module     */
/*author:carloy     */
/*version:v0.0      */
/*date:2022/2/18    */
/****************************/

module clarke #(parameter width=32)
    (
    input                     clk,
    input                     rst_n,

    input       [width-1:0]   ia,
    input       [width-1:0]   ib,
    input       [width-1:0]   ic,

    output wire [width-1:0]   ialp,
    output wire [width-1:0]   ibet
    
    );
//register
    reg         [width-1:0]   ialp_reg;
    reg         [width-1:0]   ibet_reg;
//wire
    assign      ialp = ialp_reg;
    assign      ibet = ibet_reg;
    wire        [width-1:0] ibet_t;    
    assign      ibet_t = {ia[31:0] - {ib[30:0],1'b0}};                  //??????? 
always @(posedge clk or negedge rst_n) 
    if(!rst_n)    
        ialp_reg <= 32'h0000;
    else
        ialp_reg <= ia;
always @(posedge clk or negedge rst_n)
    if (!rst_n) 
        ibet_reg <= 32'h0000;
    else
        ibet_reg <= {ibet_t[31:1] + ibet_t[31:4] + ibet_t[31:6]};   

endmodule

  
