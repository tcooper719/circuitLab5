`timescale 1ns / 1ns 

module testbench; 

reg clock;
reg xin;
wire DaO, DbO, DcO, yO;
reg reset;
reg [2:0] start_state;

fsm fsm0 (yO, DaO, DbO, DcO, xin, clock, reset, start_state );

initial begin
    clock = 0;
    forever #5 clock = ~clock;
end
    
initial begin 
           
        xin = 0;
        reset = 1;
        start_state = 3'b001;
        #10 reset = 0;
        // 011110011
        #10 xin = 0;
        #10 xin = 1;
        #10 xin = 1;
        #10 xin = 1;
        #10 xin = 1;
        #10 xin = 0;
        #10 xin = 0;
        #10 xin = 1;
        #10 xin = 1;
        
end
