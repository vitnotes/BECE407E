module IR(data_in,load,clk,data_out);
input [7:0] data_in;
input clk,load;
output reg [7:0] data_out;
always@(posedge clk)
begin
	if(load)
		begin
			data_out<=data_in;
		end
end
endmodule