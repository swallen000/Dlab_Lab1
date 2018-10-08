module ALU( OUT, A, B, MODE);


//############
// your design
//############
	input [3:0]A,B;
	input [1:0]MODE;
	output reg [7:0]OUT;
	always@(A or B or MODE)
	begin
	  case(MODE)
		2'b00:  OUT=A+B;
		2'b01:  OUT=A&B;
		2'b10:  if(A>B) OUT=8'b00000001;
			else    OUT=8'b00000000;  
		2'b11:  OUT=A>>B;
	  endcase
	end





endmodule
