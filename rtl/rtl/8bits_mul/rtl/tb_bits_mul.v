module tb_bits_mul();
reg [7:0] a,b;
reg clk;
reg rst_n;
wire [15:0] result;
always #50 clk = ~clk;

initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    a = 8'h00;
    b = 8'h00;
    #500;
    
    rst_n = 1'b1;
    a = 8'h47;
    b = 8'h45;
    #5000;
    $finish;
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_bits_mul,"+all");
end

bits_mul u_bits_mul(
    .clk    (clk),
    .rst_n  (rst_n),
    .count_a(a),
    .count_b(b),
    .result(result)
);
endmodule
