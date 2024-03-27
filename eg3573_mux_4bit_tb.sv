module mux_4bit_tb();

	reg [3:0] D0, D1, D2, D3;
	reg S, E;
	wire [3:0] Y;

	// create mux instance
	mux_4bit uut(
		.D0(D0),
                .D1(D1),
                .D2(D2),
                .D3(D3),
                .Y(Y),
                .S(S),
                .E(E)

	);

	//intial block for stimuli gen
	initial begin
		//apply inputs
		D0 = 4'b0001;
                D1 = 4'b0010;
                D2 = 4'b0100;
                D3 = 4'b1000;

		//disable 
		E = 0;

		//set to 0
		S = 0;

		//enable and observe output
		#10 E = 1;
		#10 E = 0;

		//set to 1
		S = 1;

		//emnable and observe output
		#10 E = 1;
		#10 E = 0;

		//end sim
		#10 $finish;

	end

endmodule

