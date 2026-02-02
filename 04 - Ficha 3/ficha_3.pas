Program ficha_3 ;

 	var T, Tr, O, media:real;

Begin
   textcolor(yellow);
  	writeln('Introduza a nota do teste');
  	readln(T);
  	clrscr;
  	
  	writeln('Introduza a nota do trabalho');
  	readln(Tr);
  	clrscr;
  	
  	writeln('Introduza a nota do oral');
  	readln(O);
  	clrscr;
  	
  	if (T <= 0 ) and (T > 20) then
  		writeln('Erro! Tente novamente');
  	if (Tr <= 0 ) and (Tr > 20) then
  		writeln('Erro! Tente novamente');
		if (O <= 0 ) and (O > 20) then
  		writeln('Erro! Tente novamente');
  	
  	media:= (T * 0.4) + (Tr * 0.4) + (O * 0.2);
  	
  	if (media >= 9.5) then
  		writeln('Aprovado! A sua media é: ', media:0:1);
  	if (media <= 9.5) then
  		writeln('Reprovado! A sua media é: ', media:0:1);
				
  	
  readkey;	
End.