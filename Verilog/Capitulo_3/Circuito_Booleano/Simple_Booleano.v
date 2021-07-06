//Modelo Verilog de circuito con expresiones booleanas.

module circuito_booleano (E, F, A, B, C, D);

    output E, F;
    input A, B, C, D;

    assign E = A || (B && C) || ((!B) && D); // E = A + BC + B'D
    assign F = ((!B) && C) || (B && (!C) && (!D)); // F = B'C + BC'D'

endmodule