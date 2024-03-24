module Etapa1_DivisorDeFrequencia(
	input clock,
	output reg clockLento
);

integer contador;

always @ (posedge clock)
	begin
		if (contador<=250) begin
			contador = contador + 1;
		end else begin
			clockLento<=!clockLento;
			contador=0;
		end
	end
endmodule