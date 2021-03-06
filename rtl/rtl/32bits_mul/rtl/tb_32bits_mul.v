module tb_mul_32bits();
reg [31:0] a,b;
reg clk;
reg rst_n;
wire [63:0] result;
always #50 clk = ~clk;

initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    a = 32'h00;
    b = 32'h00;
    #500;
    
    rst_n = 1'b1;
    a = 32'hffff_fff0;
    b = 32'h0859_3312;
    #5000;
    $finish;
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_mul_32bits,"+all");
end

mul_32bits u_mul_32bits(
    .clk    (clk),
    .rst_n  (rst_n),
    .count_a(a),
    .count_b(b),
    .result(result)
);
endmodule
