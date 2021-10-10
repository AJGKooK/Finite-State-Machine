module StateMachine (DataIn, OP, DataOut, CountOut, RA, WA, K, clk);
	input [4:0]DataIn;
	input[2:0]OP;
	input[1:0]K;
	input clk;
	
		output [1:0]CountOut;
	reg [1:0]CountOut;
		output [1:0]RA;
	reg [1:0]RA;
		output [1:0]WA;
	reg [1:0]WA;
		output [4:0]DataOut;
	reg [4:0]DataOut;
	
	
	always@(posedge clk)
		begin
			case(OP)
			3'b000:begin
			DataOut = DataIn; 
			WA = CountOut;
			CountOut = CountOut + 1;
			end
				
			3'b001:begin
			WA = 2'b00;
			DataOut = DataIn; 
			end
			
			3'b010:begin
			WA = 2'b00;
				case(K)
				2'b00:RA = 2'b00;
				2'b01:RA = 2'b01;
				2'b10:RA = 2'b10;
				2'b11:RA = 2'b11;
				endcase
				DataOut = DataIn; 

			end
			
			3'b011:begin
				case(K)
				2'b00:WA = 2'b00;
				2'b01:WA = 2'b01;
				2'b10:WA = 2'b10;
				2'b11:WA = 2'b11;
				endcase
				DataOut = DataIn; 
			end
			
			3'b100:begin
				case(K)
				2'b00:RA = 2'b00;
				2'b01:RA = 2'b01;
				2'b10:RA = 2'b10;
				2'b11:RA = 2'b11;
				endcase
			WA = 2'b00;
			DataOut = DataIn; 
			end
			
			3'b101:begin
				case(K)
				2'b00:RA = 2'b00;
				2'b01:RA = 2'b01;
				2'b10:RA = 2'b10;
				2'b11:RA = 2'b11;
				endcase
			WA = 2'b00;
			DataOut = DataIn; 
			end
			
			3'b110:begin
				case(K)
				2'b00:RA = 2'b00;
				2'b01:RA = 2'b01;
				2'b10:RA = 2'b10;
				2'b11:RA = 2'b11;
				endcase
			WA = 2'b00;
			DataOut = DataIn; 
			end
			
			3'b111:begin
				case(K)
				2'b00:RA = 2'b00;
				2'b01:RA = 2'b01;
				2'b10:RA = 2'b10;
				2'b11:RA = 2'b11;
				endcase
			WA = 2'b00;
			DataOut = DataIn; 
			end
			
			endcase
		end
endmodule