module ProjetoMestre4Bits(
	input clockPrincipal,
	output reg[3:0] visorUnidade,
	output reg[3:0] visorDezena,
);

wire[3:0] fioDezena, fioUnidade, fioValorAtual;
wire fioClockLento;

Etapa1_DivisorDeFrequencia etapa1_DivisorDeFrequencia(
	.clock(clockPrincipal),
	.clockLento(fioClockLento),
);

Etapa2_Contador4Bits etapa2_Contador4Bits(
	.clock(fioClockLento),
	.valorAtual(fioValorAtual)
);

Etapa3_DecodificadorBinarioParaBCD etapa3_DecodificadorBinarioParaBCD(
	.numBinario(fioValorAtual),
	.clock(clockPrincipal),
	.saidaDezena(fioDezena),
	.saidaUnidade(fioUnidade)
);

always @ (posedge clockPrincipal)
	begin
		visorDezena = fioDezena;
		visorUnidade = fioUnidade;
	end
endmodule