`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:54:10 AM
// Design Name: 
// Module Name: fullAdder_toProgram
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


module fullAdder_toProgram(
    input   [2:0]SW,
    output  [1:0]LED
    );
    
fullAdder fa1(.a(SW[2]),.b(SW[1]),.cin(SW[0]),.sum(LED[1]),.carry(LED[0]));
endmodule
