module demultiplexer #(
    parameter BIT_COUNT = 8 
)(
    input [BIT_COUNT-1:0] data,
    input [1:0] sel,
    output reg [BIT_COUNT-1:0] A,
    output reg [BIT_COUNT-1:0] B,
    output reg [BIT_COUNT-1:0] C,
    output reg [BIT_COUNT-1:0] D
);

    always @(*) begin 
        case(sel)
            2'b00: {D, C, B, A} <= {{BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}, data}; 
            2'b01: {D, C, B, A} <= {{BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}, data, {BIT_COUNT{1'b0}}};
            2'b10: {D, C, B, A} <= {{BIT_COUNT{1'b0}}, data, {BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}};
            2'b11: {D, C, B, A} <= {data, {BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}};
        endcase
    end

endmodule
