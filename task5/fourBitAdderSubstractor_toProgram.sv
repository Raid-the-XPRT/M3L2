`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 04:12:21 AM
// Design Name: 
// Module Name: fourBitAdderSubstractor_toProgram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fourBitAdderSubstractor_toProgram(
    input   [9:0]SW,
    output  [4:0]LED
    );
    
logic cout1,cout2,cout3,m;
logic b0,b1,b2,b3;

assign m = SW[9];

xor_gate xg1(.f(b0),.a(SW[0]),.b(m));
xor_gate xg2(.f(b1),.a(SW[1]),.b(m));
xor_gate xg3(.f(b2),.a(SW[2]),.b(m));
xor_gate xg4(.f(b3),.a(SW[3]),.b(m));

fullAdder fa0(.a(SW[5]),.b(b0),.cin(SW[4]),.sum(LED[0]),.carry(cout1));
fullAdder fa1(.a(SW[6]),.b(b1),.cin(cout1),.sum(LED[1]),.carry(cout2));
fullAdder fa2(.a(SW[7]),.b(b2),.cin(cout2),.sum(LED[2]),.carry(cout3));
fullAdder fa3(.a(SW[8]),.b(b3),.cin(cout3),.sum(LED[3]),.carry(LED[4]));

endmodule
