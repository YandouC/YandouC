module i2c_slave(
    input       clk,
    input       rst_n,

    //i2c setting
    input[3:0]  add_nbyte,
    input[3:0]  data_nbyte,
    input[6:0]  id,
    input[31:0] rdata_i,
        
    //i2c signal
    input       scl,
    input       sdi,

    //fpga test
    output      start_o,
    output      stop_o,
    output[3:0] i2c_state_o,
    output[3:0] cnt_o,

    output      sdo,
    output[31:0]address,
    output[31:0]i2c_data 

);
parameter IDLE      = 4'b0000;
parameter IDST      = 4'b0001;
parameter IDACK     = 4'b0010;
parameter ADDST     = 4'b0011;
parameter ADDACK    = 4'b0100;
parameter WDST      = 4'b0101;
parameter WDACK     = 4'b0110;
parameter RDST      = 4'b0111;
parameter RDACK     = 4'b1000;

reg [3:0] add_nbyte_r;
reg [3:0] data_nbyte_r;

reg [31:0] address_r;
reg [31:0] i2c_data_r;
reg [31:0] rdata;

assign address[31:0] = address_r[31:0];
assign i2c_data[31:0] = i2c_data_r[31:0]; 

reg scl_r0;
reg sdi_r0;
reg scl_r1;
reg sdi_r1;
reg sdo_r;

reg [3:0]   i2c_state;
reg [3:0]   i2c_next_state;
reg [3:0]   bit_cnt;
reg [3:0]   byte_cnt;
reg [7:0]   id_r;
assign address = address_r;
assign i2c_data = i2c_data_r; 
assign sdo = sdo_r;
//i2c input register
always @(posedge clk or negedge rst_n) 
    if(!rst_n)begin
        scl_r0 <= 1'b0;
        scl_r1 <= 1'b0;
    end
    else begin
        scl_r0 <= scl;
        scl_r1 <= scl_r0;
    end
always @(posedge clk or negedge rst_n)
    if(!rst_n)begin
        sdi_r0 <= 1'b0;
        sdi_r1 <= 1'b0;
    end
    else begin
        sdi_r0 <= sdi;
        sdi_r1 <= sdi_r0;
    end
//I2C setting
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        add_nbyte_r <= 4'h4;
    else
        add_nbyte_r <= add_nbyte;
always @(posedge clk or negedge rst_n)
    if (!rst_n)
        data_nbyte_r <= 4'h4;
    else 
        data_nbyte_r <= data_nbyte; 
//pulse edge
assign scl_p = scl_r0 & ~scl_r1;
assign scl_n = ~scl_r0 & scl_r1;
assign sdi_p = sdi_r0 & ~sdi_r1;
assign sdi_n = ~sdi_r0 & sdi_r1;
//i2c start & stop
assign i2c_start = scl_r0 & sdi_n;
assign i2c_stop = scl_r0 & sdi_p;
////////////////////////////////////
//fpga
assign  start_o = i2c_start;
assign  stop_o = i2c_stop;
assign  i2c_state_o[3:0] = i2c_state[3:0];
assign  cnt_o[3:0] =  bit_cnt[3:0];
////////////////////////////////////

//i2c state
always @(posedge clk or negedge rst_n) 
    if(!rst_n)
        i2c_state <= IDLE;
    else if(i2c_stop)
        i2c_state <= IDLE;
    else if(scl_n)
        i2c_state <= i2c_next_state;
always @(posedge clk or negedge rst_n) 
    if (!rst_n) 
        i2c_next_state <= IDLE;
    else if (i2c_stop)
        i2c_next_state <= IDLE;
    else if(i2c_start)
        i2c_next_state <= IDST;
    else if(scl_p)
        case (i2c_state)
            IDST:   
                if(bit_cnt==4'h8 - 1'b1)    
                    i2c_next_state <= IDACK;
            IDACK:     
                if(id_r[7:1] == id )
                    if(id_r[0])
                        i2c_next_state <= RDST;
                    else 
                        i2c_next_state <= ADDST;
                else 
                    i2c_next_state <= IDLE;
            ADDST:
                if(bit_cnt==4'h8 - 1'b1)
                    i2c_next_state <= ADDACK;
                else 
                    i2c_next_state <= ADDST;
            ADDACK:
                if (byte_cnt == add_nbyte_r - 1'b1)
                    i2c_next_state <= WDST;
                else 
                    i2c_next_state <= ADDST;
            WDST:
                if(bit_cnt==4'h8 - 1'b1)
                    i2c_next_state <= WDACK;
            WDACK:
                if (byte_cnt == data_nbyte_r - 1'b1)
                    i2c_next_state <=  IDLE;
	            else 
		            i2c_next_state <= WDST;
            RDST:
                if (bit_cnt ==4'h8 -1'b1)
                    i2c_next_state <= RDACK;
            RDACK:
                if (byte_cnt == data_nbyte_r - 1'b1)
                    i2c_next_state <= IDLE;
		else 
		    i2c_next_state <= RDST;
            default: 
                i2c_next_state <= i2c_next_state;
        endcase   
//i2c register bank
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        bit_cnt <= 4'h0;
        byte_cnt <= 4'h0;
        address_r <= 32'h0;
        i2c_data_r <= 32'h0;
        id_r <= 8'h00;
    end
    else if (i2c_start)begin
        bit_cnt <= 4'h0;
        byte_cnt <= 4'h0;
        i2c_data_r <= 32'h0;
        id_r <= 8'h00;
    end
    else begin  
        case (i2c_state)
            IDLE:begin
                bit_cnt <= 4'h0;
                byte_cnt <= 4'h0;
            end 
            IDST:begin
                if(scl_p)begin
                    bit_cnt <= bit_cnt + 1'b1;
                    id_r <= {id_r[6:0],sdi_r0};
                end
            end
            IDACK:begin
                bit_cnt <= 4'h0;
            end
            ADDST:begin
                if(scl_p)begin
                    bit_cnt <= bit_cnt + 1'b1;
                    address_r <= {address_r[30:0],sdi_r0};
                end
            end
            ADDACK:begin
             bit_cnt <= 4'h0;
                if(scl_p)begin
                   
		    if(byte_cnt ==  add_nbyte - 1'b1)
                        byte_cnt <= 4'h0;
		    else 
                        byte_cnt <= byte_cnt + 1'b1;
                end
            end
            WDST:begin
                if(scl_p)begin
                    bit_cnt <= bit_cnt + 1'b1;
                    i2c_data_r <= {i2c_data_r[30:0],sdi_r0};
                end
            end
            WDACK:begin
            bit_cnt <= 4'h0;
                if(scl_p)begin
                    
		    if(byte_cnt ==  data_nbyte - 1'b1)
                        byte_cnt <= 4'h0;
		    else 
                        byte_cnt <= byte_cnt + 1'b1;
                    end
	        end
            RDST:begin
                if(scl_p)begin
                    bit_cnt <= bit_cnt + 1'b1;
                end
            end

            RDACK:begin
                bit_cnt <= 4'h0;
                if(scl_n)begin
                    
                    if(byte_cnt ==  data_nbyte - 1'b1)
                        byte_cnt <= 4'h0;
                    else
                        byte_cnt <= byte_cnt + 1'b1;
                    end
            end
            default:begin
                bit_cnt <= 4'h0;
                byte_cnt <= 4'h0;  
                id_r <= 8'h00;
            end 
        endcase
    end  
end    

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        sdo_r <= 1'b1;
        rdata <= 32'h00;
    end
    else begin
        //if(scl_n)
            case(i2c_state)
            IDLE:begin  
                sdo_r <= 1'b1;
                rdata <= 32'h00;
            end
            IDST:
                sdo_r <= 1'b1;
            IDACK:begin
                sdo_r <= 1'b0;
                if(id_r[0])
                    rdata <= rdata_i;
            end
            ADDST:
                sdo_r <= 1'b1;
            ADDACK:
                sdo_r <= 1'b0;
            WDST:
                sdo_r <= 1'b1;
            WDACK:
                sdo_r <= 1'b0;
            RDST:begin
		sdo_r <= rdata[31];
		if(scl_n)
                    rdata <= {rdata[30:0],1'b0};
            end
            RDACK:
                if(byte_cnt < data_nbyte - 1'b1)
		    sdo_r <= 1'b1;
		else 
		    sdo_r <= 1'b0;
            default:begin
                sdo_r <= 1'b1;
                rdata <= 32'h00;
            end
            endcase
    end
end         

endmodule
    
