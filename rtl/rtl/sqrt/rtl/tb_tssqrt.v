module tb_tssqrt();

reg clk;
reg rst_n;
reg touch;

always #50 clk = ~clk;

initial begin
    clk = 1'b0;
    rst_n = 1'b0;   
    touch = 1'b0;
    #500;
    rst_n = 1'b1;
    #5000;
    touch = 1'b1;
      
    #500000;
    $finish;
end
initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_tssqrt,"+all");
end
ts_sqrt u_ts_sqrt(
    .clk        (clk),
    .rst_n      (rst_n),
    .touch      (touch)
);
endmodule
