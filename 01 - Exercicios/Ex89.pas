Program Pzim ;
var
		i,soma, max,min,a,b:integer;
		op:string;
		label home;
		
Begin
  
  home:
  clrscr;
  textcolor(Cyan);
	
	writeln('Digite dois números');
	readln(a,b);
	
	
	max:= 0;
	min:= 99999999;
	
	if a > max then
		max:= a;
	if b > max then
		max:= b;
		
	if a < min then
		min:= a;
	if b < min then
		min:= b;
	
		clrscr;
		
	for i := min to max do
  	begin
  		soma := soma + i;
  	end;
	
	if a = b then
		writeln('Ambos os números são iguais, não foi possivel fazer o cálculo');
		writeln('Minimo: ', min);
		writeln('Maximo: ', max);
		writeln('Soma: ',soma);
		
 
	
	
	
	
	
	
	
	
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