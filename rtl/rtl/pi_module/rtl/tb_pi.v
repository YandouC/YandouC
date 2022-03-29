module tb_pi();
reg [31:0] uk_ex,kp,ek,ek_ex,ki,uk_min,uk_max;
reg clk;
reg rst_n;
reg pista;
wire [63:0] result;
always #50 clk = ~clk;

initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    pista = 1'b0;
    
    uk_ex = 32'h46;
    kp = 32'hffff_ffff;
    ek = 32'h66;
    ek_ex = 32'h12;
    ki = 32'h36;
    uk_min = 32'h32569;
    uk_max = 32'hffffffff;    
     
    #500;
    pista = 1'b1;
    rst_n = 1'b1;
    #100;
    pista = 1'b0;
    
    #5000;
    $finish;
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_pi,"+all");
end

pi u_pi(
    .clk    (clk),
    .rst_n  (rst_n),
    .pista  (pista),
    .uk_ex  (uk_ex),
    .kp     (kp),
    .ek     (ek),
    .ek_ex  (ek_ex),
    .ki     (ki),
    .uk_min (uk_min),
    .uk_max (uk_max)
);
endmodule
