Program Pzim ;
label home;
var r:real;
		op:string;
Begin
  home:
  textcolor(Cyan);
  writeln('Digite um número');
  readln(r);
  clrscr;
  
  	if (r > 0) then
  		writeln('O quadrado  introduzido é: ', sqr(r):2:0, ' A raiz quadrada é: ', sqrt(r):2:0)
  	else
  		writeln('ERRO! Tente novamente...');
  	readkey;
  	
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