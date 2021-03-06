/****************************/
/*iclarke module        */
/*author:carloy     */
/*version:v0.0      */
/*date:2022/2/17    */
/****************************/

module iclarke #(parameter width=32)
    (
    input                     clk,
    input                     rst_n,

    input       [width-1:0]   valp,
    input       [width-1:0]   vbet,

    output wire [width-1:0]   vr1,
    output wire [width-1:0]   vr2,
    output wire [width-1:0]   vr3
    );
//register
    reg         [width-1:0]   vr1_reg;
    reg         [width-1:0]   vr2_reg;
    reg         [width-1:0]   vr3_reg;
//wire
    assign      vr1 = vr1_reg;
    assign      vr2 = vr2_reg;
    assign      vr3 = vr3_reg;
    wire        [width-1:0] vr2_t;
    wire        [width-1:0] vr3_t;
    assign      vr2_t = {valp[31:0] + valp[31:1] + valp[31:2] -valp[31:6] - vbet};                  //????????
    assign      vr3_t = 32'h0000_0000 - {valp[31:0] + valp[31:1] + valp[31:2] -valp[31:6] + vbet};  //????????
always @(posedge clk or negedge rst_n) 
    if(!rst_n)    
        vr1_reg <= 32'h0000;
    else
        vr1_reg <= vbet;
always @(posedge clk or negedge rst_n)
    if (!rst_n) 
        vr2_reg <= 32'h0000;
    else
        vr2_reg <= vr2_t[31:1];
always @(posedge clk or negedge rst_n)
    if (!rst_n) 
        vr3_reg <= 32'h0000;
    else
        vr3_reg <= vr3_t[31:1];     

endmodule

  
