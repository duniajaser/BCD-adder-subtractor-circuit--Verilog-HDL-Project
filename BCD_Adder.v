// Dunia jaser 1201345
module BCD_Adder(Sum,carry_out,carry_in,X,Y);
input carry_in;
input [3:0] X;
input [3:0] Y;

wire [3:0] Temporary;
wire [3:0] add_6_or_0;
wire temp_carry;

output [3:0] Sum;
output carry_out;

assign {temp_carry,Temporary}=X+Y+carry_in;
// to check whether the output is greater than 6
assign  add_6_or_0[0] = 0;
assign	add_6_or_0[1] = temp_carry || (Temporary[3]&&Temporary[2]) || (Temporary[1]&&Temporary[3]);
assign	add_6_or_0[2] = temp_carry || (Temporary[3]&&Temporary[2]) || (Temporary[1]&&Temporary[3]);
assign	add_6_or_0[3]=0;

assign {carry_out,Sum}= Temporary + add_6_or_0;
endmodule 
