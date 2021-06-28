
module dff(clk, d, reset_n, en, q);

input [3:0] d;
input clk, reset_n, en;
output reg [3:0] q;

always@(posedge clk or negedge reset_n or negedge en)
begin
	if (!reset_n) q <= 0;
	else if(!en) q <= q;
	else if(clk) q <= d;
	else q <= q;
end

endmodule
