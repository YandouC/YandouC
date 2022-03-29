module IRQHandler_dat(
    input               clk,
    input               rst_n,
    input[31:0]         dat_i,
    input[31:0]         dat3_i,
    input[3:0]          kkk_i,    

    input[3:0]          X_IAB,//
    input[31:0]         hall_angle,

    output[31:0]        IIA_o,
    output[31:0]        IIB_o,
    output[31:0]        now_angle_o,
    output[31:0]        dat_o,
    output[31:0]        dat3_o
);
 
    reg [31:0] dat_r0;
    reg [31:0] dat3_r0;
    reg [31:0] dat_r1;
    reg [31:0] dat3_r1;
    reg [31:0] IA_r;
    reg [31:0] IB_r;
    reg [31:0] IC_r;
    reg [31:0] IIA_r;
    reg [31:0] IIB_r;
    reg [31:0] now_angle_r;

    wire [31:0] dat_t;
    wire [31:0] dat3_t;
    wire [31:0] CB_SUB;
    wire [31:0] CB_SUM; 
    //offset calibration
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            dat_r0 <= 32'h0;
        else if(kkk_i)
            dat_r0 <= dat_i - 12'd2048;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            dat3_r0 <= 32'h0;
        else if(kkk_i)
            dat3_r0 <= dat3_i - 12'd2048;
    //fix
    assign dat_t[31:0] =    {dat_r0[31:0],3'h0} + {dat_r0[31:0],2'h0} + {dat_r0[31:0],1'b0} + 
                            {1'b0,dat_r0[31:1]} + {3'h0,dat_r0[31:3]} + {6'h0,dat_r0[31:6]} + 
                            {7'h0,dat_r0[31:7]} + {10'h0,dat_r0[31:10]};
    assign dat3_t[31:0] =   {dat3_r0[31:0],3'h0} + {dat3_r0[31:0],2'h0} + {dat3_r0[31:0],1'b0} + 
                            {1'b0,dat3_r0[31:1]} + {3'h0,dat3_r0[31:3]} + {6'h0,dat3_r0[31:6]} + 
                            {7'h0,dat3_r0[31:7]} + {10'h0,dat3_r0[31:10]};
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            dat_r1 <= 32'h0;
        else
            dat_r1 <= dat_t[31:0];               //*X_IAB*4.883*/  
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            dat3_r1 <= 32'h0;
        else
            dat3_r1 <= dat3_t[31:0] ;
    //IA,IB,IC
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            IA_r <= 32'h0;
        else case(kkk_i)
            4'b0001:
                IA_r <= 32'h0 - dat_r1 - dat3_r1;
            4'b0010:
                IA_r <= dat_r1;
            4'b0011:
                IA_r <= dat_r1;
            default:
                IA_r <= 32'h0;
            endcase
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            IB_r <= 32'h0;
        else case(kkk_i)
            4'b0001:
                IB_r <= dat_r1;
            4'b0010:
                IB_r <= 32'h0 - dat_r1 - dat3_r1;
            4'b0011:
                IB_r <= dat3_r1;
            default:
                IB_r <= 32'h0;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            IC_r <= 32'h0;
        else case(kkk_i)
            4'b0001:
                IC_r <= dat3_r1;
            4'b0010:
                IC_r <= dat3_r1;
            4'b0011:
                IC_r <= 32'h0 - dat_r1 - dat3_r1;
            default:
                IC_r <= 32'h0;
    //IIA,IIB
    CB_SUM[31:0] = IB_r[31:0] + IC_r[31:0];
    CB_SUB[31:0] = IC_r[31:0] - IB_r[31:0];
    always @(posedge clk or negedge rst_n)
        if (!rst_n)
            IIA_r <= 32'h0;
        else 
            IIA_r <= {1'b0,CB_SUM[31:1]} + {2'b00,CB_SUM[31:2]} + {7'h0,CB_SUM[31:7]} + 
                     {8'h0,CB_SUM[31:8]} + {10'h0,CB_SUM[31:10]};       ///*0.7629
    always @(posedge clk or negedge rst_n)
        if (!rst_n)
            IIB_r <= 32'h0;
        else 
            IIB_r <= {1'b0,CB_SUB[31:1]} + {3'h0,CB_SUB[31:3]} + {4'h0,CB_SUB[31:4]} + 
                     {9'h0,CB_SUB[31:9]} + {10'h0,CB_SUB[31:10]};       ///*0.4405
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            now_angle_r <= 32'h0;
        else 
            now_angle_r <= {10'h0,hall_angle[31:10]} + {15'h0,hall_angle[31:15]};////1000
    //dat_r2,dat3_r2
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            dat_r2 <= 32'h0;
        else
            dat_r2 <= {10'h0,dat_r1[31:10]} + {15'h0,dat_r1[31:15]};               //*X_IAB*4.883*/  
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            dat3_r2 <= 32'h0;
        else
            dat3_r2 <= {10'h0,dat3_r1[31:10]} + {15'h0,dat3_r1[31:15]};
    assign dat_o[31:0] = dat_r2[31:0];
    assign dat3_o[31:0] = (dat3_r2 > 32'd3599) ? dat3_r2 - 32'd600 : dat3_r2;
endmodule

