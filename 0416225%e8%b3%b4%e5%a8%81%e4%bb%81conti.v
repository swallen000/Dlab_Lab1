module ALU( OUT, A, B, MODE);



//############
// your design
//############
	input [3:0]A,B;
	input [1:0]MODE;
	output [7:0]OUT;
		//assign OUT=(MODE==2'b00)?(A+B):
		//assign OUT=(MODE==2'b01)?(A&B):
		//assign OUT=((MODE==2'b10)&&(A>B))?(8'b00000001):(8'b00000000);
		//assign OUT=(MODE==2'b11)?(A>>B):
		
		assign OUT= (MODE[0]) ? (MODE[1]? A>>B : A&B) : (MODE[1] ? (A > B ? 
		8'b00000001 : 8'b00000000): A+B);



endmodule
