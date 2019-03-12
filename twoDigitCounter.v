module twoDigitCounter (output [3:0] AO, 
                        output [3:0] BO, 
                        output carryOut, 
                        input [3:0] Ain, 
                        input [3:0] Bin, 
                        input count,
                        input Load, 
                        input CLK, 
                        input Clear_b);

wire carryWire;

    bcdCount countA (AO,
                    carryWire,
                    Ain,
                    count,
                    Load,
                    CLK,
                    Clear_b);

    bcdCount countB (BO,
                    carryOut,
                    Bin,
                    carryWire,
                    Load,
                    CLK,
                    Clear_b);
endmodule