module mux_4bit(input [3:0] D0, D1, D2, D3, output reg [3:0] Y, input S, E);

	always @(posedge E) begin
		if (S == 0)
			Y <= D0;
		else
			Y <= D1;
	end

endmodule
