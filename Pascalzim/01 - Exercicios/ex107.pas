Program Pzim ;
var	hr:integer;
		op:string;
label home;
Begin
home:
   // informa o user dependendo da hora que for introduzida, se é de madrugada,manha,tarde ou noite
   
   // madrugada é entre 5 e 7 da manha
   // manha é entre 8 e 12
   // tarde é entre as 13 e 19
   // noite entre as 20 e 24 e tb das 1 as 4
   
   writeln('Digite as horas');
   readln(hr);
   
   case hr of
		 	1..4,13..19: writeln('No horario introduzido é de Noite');
			5..7: writeln('No horario introduzido é madrugada'); 
			8..12: writeln('No horario introduzido é manhã');
	  end;
	 
	readkey;
  writeln('Deseja reniciar o Progama?');
  writeln('      [S]im ou [N]ão      ');
  readln(op);
  
  op := upcase(op);
  
  if (op = 'S') then
   goto home
  else
	 
End.