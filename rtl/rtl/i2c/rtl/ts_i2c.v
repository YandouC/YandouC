module ts_i2c(
    input       clk,
    input       rst_n,
    input       scl,
    input       sda,

    output      clk_o,
    output      rst_n_o,
    output      scl_o,
    output      sdi,

    output      start,
    output      stop,
    output[3:0] i2c_state,
    output[3:0] cnt
);
    wire        sdi;
    wire        sdo;

    assign      clk_o = clk;
    assign      rst_n_o = rst_n;
    assign      scl_o = scl;
    assign      sdi = sda;
    /* 
   assign      sda = ((i2c_state == 4'b0010) || 
                       (i2c_state == 4'b0100) ||
                       (i2c_state == 4'b0111) ||
                       (i2c_state == 4'b1000) ||
                       (i2c_state == 4'b1001) ) 
                        ? sdo : 1'bz;
    */
i2c_slave u_i2c_slave(
    .clk        (clk),
    .rst_n      (rst_n),
    .add_nbyte  (4'h2),
    .data_nbyte (4'h2),
    .id         (7'h23),
    .rdata_i    (32'h454647ff),
    //i2c signal
    .scl        (scl),
    .sdi        (sdi),
    .sdo        (sdo),
    .start_o    (start),
    .stop_o     (stop),
    .i2c_state_o(i2c_state),
    .cnt_o      (cnt)
);
endmodule