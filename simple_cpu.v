module simple_cpu (
    input clk,
    input rst,
    input [7:0] instruction,
    output reg [7:0] accumulator
);

    reg [7:0] registers [3:0];
    
    wire [1:0] opcode = instruction[7:6];
    wire [1:0] reg_sel = instruction[5:4];
    wire [3:0] immediate = instruction[3:0];

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            accumulator <= 8'b0;
            registers[0] <= 8'b0;
            registers[1] <= 8'b0;
            registers[2] <= 8'b0;
            registers[3] <= 8'b0;
        end else begin
            case (opcode)
                2'b00: accumulator <= {4'b0, immediate}; 
                2'b01: accumulator <= accumulator + registers[reg_sel];
                2'b10: registers[reg_sel] <= accumulator;
                2'b11: accumulator <= accumulator & {4'b0, immediate};
            endcase
        end
    end

endmodule
