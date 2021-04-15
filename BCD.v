module BCD(
input[3:0]iEntradas,
output[6:0]oSalidas
);


reg [6:0]rsalida_Q;
reg [6:0]rsalida_S;


assign oSalidas = rsalida_S;


// bloque combinacional
always @ *
case (iEntradas)
                         // abcdefg
	4'b0000 : rsalida_S = 7'b0000001;//0
	4'b0001 : rsalida_S = 7'b1001111;//1
	4'b0010 : rsalida_S = 7'b0010010;//2
	4'b0011 : rsalida_S = 7'b0000110;//3
	4'b0100 : rsalida_S = 7'b1001100;//4
	4'b0101 : rsalida_S = 7'b0100100;//5
	4'b0110 : rsalida_S = 7'b1100000;//6
	4'b0111 : rsalida_S = 7'b0001111;//7
	4'b1000 : rsalida_S = 7'b0000000;//8
	4'b1001 : rsalida_S = 7'b0001100;//9
	4'b1010 : rsalida_S = 7'b0001000;//A
	4'b1011 : rsalida_S = 7'b1100000;//B
	4'b1100 : rsalida_S = 7'b0110001;//C
	4'b1101 : rsalida_S = 7'b1000010;//D
	4'b1110 : rsalida_S = 7'b0110000;//E
	4'b1111 : rsalida_S = 7'b0111000;//F
	default: rsalida_S = 7'b1111111;

endcase

endmodule
 