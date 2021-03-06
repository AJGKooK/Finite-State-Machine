module ALU (DataIn, R0In, OP, DataOut, counter, K);
	input [4:0]DataIn, R0In;
	input[2:0]OP;
	input[1:0]K;
	input [1:0]counter;
	output [4:0]DataOut;
	reg [4:0]DataOut;

	
	always@(DataIn, R0In, OP, counter, K)
		begin
			case(OP)
			3'b000:
				begin
					case(counter)
						2'b00:DataOut = 0;
						2'b01:DataOut = 1;
						2'b10:DataOut = 2;
						2'b11:DataOut = 3;
					endcase
				end
				
			3'b001:DataOut = K;
			
			3'b010:DataOut = DataIn;
			
			3'b011:DataOut = R0In;
			
			3'b100:DataOut = R0In + DataIn;
			
			3'b101:DataOut = R0In - DataIn;
			
			3'b110:DataOut = R0In * DataIn;
			
			3'b111:DataOut = 2^^DataIn;
			
			endcase
		end
endmodule
