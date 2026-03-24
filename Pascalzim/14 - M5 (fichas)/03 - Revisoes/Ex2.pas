Program Pzim ;
type 
  Aluno = record
    nome: string;
    teste: real;
    trabalho: real;
    oral: real;
    media: real;
  end;
var alunos: array[1..10] of aluno;
		i: integer;

procedure perguntas;
	Begin
		for i := 1 to 10 do
    	Begin
    	  writeln('Introduza o nome do aluno #',i);
    	  readln(alunos[i].nome);
    	  clrscr;
    	  
    	  writeln('Introduza a nota que o aluno  #',i,' obteve no teste');
    	  readln(alunos[i].teste);
    	  clrscr;
    	  
    	  writeln('Introduza a nota que o aluno  #',i,' obteve no trabalho');
    	  readln(alunos[i].trabalho);  
    	  clrscr;
    	  
    	  writeln('Introduza a nota que o aluno  #',i,' obteve no teste oral');
    	  readln(alunos[i].oral);
    	  clrscr;
    	  
    	  alunos[i].media := (alunos[i].teste + alunos[i].trabalho + alunos[i].oral) / 3;
    	  
    	End;
    
    		
	End;
	
procedure resultados;
var j: integer;
Begin
  writeln('============= INFORMAÇÕES DOS ALUNOS =============');
  writeln;
  writeln('Nome                           | Média ');
  writeln('-------------------------------+--------'); 
  
  for j := 1 to 10 do
  begin
    writeln(alunos[j].nome:30, ' | ', alunos[j].media:5:2);
  end;
End; 
	
	
	
Begin
	
	perguntas;
	resultados;
	readkey;
  
End.