//Modelo Verilog para una primitiva definida por el usuario

primitive UDP_02467 (D, A, B, C);

    output D;
    input A, B, C;

    //Tabla de verdad
    table

//      A   B   C   :   D  Encabezado de columna
        0   0   0   :   1;
        0   0   1   :   0;
        0   1   0   :   1;
        0   1   1   :   0;
        1   0   0   :   1;
        1   0   1   :   0;
        1   1   0   :   1;
        1   1   1   :   1;

    endtable

endprimitive

//Instanciar primitiva

module Circuito_UDP_02467 (e, f, a, b, c, d);

    output e, f;
    input a, b, c, d;

    UDP_02467 (e, a, b, c);
    and (f, e, d);

endmodule