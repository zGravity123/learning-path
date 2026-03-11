Program Pzim ;
label home;
var i,n:integer;
		op:string;
Begin
  home:
  textcolor(Cyan);
  writeln('Digite um numero de 1 a 9 para ver a tabuada');
	readln(n);
	for i := 1 to 10 do
		begin
			writeln(i, ' x ' ,n,' = ',i * n); 
			delay(150);
		end;
    readkey;
    
  writeln('Pressione "A" se quiser reiniciar o programa, caso não, pressione "B"');
  readln(op);
  op := upcase(op);
  	
  if (op = 'A') then
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