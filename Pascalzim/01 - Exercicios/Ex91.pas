Program Pzim ;
var
		med,idd,casados,viuvos,divorciados,solteiros,pps,i:integer;
		op,rs:string;
		label home;
		
Begin
  
  home:
  clrscr;
  textcolor(Cyan);
	
	writeln('Digite quantas pessoas são');
	readln(pps);
	
	casados:= 0;
	viuvos:= 0;
	divorciados:= 0;
	solteiros:= 0;
	idd:= 0;
	
	for i := 1 to pps do 
	 begin
	
	  clrscr;
		writeln('Qual o estado civil da pessoa #', i);
		
		writeln('');
		writeln('A - Casado');
		writeln('V - Viuvo');
		writeln('D - Divorciado');
		writeln('S - Solteiro');
		readln(rs);
		
		clrscr;
		writeln('Idade?');
		readln(idd);
		
	  med := med + idd;
		
		if (rs = 'A') then
			casados:= casados + 1;
		if (rs = 'V') then
			viuvos:= viuvos + 1;
		if (rs = 'D') then
			divorciados:= divorciados + 1;
		if (rs = 'S') then
			solteiros:= solteiros + 1;
	end;	
	
	 clrscr;		
	 writeln('Existem ',casados,' casados, ', viuvos, ' viuvos, ',divorciados, ' divorciados e ',solteiros, ' solteiros');
	 writeln('A media das idade é: ', med/pps:2:0);
	 readkey;
	
	
	
	
	
	
	clrscr;
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