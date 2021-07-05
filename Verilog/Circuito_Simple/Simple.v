// Modelo Verilog de circuito simple con retardo de propagración

`timescale 1ns/1ps

module circuito_simple_con_retardo_de_prop (A, B, C, D, E);

    output D, E;
    input A, B, C;
    wire w1;

    and #30 G1 (wl, A, B);
    not #10 G2 (E, C);
    or #20 G3 (D, w1, E);

endmodule
