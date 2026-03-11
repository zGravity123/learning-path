Program Pzim;
var 
  n: Integer;
Begin
   writeln('Digite uma classificação');
   readln(n);
   
   case n of
      0..4: writeln('Mau');
      5..9: writeln('Insuficiente');
      10..13: writeln('Suficiente');
      14..17: writeln('Bom');
      18..20: writeln('Muito bom');
   else
      writeln('ERRO! Tente novamente');
   End;
   readkey;
End.
