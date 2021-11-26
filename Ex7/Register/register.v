module register(dataIn, dataOut, E, Clock, RW);
    reg [63:0] value;
    input wire[63:0] dataIn;
    input wire E, Clock, RW;
    output reg [63:0] dataOut;
    always @(posedge Clock) begin
        if (E == 1)
        begin
            if (RW == 0)
                assign value = dataIn;
            else
                assign dataOut = value;    
        end
    end
endmodule