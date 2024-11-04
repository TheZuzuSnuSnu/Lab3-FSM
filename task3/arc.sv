module arc #(
    parameter WIDTH = 16
)(
    input logic clk,
    input logic rst,
    input logic [WIDTH-1:0] N,
    output logic [7:0] data_out
);

logic tick;

clktick my_tick(
    .clk(clk),
    .rst(rst),
    .en(1'b1),
    .N(N),
    .tick(tick)
);

f1_fsm my_fsm(
    .rst(rst),
    .clk(clk),
    .en(tick),
    .data_out(data_out)
);

endmodule
