`timescale 1ns/10ps

module register_tb;

    reg [63:0] in;
    reg E, Clk, RW;
    wire [63:0] out;
    localparam period = 20;


    initial begin
        Clk = 0;
        forever begin
            #period Clk = ~Clk;
        end
    end

    register uut (.dataIn(in), .dataOut(out), .E(E), .Clock(Clk), .RW(RW));

    initial begin

        E = 1;
        in[28] = 1;
        RW = 0;
        #period;
        RW = 1;
        #period;

        if(out[28] != 1)
            $display("first test failed");
        else
            $display("first test succeeded");

        in[28] = 0;
        RW = 0;
        #period;
        RW = 1;
        #period;
        if(out[28] != 0)
            $display("second test failed");
        else
            $display("second test succeeded");
    end
endmodule