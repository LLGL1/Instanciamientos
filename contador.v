module contador(
       input iclk,
		 input iCE,
		 output [3:0]oSalidas	  
);


reg [3:0]rCounter_S=4'b0000;
reg [3:0]rCounter_Q=4'b0000;

assign oSalidas = rCounter_Q;

always @(posedge iclk)
begin
    if (iCE) 
	 begin
	   rCounter_Q <= rCounter_S;
	 end 
	 else 
	 begin 
	   rCounter_Q <= rCounter_Q;
	 end 
end 

always @ *
begin 
 rCounter_S = rCounter_Q +1'd1;
end


//module contador(
//input iclk,
//output reg [3:0]oSalidas
//);
//reg [3:0]rCuenta_S = 4'd0;
//reg [3:0]rCuenta_Q = 4'd0;
//always @ (posedge iclk)
//begin
//if (oSalidas == 4'd15)
//begin
//oSalidas = 4'd0;
//end
//else
//begin
//oSalidas = oSalidas  + 4'd1;
//end
//end

endmodule 