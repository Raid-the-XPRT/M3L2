`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 03:28:05 AM
// Design Name: 
// Module Name: fourBitAdder_toProgram
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


module fourBitAdder_toProgram(
    input   [8:0]SW,
    output  [4:0]LED
    );
    
logic cout1,cout2,cout3;

fullAdder fa0(.a(SW[5]),.b(SW[0]),.cin(SW[4]),.sum(LED[0]),.carry(cout1));
fullAdder fa1(.a(SW[6]),.b(SW[1]),.cin(cout1),.sum(LED[1]),.carry(cout2));
fullAdder fa2(.a(SW[7]),.b(SW[2]),.cin(cout2),.sum(LED[2]),.carry(cout3));
fullAdder fa3(.a(SW[8]),.b(SW[3]),.cin(cout3),.sum(LED[3]),.carry(LED[4]));

endmodule
