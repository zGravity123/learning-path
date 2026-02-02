Program Pzim;
var soma,pt,i,nj:integer;
		op:string;
label home,pergunta;

Begin
	home:
	
   textcolor(Cyan);
   writeln('Qual o número de jornadas em que a equipa participou?');
   readln(nj);
   clrscr;
   
   for i := 1 to nj do
    begin
    	pergunta:
      writeln('Quantos pontos a jornada #',i,' teve?');
      readln(pt);
      clrscr;
      
   		case pt of
   			0: soma := soma + pt;
   			1: soma := soma + pt;
   			3: soma := soma + pt;
   			
   	  else
   	   begin
   	  	writeln('Ops! Algo correu mal...');
   	  	goto pergunta;
   	   end;
   	  end;
   	end;
   	
   	writeln('A equipa possui ',soma,' pontos!');
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
