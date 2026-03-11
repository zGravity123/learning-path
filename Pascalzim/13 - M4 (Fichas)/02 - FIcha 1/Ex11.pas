Program MenuExercicios;

Var 
  op: integer;

Procedure home;
Begin
  Writeln;
  TextColor(Yellow);
  Writeln('Clique em qualquer tecla para voltar ao menu...');
  Readkey;
End;

Procedure Ex1;
Var v: array[1..10] of integer;
  i: integer;
Begin
  clrscr;
  TextColor(Cyan);
  Randomize;
  
  For i := 1 to 10 do
  Begin
    v[i] := random(100);
  End;
  
  For i := 1 to 10 do
  Begin
    Writeln('Posicao ', i, ': ', v[i]);
  End;
  home;
End;

Procedure Ex2;
Var v: array[1..1000] of integer;
  i, soma, nv: integer;
Begin
  clrscr;
  TextColor(Cyan);
  
  soma := 0;
  
  Writeln('Quantos numeros deseja inserir?');
  Readln(nv);
  
  For i := 1 to nv do
  Begin
    Writeln('Introduza o valor #', i);
    Readln(v[i]);
    soma := soma + v[i];
  End;
  
  Writeln('A soma de todos os valores e: ', soma);
  home;
End;

Procedure Ex3;
Var v: array[1..1000] of integer;
  i, maior, nv: integer;
Begin
  clrscr;
  TextColor(Cyan);
  maior := -32000; 
  Writeln('Quantos numeros deseja inserir?');
  Readln(nv);
  
  For i := 1 to nv do
  Begin
    Writeln('Introduza o valor #', i);
    Readln(v[i]);
    If (i = 1) or (v[i] > maior) then
      maior := v[i];
  End;
  
  Writeln('O maior numero introduzido e: ', maior);
  home;
End;

Procedure Ex4;
Var v: array[1..3, 1..3] of integer;
  i, j: integer;
Begin
  clrscr;
  TextColor(Cyan);
  Randomize;
  
  For i := 1 to 3 do
    For j := 1 to 3 do
      v[i,j] := random(50);
      
  For i := 1 to 3 do
  Begin
    For j := 1 to 3 do
    Begin
      TextColor(Yellow);
      Write(v[i,j]:4);
    End;
    Writeln;
  End;
  home;
End;

Procedure Ex5;
Var v: array[1..2, 1..4] of integer;
  soma1, soma2, i, j: integer;
Begin
  clrscr;
  TextColor(Cyan);
  Randomize;
  
  For i := 1 to 2 do
  Begin
    For j := 1 to 4 do
    Begin
      v[i,j] := random(50); 
      Write(v[i,j]:4);
    End;
    Writeln;
  End;
  
  soma1 := 0;
  soma2 := 0;
  
  For j := 1 to 4 do
  Begin
    soma1 := soma1 + v[1,j];
    soma2 := soma2 + v[2,j];
  End;
  
  Writeln('A soma da linha 1 e: ', soma1);
  Writeln('A soma da linha 2 e: ', soma2);
  home;
End;


Procedure Ex6;
Var v: array[1..1000] of integer;
  i, soma, nv: integer;
  med: real;
Begin
  clrscr;
  TextColor(Cyan);
  
  soma := 0;
  
  Writeln('Quantos valores deseja?');
  Readln(nv);
  
  For i := 1 to nv do
  Begin
    Writeln('Introduza o valor #', i);
    Readln(v[i]);
    soma := soma + v[i];
  End;
  
  If nv > 0 then
    med := soma / nv
  else
    med := 0;
    
  Writeln('A media dos numeros introduzidos e: ', med:0:2);
  home;
End;

Procedure Ex7;
Var v: array[1..4, 1..4] of integer;
  i, j: integer;
Begin
  clrscr;
  TextColor(Cyan);
  
  For i := 1 to 4 do
  Begin
    For j := 1 to 4 do
    Begin
      if i = j then
        v[i, j] := 1
      else if i + j = 5 then
        v[i, j] := 1
      else
        v[i, j] := 0;
        
      Write(v[i,j]:3);
    End;
    Writeln;
  End;
  home;
End;


Procedure Ex9;
Var v: array[1..4, 1..4] of integer;
  i, j: integer;
Begin
  ClrScr;
  TextColor(Cyan);
  Randomize;
  
  For i := 1 to 4 do
  Begin
    For j := 1 to 4 do
    Begin
      v[i,j] := random(50);
      Write(v[i,j]:4);
    End;
    Writeln;
  End;
  home;
End;


Procedure Ex10;
Var v: array[1..3, 1..3] of integer;
  i, j: integer;
  soma1, soma2, soma3: integer;
  med1, med2, med3: real;
  
Begin
  clrscr;
  TextColor(Cyan);
  
  For i := 1 to 3 do
  Begin
    For j := 1 to 3 do
    Begin
      Writeln('Matriz[', i, ',', j, ']: ');
      Readln(v[i,j]);
    End;
  End;

  clrscr;
  Writeln('Matriz Inserida:');
  For i := 1 to 3 do
  Begin
    For j := 1 to 3 do
      Write(v[i,j]:4);
    Writeln;
  End;

  soma1 := 0; soma2 := 0; soma3 := 0;
  
  For i := 1 to 3 do
  Begin
    soma1 := soma1 + v[i,1];
    soma2 := soma2 + v[i,2];
    soma3 := soma3 + v[i,3];
  End;
  
  med1 := soma1 / 3;
  med2 := soma2 / 3;
  med3 := soma3 / 3;

  Writeln;
  Writeln('A media da coluna 1 e: ', med1:0:2);
  Writeln('A media da coluna 2 e: ', med2:0:2);
  Writeln('A media da coluna 3 e: ', med3:0:2);
  home;
  
End;

Begin
  Repeat
    clrscr;
    TextColor(Cyan);
    Writeln('=========================================');
    Writeln('1. Ex1 - Vetor Aleatorio');
    Writeln('2. Ex2 - Soma de Vetor');
    Writeln('3. Ex3 - Maior do Vetor');
    Writeln('4. Ex4 - Matriz Aleatoria ');
    Writeln('5. Ex5 - Soma Linhas Matriz');
    Writeln('6. Ex6 - Media de Vetor');
    Writeln('7. Ex7 - Matriz Diagonal/X');
    Writeln('9. Ex9 - Matriz Aleatoria');
    Writeln('10. Ex10 - Medias Colunas Matriz');
    Writeln('0 - Sair');
    Writeln('=========================================');
    Write('Escolha uma opcão: ');
    Readln(op);

    Case op of
      1: Ex1;
      2: Ex2;
      3: Ex3;
      4: Ex4;        
      5: Ex5;
      6: Ex6;
      7: Ex7;
      9: Ex9;
      10: Ex10; 
    End;
    
  Until op = 0;
  
  Writeln('A sair...');
End.