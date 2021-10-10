module mux41 (w0,w1,w2,w3,s,f);
	input [4:0]w0,w1,w2,w3;
	input[1:0]s;
	output [4:0]f;
	reg [4:0]f;
	
	always@(w0,w1,w2,w3,s)
		begin
			case(s)
			2'b00:f=w0;
			2'b01:f=w1;
			2'b10:f=w2;
			2'b11:f=w3;
			endcase
		end
endmodule
	