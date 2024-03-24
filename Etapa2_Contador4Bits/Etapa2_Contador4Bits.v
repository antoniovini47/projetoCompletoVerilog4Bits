module Etapa2_Contador4Bits(
	input clock,
	output reg[3:0] valorAtual
);

	always @ (posedge clock) begin
		valorAtual<=valorAtual+4'b0001;
	end
endmodule