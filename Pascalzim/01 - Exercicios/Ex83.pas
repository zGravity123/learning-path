Program Pzim;
var
  base, altura, volume: real;
  op: string;
  label home;

begin
  home:
  clrscr;
  textcolor(Cyan);

  writeln('Digite o valor da Base:');
  readln(base);
  writeln('Digite o valor da Altura:');
  readln(altura);

  if (base < 0) or (altura < 0) then
  begin
    clrscr; 
    writeln('ERRO! Base e altura devem ser maiores ou iguais a 0');
    writeln('Pressione qualquer tecla para tentar novamente...');
    readln; 
    goto home;  
  end;

  volume := 3.14 * (base * base) * altura;

  clrscr;
  writeln('O volume é: ', volume:2:0); 

  writeln('Pressione "A" se quiser reiniciar o programa, caso não, pressione "B"');
  readln(op);

  if (op = 'A') then
    goto home;  

  if (op = 'B') then
  begin
    clrscr;
    writeln('Saindo do programa.');
    delay(250);
    clrscr;
    writeln('Saindo do programa..');
    delay(250);
    clrscr;
    writeln('Saindo do programa...');
    delay(250);
  end;

end.
