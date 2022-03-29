module tb_div();
reg [31:0] a,b;
reg clk;
reg rst_n;
reg start;
wire [63:0] result;
always #50 clk = ~clk;

initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    start = 1'b0;
    a = 32'h00;
    b = 32'h00;
    #500;
    
    rst_n = 1'b1;
    a = 32'd81;
    b = 32'h09;
    start = 1'b1;
    #5000;
    $finish;
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_div,"+all");
end

div32 u_div32(
    .clk    (clk),
    .rst_n  (rst_n),
    .start  (start),
    .dividend(a),
    .divisor(b)
);
divider u_divider(
    .clk    (clk),
    .rst_n  (rst_n),
    .dividend(a),
    .divisor(b)
);
endmodule
