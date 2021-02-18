// Code your testbench here
// or browse Examples
`timescale 10ns/1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:57:04 02/16/2021
// Design Name:   RTC
// Module Name:   C:/teekam/traffic_ligh/tb.v
// Project Name:  traffic_ligh
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RTC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire EW_RED;
	wire EW_YELLOW;
	wire EW_GREEN;
	wire NS_RED;
	wire NS_YELLOW;
	wire NS_GREEN;

	// Instantiate the Unit Under Test (UUT)
	RTC uut (
		.clk(clk), 
		.rst(rst), 
		.EW_RED(EW_RED), 
		.EW_YELLOW(EW_YELLOW), 
		.EW_GREEN(EW_GREEN), 
		.NS_RED(NS_RED), 
		.NS_YELLOW(NS_YELLOW), 
		.NS_GREEN(NS_GREEN)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		forever #10 clk = ~clk;
end
initial begin		
		rst = 0;
		#20;
		rst=1;
		#20;
		rst =0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  initial begin
      $dumpfile("dump.vcd");
  $dumpvars; 
#1000$finish;
  end
      
endmodule


