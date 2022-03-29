module tb_clarke();
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
    
    #5000;
    $finish;
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_clarke,"+all");
end

clarke u_clarke(
    .clk    (clk),
    .rst_n  (rst_n),
    .ia     (ia),
    .ib     (ib),
    .ic     (ic)

);
endmodule
