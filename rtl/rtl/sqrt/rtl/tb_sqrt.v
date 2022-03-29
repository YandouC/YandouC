module tb_sqrt();
reg [63:0] data;
reg clk;
reg rst_n;

always #50 clk = ~clk;

initial begin
    clk = 1'b0;
    rst_n = 1'b0;   
    
    data = 64'd16;
    #500;
    rst_n = 1'b1;
    #5000;
    data = 64'h0ff_ffff_ffff_ffff;
    #50000;
    data = 64'd4611686009837453316;
    #50000;
    data = 64'd4611686014132420609;
    #50000;
    data = 64'd400;
    #5000;
    data = 64'h10001;
    #50000;
    data = 64'd16000000;

    
    #5000;
    $finish;
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_sqrt,"+all");
end
sqrt u_sqrt(
    .clk        (clk),
    .rst_n      (rst_n),
    .sqrt_data  (data)
);
endmodule
