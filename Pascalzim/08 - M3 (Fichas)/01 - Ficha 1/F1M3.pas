Program Pzim ;
label home;
var op,home:string;
		la,cm,ptlp,area,ptn,lm:real;
Begin
   home:
   textcolor(Cyan);
   
   	writeln('Digite a Largura');
   	readln(la);
   	clrscr;
   	
   	writeln('Digite o Comprimento (em metros)');
   	readln(cm);
   	clrscr;
   	
   	writeln('Qual a potência da lâmpada (w)');
   	readln(ptlp);
    clrscr;
    
   		area := la * cm;
   		ptn := area * 18;  // Potencia Total Necessaria
   		lm := ptn/ptlp; // Numero de lampada
   
		writeln('Serão necessárias ', lm:2:0, ' lâmpadas para iluminar a área informada');
		readkey;
	
		clrscr;
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