`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:50:27 04/20/2026
// Design Name:   spi_master
// Module Name:   spi_master_tb.v
// Project Name:  spi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: spi_master
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module spi_tb;

reg clk;
reg rst;
reg start;
reg [7:0] data_in;

wire mosi;
wire sclk;
wire cs;
wire done;

spi_master uut (
    .clk(clk),
    .rst(rst),
    .start(start),
    .data_in(data_in),
    .mosi(mosi),
    .sclk(sclk),
    .cs(cs),
    .done(done)
);

// clock 10ns period
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    start = 0;
    data_in = 8'b10101010;

    #20 rst = 0;

    #20 start = 1;
    #10 start = 0;

    #500;

    $stop;
end

initial begin
    $monitor("t=%0t rst=%b start=%b data=%b mosi=%b sclk=%b cs=%b done=%b",
             $time, rst, start, data_in, mosi, sclk, cs, done);
end

endmodule