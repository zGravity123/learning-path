Program Ficha_Ex4;
var Nome1,Nome2: string;
	 salario1,salario2,S1,S2:real;
begin
  writeln('Qual o nome do funcionário 1');
  readln(Nome1);
  writeln('Qual o nome do funcionário 2');
  readln(Nome2);
  writeln('Qual o salário do funcionário 1?');
  readln(S1);
  writeln('Qual o salário do funcionário 2');
  readln(S2);
  
  salario1:= S1 * 0.85;
  salario2:= S2 * 0.85;
  
  writeln('O salario de ',nome1 ,' foi atualizado para: ', salario1:0:2);
  writeln('O salario de ',nome2 ,' foi atualizado para: ', salario2:0:2);
  writeln('A media dos dois funcionários é: ', ( salario1 + salario2 )/2:0:2);
    
  readkey;
end.
