module tb_iclarke();
reg [31:0] valp,vbet;
reg clk;
reg rst_n;

always #50 clk = ~clk;

initial begin
    clk = 1'b0;
    rst_n = 1'b0;
 
    valp = 32'h46;
    vbet = 32'h56;
     
    #500;
    rst_n = 1'b1;
    
    #5000;
    $finish;
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_iclarke,"+all");
end

iclarke u_iclarke(
    .clk    (clk),
    .rst_n  (rst_n),
    .valp   (valp),
    .vbet      (vbet)

);
endmodule
