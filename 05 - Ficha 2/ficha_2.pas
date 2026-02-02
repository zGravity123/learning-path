program ficha_2;

uses crt, math;

var N, resultado: real;
    S: char;

begin
	textcolor(Yellow);
  writeln('Introduza "R" para raiz quadrada ou "Q" para o quadrado: ');
  readln(S);
  clrscr;
  S := upcase(S); 

  if (S = 'R') or (S = 'Q') then
  
  begin
    writeln('Introduza um número (diferente de zero): ');
    readln(N);

    while N = 0 do
    begin
      writeln('Erro: o número não pode ser ZERO:');
      readln(N);
    end;

    if S = 'Q' then
    begin
      resultado := N * N;
      writeln('O quadrado de ', N:0:2, ' é ', resultado:0:2);
    end;

    if S = 'R' then
    begin
      resultado := sqrt(N);
      writeln('A raiz quadrada de ', N:0:2, ' é ', resultado:0:2);
    end;
  end
  
  else
    writeln('Opção inválida!');

  readkey;
end.
