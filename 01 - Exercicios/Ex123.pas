Program Pzim;

var 
   v: real;

function rr: real;
begin
   rr := v * 2;
end;

function rq: real;
begin
   rq := sqrt(v);
end;

procedure ler_valores;
 Begin
	 textcolor(cyan);
   writeln('Introduza o valor');
   readln(v);
   clrscr;
 End;
 
procedure resposta;
 Begin
 	 textcolor(cyan);
   writeln('Dobro: ',rr:0:2);
   writeln('Raiz Quadrada: ',rq:0:2);
   readkey;
 End;
 


Begin
   
  ler_valores;
	resposta; 
   
End.
