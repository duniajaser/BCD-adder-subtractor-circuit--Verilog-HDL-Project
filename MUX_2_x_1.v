// Dunia Jaser 1201345
module MUX_2_x_1(MUXresult,X,Y,selection);
input [3:0] X;//the 4 bit bianry number.
input [3:0] Y;// the 9's complement of the binary number.
input selection;

output [3:0] MUXresult;
reg [3:0]  MUXresult;

always @(X or Y or selection)
if (selection == 1)
	MUXresult = Y;//Subtract case
else
	MUXresult = X;//Add case
endmodule 
