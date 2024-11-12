`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:17:59 AM
// Design Name: 
// Module Name: halfAdder_toProgram
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


module halfAdder_toProgram(
    input   [1:0]SW,
    output  [1:0]LED
    );
logic a,b,c,s;
halfAdder ha1(.a(SW[0]),.b(SW[1]),.s(LED[0]),.carry(LED[1]));

    
endmodule
