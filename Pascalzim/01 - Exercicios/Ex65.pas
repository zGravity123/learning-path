Program Ex65;
var tentativas, N, num: integer;
Begin
  
  randomize;
  N := random(5);  
  tentativas := 0;

  repeat
  	textcolor(Yellow);
    writeln('Introduza um número');
    readln(num);
    clrscr;

    if (num = N) then
    begin
      writeln('Ganhou! O número era ', N);
      break;  
    end
    else
    begin
      writeln('Perdeste! Tenta de novo');
      tentativas := tentativas + 1;
    end;

  until (tentativas = 5);

  if (num <> N) then
    clrscr;
		textcolor(Red);
    writeln('Esgotou as tentativas! O número era ', N);
 readkey;
End.
