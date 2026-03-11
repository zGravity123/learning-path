Program Ficha5_Ex1_4 ;
var largura,altura,areaParede,latas:real;
	
Begin

	textcolor(Yellow);
  
  
  writeln('Qual a largura da parede? (m)');
  readln(largura);
  clrscr;
  
  writeln('Qual a altura da parede? (m)');
  readln(altura);
  clrscr;
  
  areaParede := largura * altura;
  
  latas := areaParede / 3;
  
  if latas > trunc(latas) then      
    latas := trunc(latas) + 1
  else
    latas := trunc(latas);

  writeln('O número de latas necessárias para pintar a parede é: ', latas:0:0);
  
  readln;
  
End.