Program Pzim ;
var texto: text;
		idade,i,n,dia,mes,ano,p: integer;
		nome: string;

Begin
  
  assign(texto, 'idades.txt');
  rewrite(texto);
  
  writeln('Com quantas pessoas deseja trabalhar?');
	readln(n);
	
	for i := 1 to n do
		Begin
			writeln('Qual o nome da Pessoa ',i,'?');
			readln(nome);
			writeln('Introduza a data de nascimento:');
			write('Dia: ');
			read(dia);
			write('Mês: ');
			read(mes);
			write('Ano: ');
			read(ano);
			
			idade := 2026 - ano;
			
			write(texto,nome); write(texto,'-');
			write(texto,idade);
			writeln(texto);
		End;
	close(texto);
	readkey;
End.