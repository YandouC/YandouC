module tb_lpf();
reg [31:0] y_ex,x,lpf_k,ek_ex,ki,uk_min,uk_max;
reg clk;
reg rst_n;
reg lpfsta;

always #50 clk = ~clk;

initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    lpfsta = 1'b0;
    
    y_ex = 32'h46;
    x = 32'h56;
    lpf_k = 32'h66;
     
    #500;
    lpfsta = 1'b1;
    rst_n = 1'b1;
    #100;
    lpfsta = 1'b0;
    
    #5000;
    $finish;
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_lpf,"+all");
end

lpf u_lpf(
    .clk    (clk),
    .rst_n  (rst_n),
    .lpfsta (lpfsta),
    .y_ex   (y_ex),
    .x      (x),
    .lpf_k  (lpf_k)

);
endmodule
