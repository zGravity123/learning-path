Program Ficha_Ex3;
var Nome: string;
	 salario,S:real;
begin
  writeln('Qual o seu nome?');
  readln(Nome);
  writeln('Qual o seu salário?');
  readln(S);
  
  salario:= S * 0.85;
  
  writeln('O salario de ',nome ,' foi atualizado para: ', salario:0:2);
    
  readkey;
end.
