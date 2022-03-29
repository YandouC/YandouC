module tb_8bitsspi();
    reg clk;
    reg rst_n;

    reg [7:0] sdi;

    reg wr_i;               //wr_iite: 1'b0  read:1'b1
    reg cs_i;
    reg scl;
    reg [31:0]    rdata_i;

    always #50 clk = ~clk;
    always #500 if(cs_i) scl = ~scl;

    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        sdi = 8'h45;
        wr_i = 1'b0;
        cs_i = 1'b0;
        scl = 1'b0;
        #5000;
        rst_n = 1'b1;
        #5000;
        cs_i = 1'b1;
        #50000;
        $finish;
    end

    8bitsspi u_8bitsspi(
    .clk(clk),
    .rst_n(rst_n),
    
    .scl(scl),
    .sdi(sdi),
    .wr_i(wr_i),               //wr_iite: 1'b0  read:1'b1
    .cs_i(cs_i),
    .rdata_i(rdata_i)
    );

    initial begin
       $fsdbDumpfile("test");
       $fsdbDumpvar(0,tb_8bitsspi,"+all"); 
    end
endmodule