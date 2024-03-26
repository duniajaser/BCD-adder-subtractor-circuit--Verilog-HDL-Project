// Dunia Jaser 1201345
module nineComplements(Y,X);
input [3:0] X;
output [3:0] Y;


assign Y[0] = !X[0];
assign Y[1] = X[1];
assign Y[2]= X[2]^X[1];
assign Y[3]= (!X[3]) && (!X[2]) && (!X[1]) ;

endmodule 
