module CountEnable (enable,OP);
	input[2:0]OP;
	output enable;
	reg enable;		
	
			always@(OP,enable)
		begin
			case(OP)
			3'b000: enable = 1;
			endcase
		end
		
		
		
endmodule
	