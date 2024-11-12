`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:18:48 AM
// Design Name: 
// Module Name: and_gate_toProgram
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


module and_gate_toProgram(
    input logic [1:0]SW,
    output logic [0:0]LED
);

logic a,b,out1;

assign a = SW[0];
assign b = SW[1];

assign out1 = LED[0];

and_gate g1(.a(a),.b(b),.f(out1));

endmodule
