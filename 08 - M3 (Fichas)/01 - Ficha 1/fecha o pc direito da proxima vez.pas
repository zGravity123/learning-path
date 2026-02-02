Program Pzim;
var i: integer;
	op:string;
  vl: array[1..3] of integer;
  max, min, meio: integer;
	label home;

Begin
  home:
  textcolor(Cyan);
  
  max := -MaxInt;  
  min := MaxInt;  

  for i := 1 to 3 do
  begin
    clrscr;
    writeln('Digite 3 valores inteiros');
    readln(vl[i]);
    

    if vl[i] > max then
      max := vl[i];
      
    if vl[i] < min then
      min := vl[i];
		end;
		
		for i := 1 to 3 do 
		 Begin
		 	if (vl[i] < max) and (min < vl[i]) then
		 		meio:= vl[i];
		 end;
		
    if (vl[1] = vl[2]) or (vl[2] = vl[3]) or (vl[1] = vl[3]) then
    begin
      writeln('Os valores introduzidos não podem ser iguais');  
    end
		else
  		writeln('Valores em ordem crescente: ', min, ' ', meio, ' ', max);
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

  readkey;
End.
