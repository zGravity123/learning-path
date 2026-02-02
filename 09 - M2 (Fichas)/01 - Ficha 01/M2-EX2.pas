Program M2-EX2 ;

var P, Q:real;
	
Begin

	P:= 5;
	Q:= P;
	P:= Q * 1.5;
	Q:= P+5;
	P:= P/3;

	writeln;
	writeln('P =', P, 'Q =', Q);
	readkey;
End.