module ALU (
    input [31:0] firstInput, secondInput,
    input [3:0] func,
    output [31:0] outResult
);
    reg [31:0] out;
    assign outResult = out;
    always @(*) begin
        if (func == 4'b0000) // PLUS
            out = firstInput + secondInput;
        else if (func == 4'b0001) // MINUS
            out = firstInput - secondInput;
        else if (func == 4'b0010) // MULTIPLY
            out = firstInput * secondInput;
        else if (func == 4'b0011) // DIVIDE
            out = firstInput / secondInput;
        else if (func == 4'b0100) // ShiftLeft
            out = firstInput << 1;
        else if (func == 4'b0101) // ShiftRight
            out = firstInput >> 1;
        else if (func == 4'b0110) // AND
            out = firstInput & secondInput;
        else if (func == 4'b0111) // OR
            out = firstInput | secondInput;
        else if (func == 4'b1000) // XOR
            out = firstInput ^ secondInput;
        else if (func == 4'b1001) // NOR
            out = ~(firstInput | secondInput);
        else if (func == 4'b1010) // nand
            out = ~(firstInput & secondInput);
        else if (func == 4'b1011) // nxor
            out = ~(firstInput ^ secondInput);
        else if (func == 4'b1100) // greater than
            out = (firstInput > secondInput) ? 32'h01 : 32'h00;
        else if (func == 4'b1101) // equal
            out = (firstInput == secondInput) ? 32'h01 : 32'h00;
        else
            out = firstInput + secondInput; // invalid functions 
    end
endmodule