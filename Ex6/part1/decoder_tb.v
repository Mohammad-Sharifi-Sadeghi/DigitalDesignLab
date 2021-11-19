`timescale 1ns/10ps

module decoder_tb;
    reg a, b, c, d;
    output wire [15:0] o;

    localparam period = 20;
    decoder uut (.a(a), .b(b), .c(c), .d(d), .o(o));
    integer i;
    reg flag;
    initial
        begin
            flag = 0;
            a = 1;
            b = 0;
            c = 1;
            d = 1;
            #period;
            for (i = 0;i < 16;i = i + 1)
                begin
                    if (i == 11)
                        if(!o[i])
                            flag = 1;
                    if (i != 11)
                        if(o[i])
                            flag = 1;
                end
            if (!flag)
                $display("first test succeeded");
            else
                $display("first test failed");

            flag = 0;
            a = 0;
            b = 0;
            c = 1;
            d = 1;
            #period;
            for (i = 0;i < 16;i = i + 1)
                begin
                    if (i == 3)
                        if(!o[i])
                            flag = 1;
                    if (i != 3)
                        if(o[i])
                            flag = 1;
                end
            if (!flag)
                $display("second test succeeded");
            else
                $display("second test failed");
        end
endmodule