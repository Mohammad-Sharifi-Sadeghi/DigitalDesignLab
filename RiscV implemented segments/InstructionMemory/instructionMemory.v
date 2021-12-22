module instructionMemory(addr, out);
   input [5:0] addr;
   output [31:0] out;
   reg [31:0] ram[0:63];
   initial $readmemh("ram.dat", ram); // create virtual ram
   assign out = ram[addr];
endmodule