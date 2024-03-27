module priority_encoder_4to2 //using an if-else-if series to model a priority encoder
	(input logic [3:0] d_in,
		output logic [1:0] d_out,
		output logic error
	);
	always_comb begin
		error = '0;
		if (d_in[3]) d_out = 2'h3; //bit 3 is set
		else if (d_in[2]) d_out = 2'h2; //bit 2 is set
		else if (d_in[1]) d_out = 2'h1; //bit 1 is set
		else if (d_in[0]) d_out = 2'h0; //bit 0 is set
		else begin
			d_out = 2'b0;
			error = '1;
		end
	end
endmodule: priority_encoder_4to2
