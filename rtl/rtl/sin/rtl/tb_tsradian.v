module tb_tsradian();
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
    #500;
    touch = 1'b1;
    #100000;
    touch = 1'b0;
    #500;

    touch = 1'b1;
    #100;
    touch = 1'b0;
    #500;

    touch = 1'b1;
    #100;
    touch = 1'b0;
    #500;

    touch = 1'b1;
    #100;
    touch = 1'b0;
    #500;

    touch = 1'b1;
    #100;
    touch = 1'b0;
    #500;

    touch = 1'b1;
    #100;
    touch = 1'b0;
    #500;

    touch = 1'b1;
    #100;
    touch = 1'b0;
    #500;

    touch = 1'b1;
    #100;
    touch = 1'b0;
    #500;

    touch = 1'b1;
    #100;
    touch = 1'b0;
    #500;

    touch = 1'b1;
    #1000;
    touch = 1'b0;
    #500;

    touch = 1'b1;
    #100;
    touch = 1'b0;
    #500;

    touch = 1'b1;
    #100;
    touch = 1'b0;
    #500;


   $finish;
end
/*
initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_tsradian,"+all");
end
*/
ts_radian u_ts_radian(
    .clk(clk),
    .rst_n(rst_n),
    .touch(touch)
);
endmodule
