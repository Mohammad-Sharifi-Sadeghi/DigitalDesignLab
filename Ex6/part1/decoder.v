module decoder(a, b, c, d, o);

    input wire a, b, c, d;
    output wire [15:0] o;

    assign o[0] = !a & !b & !c & !d;//0
    assign o[1] = !a & !b & !c & d;//1
    assign o[2] = !a & !b & c & !d;//2
    assign o[3] = !a & !b & c & d;//3
    assign o[4] = !a & b & !c & !d;//4
    assign o[5] = !a & b & !c & d;//5
    assign o[6] = !a & b & c & !d;//6
    assign o[7] = !a & b & c & d;//7
    assign o[8] = a & !b & !c & !d;//8
    assign o[9] = a & !b & !c & d;//9
    assign o[10] = a & !b & c & !d;//10
    assign o[11] = a & !b & c & d;//11
    assign o[12] = a & b & !c & !d;//12
    assign o[13] = a & b & !c & d;//13
    assign o[14] = a & b & c & !d;//14
    assign o[15] = a & b & c & d;//15
endmodule