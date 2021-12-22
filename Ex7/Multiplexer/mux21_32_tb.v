`timescale 1ns/10ps
module mux21_32_tb;
    reg [31:0] a, b;
    reg s;
    wire [31:0] y;

    localparam period = 20;
    mux21_32 uut (.a(a), .b(b), .s(s), .y(y));
    initial
        begin
            a[0] = 1;
            b[0] = 0;
            a[17] = 0;
            b[17] = 1;
            s = 1;
            #period;
            if (y[17] != 1 || y[0] != 0)
                $display("first test failed");
            else
                $display("first test succeeded");

            a[21] = 0;
            b[21] = 1;
            s = 0;
            #period;
            if (y[21] != 0 || y[0] != 1)
                $display("second test failed");
            else
                $display("second test succeeded");     

        end
endmodule