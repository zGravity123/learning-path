Program Ex67 ;
var i:integer;
Begin
   //Tabela ASCII
   for i:=1 to 255 do
   	begin
   		textcolor(Yellow);
   		writeln(i, ' - ', chr(i));
   	end;
  readkey;
   
End.