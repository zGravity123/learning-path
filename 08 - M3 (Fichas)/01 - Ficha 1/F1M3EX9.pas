Program Pzim ;
label home;
var   i: char;
  		ac,op: string;
Begin
  home:
  clrscr;
  textcolor(Cyan);

  writeln('Escolha uma opção:');
  writeln('  A - Mostrar as letras maiúsculas (A-Z)');
  writeln('  B - Mostrar as letras minúsculas (a-z)');
  readln(ac);

  if (ac = 'A') then
  begin
    for i := 'A' to 'Z' do
      write(i, ' '); 
  end;
  
  if (ac= 'B') then
  begin
    for i := 'a' to 'z' do
      write(i, ' '); 
  end;
  
  writeln('');	
  writeln('Pressione "C" se quiser reiniciar o programa, caso não, pressione "B"');
  readln(op);
  op := upcase(op);
  	
  if (op = 'C') then
    goto home 

  else 
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
	 
	 
   
  
  
  
End.