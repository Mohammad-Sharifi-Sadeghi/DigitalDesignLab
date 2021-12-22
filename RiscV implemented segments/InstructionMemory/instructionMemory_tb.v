`timescale 1ns/1ps
module instructionMemory_tb;
   reg [5:0] address;
   wire [31:0] instruction;
   localparam period = 20;
   instructionMemory uut(.addr(address), .out(instruction));
   initial begin
      address<=0;
      #period;
      $display(instruction);
   end
endmodule