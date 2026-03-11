Program Ficha5_Ex1_10 ;
var custo,C,L:real;
	
Begin

	textcolor(Yellow);
  
  
  writeln('Qual a largura?');
  readln(L);
  clrscr;
  writeln('Qual o comprimento?');
  readln(C);
  clrscr;
  
  custo:= (C*L)*35;


  writeln('O custo é: ', custo:0:2,'€');
  
  readln;
  
End.