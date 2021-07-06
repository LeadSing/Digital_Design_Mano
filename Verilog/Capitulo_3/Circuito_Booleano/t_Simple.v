//Banco de pruebas para un circuito simple con retardo de propagación

`timescale 1ns / 1ps

module t_circuito_booleano;

    wire F, E;
    reg A, B, C, D;
    circuito_booleano M1 (E, F, A, B, C, D);

    initial begin
	
	$dumpfile("t_Simple.vcd");
	$dumpvars(0, t_circuito_booleano);
		
        A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
        #100 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;
    end

    initial #200 $finish;

endmodule
