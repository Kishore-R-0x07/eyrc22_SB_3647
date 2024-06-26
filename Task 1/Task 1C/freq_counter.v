// SB : Task 1C Frequency Counter
/*
Instructions
-------------------
Students are not allowed to make any changes in the Module declaration.
This file is used to design 2:1 Multiplexer.

Recommended Quartus Version : 19.1
The submitted project file must be 19.1 compatible as the evaluation will be done on Quartus Prime Lite 19.1.

Warning: The error due to compatibility will not be entertained.
			Do not make any changes to Test_Bench_Vector.txt file. Violating will result into Disqualification.
-------------------
*/

//Freq Counter design
//Inputs	: clk & ip_sig (input signal)
//Output	: count (8 bits)

//////////////////DO NOT MAKE ANY CHANGES IN MODULE//////////////////
module freq_counter(
	input clk,
	input ip_sig,

	output reg [7:0] count = 0
);


////////////////////////WRITE YOUR CODE FROM HERE//////////////////// 

reg prev_ip = 0;
reg [7:0] c = 0;
always @(posedge clk) begin
	if (ip_sig) c <= c + 1;
	else if (~ip_sig & prev_ip) begin
		count <= c;
		c <= 0;
	end
	prev_ip <= ip_sig;
end	

////////////////////////YOUR CODE ENDS HERE//////////////////////////
endmodule
///////////////////////////////MODULE ENDS///////////////////////////
