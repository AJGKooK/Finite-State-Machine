//module Switch (OP, WA, RA);
//	input[2:0]OP;
//	reg output [1:0]WA;
//	reg output [1:0]RA;
//	reg output enable;
	
//	always@(OP, WA, RA, enable)
//		begin
//			case(OP)
//			3'b000:enable = 1;
				
//			3'b001:DataOut = K;
			
//			3'b010:DataOut = DataIn;
			
//			3'b011:DataOut = R0In;
			
//			3'b100:DataOut = R0In + DataIn;
			
//			3'b101:DataOut = R0In - DataIn;
			
//			3'b110:DataOut = R0In * DataIn;
			
//			3'b111:DataOut = 2^^DataIn;
			
//			endcase
//		end
//endmodule
