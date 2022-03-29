module tb_i2c();
reg clk;
reg rst_n;

reg scl;
reg sdi;

reg [6:0] id;
reg [3:0] add_nbyte;
reg [3:0] data_nbyte;
reg [31:0]rdata_i;

always #5 clk = ~clk;
initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    id = 7'h23;
    add_nbyte = 4'h4;
    data_nbyte = 4'h4;
    rdata_i = 32'h454647ff;
    scl = 1'b0;
    sdi = 1'b0;
    #500;
    rst_n = 1'b1;
    #500;
    i2c_start(8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_stop(8'h50);
    #5000;

    #50000;
    i2c_start(8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_wr(8'h46,8'h50);
    i2c_stop(8'h50);

    i2c_start(8'h50);
    i2c_wr(8'h47,8'h50);
    i2c_rd(8'h45,8'h50);
    i2c_rd(8'h46,8'h50);
    i2c_rd(8'h47,8'h50);
    i2c_rd(8'hff,8'h50);
    i2c_stop(8'h50);
    #5000;
    $finish;
end
/*
initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0,tb_i2c,"+all");
end
*/
i2c_slave u_i2c_slave(
    .clk        (clk),
    .rst_n      (rst_n),
    .add_nbyte  (add_nbyte),
    .data_nbyte (data_nbyte),
    .id         (id),
    .rdata_i    (rdata_i),
    //i2c signal
    .scl        (scl),
    .sdi        (sdi)
);
task i2c_start(
    input [7:0] i2c_sp
);
    begin
    sdi = 1'b1;
    #(i2c_sp) scl = 1'b1;
    #(i2c_sp) sdi = 1'b0;
    #(i2c_sp) scl = 1'b0;
    end
endtask

task i2c_wr(
    input [7:0] wr_data,
    input [7:0] i2c_sp
);    
    integer i;
    begin
    scl = 1'b0;
    sdi = wr_data[7];
    #(i2c_sp) scl = 1'b1;
    #(i2c_sp) scl = 1'b0;
    for(i=6;i>=0;i=i-1)begin
        sdi = wr_data[i];
        #(i2c_sp) scl = 1'b1;
        #(i2c_sp) scl = 1'b0;     
    end
    sdi = 1'bx;
    #(i2c_sp) scl = 1'b1;
    #(i2c_sp) scl = 1'b0;
    end
endtask

task i2c_stop(
    input [7:0] i2c_sp
);
    begin
    scl = 1'b0;
    sdi = 1'b0;
    #(i2c_sp) scl = 1'b1;
    #(i2c_sp) sdi = 1'b1;
    end
endtask

task i2c_rd(
    input [7:0] rdata,
    input [7:0] i2c_sp
);  
    integer i;
    reg [7:0] rdata_r;
    begin
    rdata_r = 8'h00;
    for(i=7;i>=0;i=i-1)begin
        #(i2c_sp) scl = 1'b1;
        //rdata_r = {rdata_r[6:0],tb_i2c.u_i2c_slave.sdo};
        #(i2c_sp) scl = 1'b0;
    end
    #(i2c_sp) scl = 1'b1;
    #(i2c_sp) scl = 1'b0;
    /*
    if(rdata_r == rdata)
	$display("    right!    read data is 8'h %h ,get data is 8'h %h",rdata,rdata_r);
    else 
        $display("    warning!! read data is 8'h %h ,get data is 8'h %h",rdata,rdata_r);
    */
    end
endtask

endmodule


