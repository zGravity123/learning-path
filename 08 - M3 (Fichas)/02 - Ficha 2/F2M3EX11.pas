Program Pzim;

var
  soma,i,v: integer;
  op: char;

label home;

Begin
home:
  clrscr;
  textcolor(Cyan);                

	soma := 0;


  for i := 100 to 200 do
   begin
   
   	if (i  mod 7 = 0) then
   
   		soma := soma + i;
   		
   	  writeln(soma);
   end;
  

  readkey;

  clrscr;
  writeln('Pressione A para reiniciar ou B para sair');
  readln(op);
  op := upcase(op);

  if op = 'A' then
    goto home
  else
  begin
    clrscr;
    writeln('Saindo do programa...');
    delay(500);
  end;
End.
