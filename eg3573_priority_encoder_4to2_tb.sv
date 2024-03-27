module priority_encoder_4to2_tb;
    // Inputs
    logic [3:0] d_in;
    
    // Outputs
    logic [1:0] d_out;
    logic error;
    
    // Instantiate the priority encoder module
    priority_encoder_4to2 uut (
        .d_in(d_in),
        .d_out(d_out),
        .error(error)
    );

    // Stimulus
    initial begin
        // Test case 1: Bit 3 is set
        d_in = 4'b1000;
        #10;

        // Test case 2: Bit 2 is set
        d_in = 4'b0100;
        #10;

        // Test case 3: Bit 1 is set
        d_in = 4'b0010;
        #10;

        // Test case 4: Bit 0 is set
        d_in = 4'b0001;
        #10;

        // Test case 5: No bit is set
        d_in = 4'b0000;
        #10;

        // Additional test case: Multiple bits are set
        d_in = 4'b1100;
        #10;

        // End simulation
        $finish;
    end

endmodule

