Program Pzim ;
var  p,quantidade_idades, maiores_que_18: integer;
  med, media: real;
  idd: integer;
Begin

  quantidade_idades:= 0;
  maiores_que_18:= 0;
  med:= 0;

	repeat
		clrscr;
    textcolor(Cyan);
    writeln('Introduza uma idade (0 para sair)');
    readln(idd);
    
    if (idd >= 18) then
			maiores_que_18:= maiores_que_18 + 1;
		if (idd <= 0) then
			break;
			
		quantidade_idades:= quantidade_idades + 1;	
		med:= med + idd;
    
  until p = 1;
  
   media := med / quantidade_idades;
  
  clrscr;
  writeln('Média das idades: ',media:0:2);
  writeln('Quantidade de pessoas com 18 ou mais anos: ', maiores_que_18);
  readkey;
End.