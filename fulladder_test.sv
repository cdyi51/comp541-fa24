`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2024 06:23:25 PM
// Design Name: 
// Module Name: fulladder_test
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


module fulladder_test();
    logic A;
    logic B;
    logic Cin;
    wire Sum;
    wire Cout;
    fulladder myfulladder(A, B, Cin, Cout, Sum);
    initial begin
    // Initialize Inputs
        A = 0;
        B = 0;
        Cin = 0;
        #10; // Wait 10ns before inputs start changing
        // Inputs change every 1 ns, going from 00 to 11
        #1 {A, B, Cin} = 3'b001;
        #1 {A, B, Cin} = 3'b010;
        #1 {A, B, Cin} = 3'b011;
        #1 {A, B, Cin} = 3'b100;
        #1 {A, B, Cin} = 3'b101;
        #1 {A, B, Cin} = 3'b110;
        #1 {A, B, Cin} = 3'b111;
        
        #5 $finish; // Wait another 5 ns, and then finish simulation
        end
endmodule
