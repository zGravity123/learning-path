Program Pzim;

var v: array[1..20] of integer;
  i, substituicoes: integer;


Begin
	textcolor(cyan);
  randomize;
  substituicoes := 0;

  writeln('Vetor:');
  
  for i := 1 to 20 do
  begin
    v[i] := random(41) - 20; 
    writeln(v[i]);
  end;

  for i := 1 to 20 do
  begin
    if (v[i] < 0) then
    begin
      v[i] := 0;
      substituicoes := substituicoes + 1;
    end;
  end;

  writeln;
  writeln('Vetor depois de substituir negativos por 0:');
  
  for i := 1 to 20 do
  begin
    writeln(v[i]);
  end;

  writeln;
  writeln('Quantidade de substituicoes realizadas: ', substituicoes);
	readkey;
	
End.
