//Banco de pruebas para un decodificador de dos a cuatro líneas

`timescale 1ns / 1ps

module t_Decoder_2x4_gates;

    wire [0:3] D;
    reg A, B, enable;
    decoder_2x4_gates M1 (D, A, B, enable);


    initial begin
	
	$dumpfile("t_Decoder_2x4_gates.vcd");
	$dumpvars(0, t_Decoder_2x4_gates);
		
        enable = 1'b0; A = 1'b0; B = 1'b0;
        #100 enable = 1'b0; A = 1'b0; B = 1'b1;
        #100 enable = 1'b0; A = 1'b1; B = 1'b0;
        #100 enable = 1'b0; A = 1'b1; B = 1'b1;
        #100 enable = 1'b1; A = 1'b0; B = 1'b0;
        #100 enable = 1'b1; A = 1'b0; B = 1'b1;
        #100 enable = 1'b1; A = 1'b1; B = 1'b0;
        #100 enable = 1'b1; A = 1'b1; B = 1'b1;
    end

    initial #1000 $finish;

endmodule