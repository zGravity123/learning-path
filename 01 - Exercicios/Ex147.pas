Program Pzim;

	// O código copia um arquvi que já existe - zGravityy

var
  nm: string;   
  texto,destino: text;
  x: string;

Procedure Pergunta;
Begin
  writeln('Introduza o nome de um arquivo (e.g: example.txt)');
  readln(nm);
End;

Procedure Copiar;
Begin

  assign(texto, nm);
  reset(texto); 

  assign(destino, 'ficheirocopiado.txt');
  rewrite(destino); 

  while not eof(texto) do 
  Begin
    readln(texto, x);  
    writeln(destino, x);  
  End;

  close(texto);
  close(destino);
End;

Begin
  Pergunta;  
  Copiar;    
End.