module led(
input   clk,
input   rst_n,

output [7:0] led_o       
);
reg [15:0] cnt;
reg [7:0] led;
assign led_o = led;

always@(posedge clk or negedge rst_n)
        if(!rst_n)
                cnt <= 16'h0000;
        else
                cnt <= cnt + 1'b1;

always@(posedge clk or negedge rst_n)
        if(!rst_n)
                led <= 8'hff;
        else if (cnt<16'h00ff)
                led <= 8'b0000_0011;
        else if (cnt<16'h0fff)
                led <= 8'b0011_1100;
        else if (cnt<16'hafff)
                led <= 8'b1100_0000;
        else
                led <= 8'hff;
endmodule
                                
