Program Ex100 ;
var vet:array[1..100] of integer;
		vl,iguais,i:integer;
		op:string;
label home;
Begin

randomize;
home:
	textcolor(Cyan);
	
	writeln('Digite um valor');
	readln(vl);
	
	for i := 1 to 100 do
	 begin
		vet[i] := random(11);
		
		if (vl = vet[i]) then
			iguais := iguais + 1;
			
	 end;

	clrscr;
	writeln('Você encontrou o valor "',vl,'" ',iguais,' vezes!');
 
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