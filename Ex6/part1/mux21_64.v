module mux21_64(a , b, s, y);
    input [63:0]a, b;
    input s;
    output [63:0] y;
    assign y = s ? b : a;
endmodule