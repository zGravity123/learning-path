Program M2EX3 ;
var Area,Perimetro,Pi,R:real;

Begin

 Pi := 3.14;   
 writeln('Introduza o valor do Raio');
 readln(R);   
 
 Perimetro:= 2 * Pi * R;
 Area:= Pi * R * R;
 
  WriteLn('Perimetro = ', Perimetro:0:2);
  WriteLn('Area = ', Area:0:2);
  readkey;
  
End.