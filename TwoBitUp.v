module TwoBitUp(input clk, reset, output[1:0] counter
    );
reg [1:0] counter_up;

always @(posedge clk or posedge reset)
begin
if(reset)
 counter_up <= 2'd0;
else
 counter_up <= counter_up + 2'd1;
end 
assign counter = counter_up;
endmodule