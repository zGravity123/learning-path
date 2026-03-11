Program Pzim;
var
  i, num, soma: integer;
  med: real;
Begin
  randomize;
  soma := 0; 

  for i := 1 to 10 do
  begin
    num := random(100);
    writeln(num); 
    soma := soma + num;  
  end;

  med := soma / 10; 

  writeln('Soma: ', soma:2:0); 
  writeln('Média: ', med:2:2); 
  readkey;
End.
