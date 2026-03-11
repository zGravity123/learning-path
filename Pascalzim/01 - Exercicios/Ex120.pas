Program Pzim;

var 
   base,altura: real;

function area: real;
begin
   area := (base*altura)/2;
end;

Begin
   writeln('Introduza a base');
   readln(base);
   writeln('Introduza a altura'); 
   readln(altura);
   clrscr;

   writeln('A area é: ', area);
   readkey;
End.
