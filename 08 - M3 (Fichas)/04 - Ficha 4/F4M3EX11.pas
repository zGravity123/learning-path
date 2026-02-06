Program Pzim;

var
  i,pp: Integer;
  op:string;
  
label home;

Begin
home:
	 clrscr;
	 textcolor(cyan);
   writeln(' ---------- MENU ---------- ');
   writeln('');
   writeln('1 - Contar números de 1 a 10');
   writeln('2 - Mostrar números pares até 20');
   writeln('');
   writeln('0 - Sair');
   readln(pp);
   clrscr;
   
   case pp of
   1: Begin
        textcolor(cyan);
        for i := 1 to 10 do
          writeln(i); 
      end;

   2: Begin
        textcolor(cyan);
        for i := 1 to 10 do
        	if (i mod 2 = 0) then
          	writeln(i)
          else
      end;
      
   0: Begin
        writeln('Saindo...');
        halt;  
      end;

   else
      writeln('Opção inválida!');
   end;
  readkey; 
  clrscr; 
  writeln('Deseja reniciar o Progama?');
  writeln('      [S]im ou [N]ão      ');
  readln(op);
  
  op := upcase(op);
  
  if (op = 'S') then
   goto home
  else

End.
