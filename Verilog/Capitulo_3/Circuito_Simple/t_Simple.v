//Banco de pruebas para un circuito simple con retardo de propagación

`timescale 1ns / 1ps

module t_circuito_simple_con_retardo_de_prop;

    wire D, E;
    reg A, B, C;
    circuito_simple_con_retardo_de_prop M1 (A, B, C, D, E);

    initial begin
	
	$dumpfile("t_Simple.vcd");
	$dumpvars(0, t_circuito_simple_con_retardo_de_prop);
		
        A = 1'b0; B = 1'b0; C = 1'b0;
        #100 A = 1'b1; B = 1'b1; C = 1'b1;
    end

    initial #200 $finish;

endmodule
