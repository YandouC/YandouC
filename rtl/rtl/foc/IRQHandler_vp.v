module IRQHandler_vp(
    input [31:0]    dat,
    input [31:0]    dat3,
    input [31:0]    voltage,
    input [1:0]     kkk,

    output wire [31:0] voltage_o,
    output wire [31:0] k_pwm_o,
    output wire [31:0] dat_o,
    output wire [31:0] dat3_o
);

    reg [31:0]  voltage_r;
    reg [31:0]  k_pwm_r;
    reg [31:0]  dat_r;
    reg [31:0]  dat3_r;

    wire [31:0] x_voltage;
    assign x_voltage[31:0] = {  voltage[31:2] + voltage[31:3] + voltage[31:4] + voltage[31:6] +
                                voltage[31:7] + voltage[31:9] + voltage[31:10] + voltage[31:12]};
    always @(posedge clk or negedge rst_n )
        if(!rst_n)
            voltage_r <= 32'h0;
        else 
            voltage_r <= voltage[31:0] * 4'd12 + x_voltage[31:0];
    assign voltage_o[31:0] = voltage_r[31:0];
    
    always @(posedge clk or negedge rst_n) 
        if(!rst_n)
            k_pwm_r <= 32'h00;
        else 
            k_pwm_r <= 32'd420 / voltage_r;         //div
    assign k_pwm_o[31:0] = k_pwm_r[31:0];

    endmodule