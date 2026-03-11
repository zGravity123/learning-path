Program Pzim ;
label home;
var op,home:string;
		an,idade:real;
Begin

  home:
  textcolor(Cyan);
   
  writeln('Digite o ano em que nasceu');
  readln(an);
  
  idade := 2026 - an;
  
  if (idade >= 18) then
  	writeln('Pode votar')
  else
  	writeln('Não pode votar');
  
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