module bcdCount (
                  output reg [3: 0] A_count, // Data output
                  output C_out, // Output carry
                  input [3: 0] Data_in, // Data input
                  input Count, // Active high to count
                  input Load, // Active high to load
                  input CLK, // Positive-edge sensitive
                  input Clear_b ); // Active low

assign C_out = Count && (~Load) && (A_count == 4'b1001);
always @ ( posedge CLK, negedge Clear_b)
if (~Clear_b) A_count <= 4'b0000;
else begin if (Load) A_count <= Data_in;
else if (Count) A_count <= A_count + 4'b0001;
else A_count <= A_count;
end
endmodule
