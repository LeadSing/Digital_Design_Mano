//Banco de pruebas para un decodificador de dos a cuatro líneas

`timescale 1ns / 1ps

module t_Sumador_4_bits_acarreo_rizado;

    wire [3:0] Sum;
    wire C4;
    reg [3:0] A, B;
    reg C0;
    Sumador_4_bits_acarreo_rizado M1 (Sum, C4, A, B, C0);

    initial begin
	
	$dumpfile("t_Sumador_4_bits_acarreo_rizado.vcd");
	$dumpvars(0, t_Sumador_4_bits_acarreo_rizado);
		
        C0 = 1'b0; A = 4'd0; B = 4'd0;
        #100 C0 = 1'b0; A = 4'd1; B = 4'd1;
        #100 C0 = 1'b0; A = 4'd2; B = 4'd2;
        #100 C0 = 1'b0; A = 4'd3; B = 4'd3;
        #100 C0 = 1'b0; A = 4'd4; B = 4'd4;
        #100 C0 = 1'b0; A = 4'd5; B = 4'd5;
        #100 C0 = 1'b0; A = 4'd6; B = 4'd6;
        #100 C0 = 1'b0; A = 4'd7; B = 4'd7;
        #100 C0 = 1'b1; A = 4'd8; B = 4'd8;
        #100 C0 = 1'b1; A = 4'd9; B = 4'd9;
        #100 C0 = 1'b1; A = 4'd10; B = 4'd10;
        #100 C0 = 1'b1; A = 4'd11; B = 4'd11;
        #100 C0 = 1'b1; A = 4'd12; B = 4'd12;
        #100 C0 = 1'b1; A = 4'd13; B = 4'd13;
        #100 C0 = 1'b1; A = 4'd14; B = 4'd14;
        #100 C0 = 1'b1; A = 4'd15; B = 4'd15;

    end

    initial #2000 $finish;

endmodule