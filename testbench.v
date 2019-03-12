`timescale 1ns / 1ns 

module testbench; 

reg CLK;
wire [3:0] AO;
wire [3:0] BO;
wire carryOut;
reg [3:0] Ain;
reg [3:0] Bin;
reg count;
reg load;
reg Clear_b;

twoDigitCounter counter1(AO, BO, carryOut, Ain, Bin, count, load, CLK, Clear_b);

initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin
    Clear_b = 0;
    #10 load = 0;
    #300 Clear_b = 1;
    count = 1;

    Ain = 4'b0011;
    Bin = 4'b0011;

    #100 load = 1;
    #100 load = 0;





end


initial
   $monitor($stime,, CLK,, count,, Ain,, Bin,, AO,, BO,, carryOut,, load,, Clear_b);
endmodule 