`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:49:34 04/20/26
// Design Name:    
// Module Name:    spi_master
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module spi_master (
    input clk,
    input rst,
    input start,
    input [7:0] data_in,
    output reg mosi,
    output reg sclk,
    output reg cs,
    output reg done
);

reg [2:0] bit_cnt;
reg [7:0] shift_reg;
reg [3:0] clk_div;
reg busy;

wire sclk_en;

assign sclk_en = (clk_div == 4);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        mosi <= 0;
        sclk <= 0;
        cs <= 1;
        done <= 0;
        bit_cnt <= 0;
        shift_reg <= 0;
        clk_div <= 0;
        busy <= 0;
    end else begin
        done <= 0;

        if (start && !busy) begin
            busy <= 1;
            cs <= 0;
            shift_reg <= data_in;
            bit_cnt <= 0;
            clk_div <= 0;
            sclk <= 0;
        end

        if (busy) begin
            clk_div <= clk_div + 1;

            if (sclk_en) begin
                clk_div <= 0;
                sclk <= ~sclk;

                if (sclk == 0) begin
                    mosi <= shift_reg[7];
                    shift_reg <= {shift_reg[6:0], 1'b0};

                    if (bit_cnt == 7) begin
                        busy <= 0;
                        cs <= 1;
                        done <= 1;
                    end

                    bit_cnt <= bit_cnt + 1;
                end
            end
        end
    end
end

endmodule