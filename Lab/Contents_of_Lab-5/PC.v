module PC(data_in,load,clk,clr,inc,data_out);
input [5:0] data_in;
input load,clk,clr,inc;
output reg [5:0] data_out;
always@(posedge clk)
begin
	if (clr) data_out<=6'b000_000;
	else if (load) data_out<=data_in;
	else if (inc) data_out<=data_out+1;
end
endmodule