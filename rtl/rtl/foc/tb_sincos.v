module tb_sincos();
reg clk;
reg rst_n;
reg [11:0] angle;
always #50 clk = ~clk;

initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    #500;
    rst_n = 1'b1;
    angle = 12'd300;
    while(angle < 12'd3600)
        #1000 angle = angle + 12'd100;
    #500;
    $finish;
end
initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_sincos,"+all");
end
sincos u_sincos(
    .clk(clk),
    .rst_n(rst_n),
    .angle(angle)
);
endmodule
