Program Pzim ;
var
 			nl,tl,perimetro:integer;
 			op:string;
			label home;
Begin
  
  home:
  clrscr;
  textcolor(Cyan);
  writeln('Digite o número de lados polígono (valor inteiro)');
  readln(nl);
  if (nl < 3) or (nl > 5) then
  	writeln('ERRO! Tente novamente')
  
  else
   begin
  	writeln('Introduza qual o tamanho do lado?');
 		readln(tl);
 	 	perimetro := tl * nl;
 	 	clrscr;
 	 end;
 	 
 	if (nl = 3) then
 		writeln('O triangulo introduzido  tem o perimetro de ', perimetro);
 	if (nl = 4) then
 		writeln('O quadrado introduzido  tem o perimetro de ', perimetro);
 	if (nl = 5) then
 		writeln('O pentágono introduzido  tem o perimetro de ', perimetro);
 	
	writeln('Pressione "A" se quiser reniciar o progama, caso não pressine "B"');
	readln(op);
	
	if (op = 'A') then
		goto home;            
	if (op = 'B') then
	  clrscr;
		writeln('Saindo do progamma.');
		delay(250);
		clrscr;
		writeln('Saindo do progamma..');
		delay(250);	
		clrscr;
	  writeln('Saindo do progamma...');
		delay(250);
  
  
End.