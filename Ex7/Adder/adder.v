module add(addr, const, out);
    output [31:0] out;
    input [31:0] addr, const;
    assign out = const + addr;
endmodule