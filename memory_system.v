module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    
    // Memory wires
    wire[7:0] m0;
    wire[7:0] m1;
    wire[7:0] m2;
    wire[7:0] m3;
    
    // Store wires
    wire s0;
    wire s1;
    wire s2;
    wire s3;
    
    // Data wires
    wire[7:0] d0;
    wire[7:0] d1;
    wire[7:0] d2;
    wire[7:0] d3;


    // DATA DEMUX
    demultiplexer data_demux (
        .data(data),
        .sel(addr),
        .A(d0),
        .B(d1),
        .C(d2),
        .D(d3)
    );
    
    // STORE DEMUX 
    demultiplexer #(.BIT_COUNT(1)) store_demux (
        .data(store),
        .sel(addr),
        .A(s0),
        .B(s1),
        .C(s2),
        .D(s3)
    );
    
    // MUX
    assign memory = addr == 0 ? m0:
                    addr == 1 ? m1:
                    addr == 2 ? m2: m3;
    
    
    byte_memory mem0 (
        .data(d0),
        .store(s0),
        .memory(m0)
    );
    byte_memory mem1 (
        .data(d1),
        .store(s1),
        .memory(m1)
    );
    byte_memory mem2 (
        .data(d2),
        .store(s2),
        .memory(m2)
    );
    byte_memory mem3 (
        .data(d3),
        .store(s3),
        .memory(m3)
    ); 

endmodule