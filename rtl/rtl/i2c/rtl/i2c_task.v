task i2c_start(
    input [7:0] i2c_sp
);
    sdi = 1'b1;
    #(i2c_sp) scl = 1'b1;
    #(i2c_sp) sdi = 1'b0;
    #(i2c_sp) scl = 1'b0;
endtask

task i2c_wr(
    input [7:0] wr_data,
    input [7:0] i2c_sp
);
    integer i;
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
endtask

task i2c_stop(
    input [7:0] i2c_sp
);
    scl = 1'b0;
    sdi = 1'b0;
    #(i2c_sp) scl = 1'b1;
    #(i2c_sp) sdi = 1'b1;
endtask

task i2c_rd(
    input [7:0] rdata,
    input [7:0] i2c_sp
);
    integer i;
    reg [7:0] rdata_r;
    rdata_r = 8'h00;
    for(i=7;i>=0;i=i-1)begin
        #(i2c_sp) scl = 1'b1;
        rdata_r = {rdata_r[6:0],tb_i2c.u_i2c_slave.sdo};
        #(i2c_sp) scl = 1'b0;
    end
    #(i2c_sp) scl = 1'b1;
    #(i2c_sp) scl = 1'b0;
    if(rdata_r == rdata)
	$display("    right!    read data is 8'h %h ,get data is 8'h %h",rdata,rdata_r);
    else 
        $display("    warning!! read data is 8'h %h ,get data is 8'h %h",rdata,rdata_r);
endtask
