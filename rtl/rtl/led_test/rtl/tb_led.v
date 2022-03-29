module tb_led();
reg [31:0] ia,ib,ic;
reg clk;
reg rst_n;

always #50 clk = ~clk;

initial begin
    clk = 1'b0;
    rst_n = 1'b0;
 
    ia = 32'h46;
    ib = 32'h56;
    ic = 32'h5649;
     
    #500;
    rst_n = 1'b1;
    
    #50000000;
    $finish;
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_led,"+all");
end

led u_led(
    .clk    (clk),
    .rst_n  (rst_n)
);
endmodule
