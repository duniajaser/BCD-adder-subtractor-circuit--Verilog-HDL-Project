// Dunia Jaser 1201345
module BCD_Adder_Subtractor(A,B,Mode,Final_Result,Carry_out);
input [3:0] A;
input [3:0] B;
input Mode;

output Carry_out;
output [3:0] Final_Result;

wire [3: 0] nines_Comp;
wire [3: 0] mux_out;

nineComplements G0(nines_Comp,B);

MUX_2_x_1 G1(mux_out,B,nines_Comp,Mode);

BCD_Adder G2(Final_Result,Carry_out,Mode,A,mux_out);


endmodule 
