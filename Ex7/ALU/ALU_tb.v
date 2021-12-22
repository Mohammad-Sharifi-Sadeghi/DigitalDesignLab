`timescale 1ns/10ps

module test_bench;
    reg [31:0] firstInput, secondInput;
    reg [3:0] func;
    wire [31:0] out;
    localparam period = 20;
    ALU uut(.firstInput(firstInput), .secondInput(secondInput), .func(func), .outResult(out));

    initial begin
        firstInput = 32'h03;
        secondInput = 32'h02;
        func = 4'b0110;
        #period;
        if (out == 32'h02)
            $display("first test succeeded");
        else
            $display("second test failed");
        firstInput = 32'h04;
        secondInput = 32'h09;
        func = 4'b0000;
        #period;
        if (out == 32'h0d)
            $display("second test succeeded");
        else 
            $display("second test failed");
    end
endmodule