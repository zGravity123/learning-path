Program Pzim;

type
    Pessoa = record
        nome: string[50];
        idade: integer;
        posicao: string[30];
        altura: real;
    end;
		 
var
    pessoas: array[1..8] of Pessoa;
    somaIdade, somaAltura: real;
    medIdade, medAltura: real;
  
procedure perguntas;
var j: integer;
Begin
	for j := 1 to 8 do
	Begin
		clrscr;
		textcolor(cyan);
		writeln(' ======= Jogador ',j,' ======= ');
		writeln;
		write('Introduza o nome do jogador: ');
		readln(pessoas[j].nome);
		
		write('Introduza a idade do jogador: ');
		readln(pessoas[j].idade);

		write('Introduza a altura do jogador (em metros): ');
		readln(pessoas[j].altura);
		
		write('Introduza a posição do jogador: ');
		readln(pessoas[j].posicao);
	End; 
End;
	
procedure contas;
var i: integer;
begin
	somaIdade := 0;
	somaAltura := 0;
	
	for i := 1 to 8 do
	begin
		somaIdade := somaIdade + pessoas[i].idade;
		somaAltura := somaAltura + pessoas[i].altura;
	end;
		
	medIdade := somaIdade / 8;
	medAltura := somaAltura / 8;
end;

procedure mostrar_valores;
var j: integer;
Begin
	clrscr;
	textcolor(cyan);
	writeln('============= INFORMAÇÕES DOS JOGADORES =============');
	writeln;
	writeln('Nome       | Idade | Posição    | Altura');
	writeln('-----------+-------+------------+--------');
	
	for j := 1 to 8 do
	begin
		writeln(
			pessoas[j].nome:10, ' | ',
			pessoas[j].idade:5, ' | ',
			pessoas[j].posicao:10, ' | ',
			pessoas[j].altura:5:2
		);
	end;
	
	writeln;
	writeln('Média das idades: ', medIdade:0:2);
	writeln('Média das alturas: ', medAltura:0:2);
	readkey; 
end;

Begin
	perguntas;
	contas;
	mostrar_valores;
End.