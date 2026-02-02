Program M2EX2B ;

var P, Q:real;
	
Begin           

	P:= 5;
	Q:= P;
	P:= Q * 1.5;
	Q:= P+5;
	P:= P/3;
  writeln('Introduza o P');
  readln(P);
  writeln('Introduza o Q');
  readln(Q);
	writeln;
	writeln('P =', P, 'Q =', Q);
	readkey;
End.