// SB : Task 1A Combinational Circuit
/*
Instructions
-------------------
Students are not allowed to make any changes in the Module declaration.
This file is used to design 4:1 Multiplexer.

Recommended Quartus Version : 19.1
The submitted project file must be 19.1 compatible as the evaluation will be done on Quartus Prime Lite 19.1.

Warning: The error due to compatibility will not be entertained.
			Do not make any changes to Test_Bench_Vector.txt file. Violating will result into Disqualification.
-------------------
*/

//4:1 MUX design
//Inputs  : I3(MSB), I2, I1, I0(LSB) and Select Lines : S1(MSB), S0(LSB)
//Output  : out

//////////////////DO NOT MAKE ANY CHANGES IN MODULE//////////////////
module Mux_4_to_1(
	input		I3,       //INPUT I3(MSB)    
	input		I2,		 //INPUT I2
	input		I1,       //INPUT I1
	input		I0,		 //INPUT I0
	input		S1,       //SELECT INPUT S1(MSB)
	input		S0,		 //SELECT INPUT S0(LSB)	 
	output	out			 //OUTPUT out			 
);
////////////////////////WRITE YOUR CODE FROM HERE//////////////////// 
wire [1:0] a;
assign a = {S1,S0};
reg outp;
assign out = outp;

always @(*) begin
	case(a)
		2'b00:outp = I0;
		2'b01:outp = I1;
		2'b10:outp = I2;
		2'b11:outp = I3;
	endcase
end
	

////////////////////////YOUR CODE ENDS HERE//////////////////////////
endmodule
///////////////////////////////MODULE ENDS///////////////////////////
