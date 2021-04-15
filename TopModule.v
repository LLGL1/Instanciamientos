module TopModule(    /*instanciamineto contar del 0 al 15 */
  input iclk,
  //input ibutton,
  output [6:0]oSalidas
  );
  
wire wSalidaDFEntradacounter;
wire [3:0] wSalidacounterEntradaBCD ;

 
DF             Module1(
.iclk (iclk),
.oSalidas ( wSalidaDFEntradacounter)
);

contador     Module2(
.iclk (iclk),
.iCE (wSalidaDFEntradacounter),
.oSalidas (wSalidacounterEntradaBCD )
);

BCD         Module3(
.iEntradas (wSalidacounterEntradaBCD),//.iEntradas (ibutton),
.oSalidas (oSalidas)
);

endmodule      





