`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2024 05:46:09 PM
// Design Name: 
// Module Name: halfadder_test
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


module halfaer_test();
    logic A;
    logic B;
    wire Cout;
    wire Sum;
    halfadder myhalfadder(A, B, Cout, Sum);
    initial begin
    // Initialize Inputs
        B = 0;
        #10; // Wait 10ns before inputs start changing
    // Inputs change every 1 ns, going from 00 to 11
        #1 {A, B} = 2'b01;
        #1 {A, B} = 2'b10;
        #1 {A, B} = 2'b11;
        #5 $finish; // Wait another 5 ns, and then finish simulation
    end
endmodule
