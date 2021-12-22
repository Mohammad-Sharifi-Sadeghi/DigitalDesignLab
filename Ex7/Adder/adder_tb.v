`timescale 1ns/10ps

module test_bench;
    reg [31:0] addr, const;
    wire [31:0] result;
    localparam period = 20;
    add uut(.addr(addr), .const(const), .out(result));

    initial begin
        addr = 32'h03;
        const = 32'h04;
        #period;
        if(32'h07 == result) begin
            $display(result);            
        end

        addr = 32'h0A;
        #period;
        if(32'h0e == result) begin
            $display(result);            
        end
    end
endmodule