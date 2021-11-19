`timescale 1ns/10ps

module mux21_64_tb;
    reg [63:0] a, b;
    reg s;
    wire [63:0] y;

    localparam period = 20;
    mux21_64 uut (.a(a), .b(b), .s(s), .y(y));
    initial
        begin
            a[0] = 1;
            b[0] = 0;
            a[37] = 0;
            b[37] = 1;
            s = 1;
            #period;
            if (y[37] != 1 || y[0] != 0)
                $display("first test failed");
            else
                $display("first test succeeded");
                
            a[42] = 0;
            b[42] = 1;
            s = 0;
            #period;
            if (y[42] != 0 || y[0] != 1)
                $display("second test failed");
            else
                $display("second test succeeded");     

        end
endmodule