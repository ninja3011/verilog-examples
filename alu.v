module alu(
    input [7:0] A, B,
    input [3:0] sel,
    output [7:0] out,
    output carry_out);

    reg [7:0] reg_out;
    wire [8:0] tmp;
    assign out = reg_out;
    assign tmp = {1'b0,A} + {1'b0,B};
    assign carry_out = tmp[8];

    always @(*) begin
        case(sel)
        4'b0000: reg_out = A + B;
        4'b0001: reg_out = A - B; 
        4'b0010: reg_out = A & B;
        4'b0011: reg_out = A ^ B; 
        default: reg_out = A + B;
        endcase
    end 
endmodule