Program Pzim;
uses crt;

var
  hc, ht, dj: integer;
  op: char;

label home;

Begin
home:
  clrscr;
  textcolor(Cyan);

  // Coleta dos dados inseridos
  
  writeln('Digite a hora de início do jogo:');
  readln(hc);

  writeln('Digite a hora do término do jogo:');
  readln(ht);

  // Calcula a duração do jogo
  
  if hc < ht then
    dj := ht - hc  
  else
    dj := 24 - hc + ht; 

  // Verifica se a duração é válida (entre 1 e 24 horas)
  if (dj >= 1) and (dj <= 24) then
    writeln('A duração do jogo foi de ', dj, ' horas!')
  else
    writeln('Erro! A duração do jogo não pode ser maior que 24 horas');

  readkey;

  clrscr;
  writeln('Pressione A para reiniciar ou B para sair');
  readln(op);
  op := upcase(op);

  if op = 'A' then
    goto home
  else
  begin
    clrscr;
    writeln('Saindo do programa...');
    delay(500);
  end;
End.
