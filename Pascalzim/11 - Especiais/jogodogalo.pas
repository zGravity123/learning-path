Program Pzim;

var
  tabuleiro: array[1..3, 1..3] of char;
  op, preencher_o, preencher_x, i, j: integer;
  jogador_x_vez,jogador_x, jogador_o, valido: Boolean;
  resultado: text;
label home;
procedure pretabuleiro;
var cont: integer;
begin
  cont := 0;
  for i := 1 to 3 do
  begin
    for j := 1 to 3 do
    begin
      if (tabuleiro[i,j] <> 'X') and (tabuleiro[i,j] <> 'O') then
      begin
        cont := cont + 1;
        tabuleiro[i,j] := chr(cont + 48);  
      end;
      write(tabuleiro[i,j]:4);
    end;
    writeln;
  end;
end;

procedure tabuleiroo;
begin
  for i := 1 to 3 do
  begin
    for j := 1 to 3 do
      write(tabuleiro[i,j]:4);
    writeln;
  end;
end;

procedure verificar_resultado;
begin
  jogador_x := False;
  jogador_o := False;
  
  // Linhas
  if (tabuleiro[1,1]='X') and (tabuleiro[1,2]='X') and (tabuleiro[1,3]='X') then
    jogador_x := True;
  if (tabuleiro[2,1]='X') and (tabuleiro[2,2]='X') and (tabuleiro[2,3]='X') then
    jogador_x := True;
  if (tabuleiro[3,1]='X') and (tabuleiro[3,2]='X') and (tabuleiro[3,3]='X') then
    jogador_x := True;

  // Colunas
  if (tabuleiro[1,1]='X') and (tabuleiro[2,1]='X') and (tabuleiro[3,1]='X') then
    jogador_x := True;
  if (tabuleiro[1,2]='X') and (tabuleiro[2,2]='X') and (tabuleiro[3,2]='X') then
    jogador_x := True;
  if (tabuleiro[1,3]='X') and (tabuleiro[2,3]='X') and (tabuleiro[3,3]='X') then
    jogador_x := True;

  // Diagonais
  if (tabuleiro[1,1]='X') and (tabuleiro[2,2]='X') and (tabuleiro[3,3]='X') then
    jogador_x := True;
  if (tabuleiro[1,3]='X') and (tabuleiro[2,2]='X') and (tabuleiro[3,1]='X') then
    jogador_x := True;

  // Linhas
  if (tabuleiro[1,1]='O') and (tabuleiro[1,2]='O') and (tabuleiro[1,3]='O') then
    jogador_o := True;
  if (tabuleiro[2,1]='O') and (tabuleiro[2,2]='O') and (tabuleiro[2,3]='O') then
    jogador_o := True;
  if (tabuleiro[3,1]='O') and (tabuleiro[3,2]='O') and (tabuleiro[3,3]='O') then
    jogador_o := True;

  // Colunas
  if (tabuleiro[1,1]='O') and (tabuleiro[2,1]='O') and (tabuleiro[3,1]='O') then
    jogador_o := True;
  if (tabuleiro[1,2]='O') and (tabuleiro[2,2]='O') and (tabuleiro[3,2]='O') then
    jogador_o := True;
  if (tabuleiro[1,3]='O') and (tabuleiro[2,3]='O') and (tabuleiro[3,3]='O') then
    jogador_o := True;

  // Diagonais
  if (tabuleiro[1,1]='O') and (tabuleiro[2,2]='O') and (tabuleiro[3,3]='O') then
    jogador_o := True;
  if (tabuleiro[1,3]='O') and (tabuleiro[2,2]='O') and (tabuleiro[3,1]='O') then
    jogador_o := True;
end;

function verificar_empate: Boolean;
var
  i,j: Integer;
begin
  
  verificar_empate := True;
  
  
  for i := 1 to 3 do
    for j := 1 to 3 do
      if (tabuleiro[i,j] <> 'X') and (tabuleiro[i,j] <> 'O') then
      begin
        verificar_empate := False;
        Exit;
      end;

  if jogador_x or jogador_o then
    verificar_empate := False;
end;

procedure pergunta_x;
begin
  repeat
    tabuleiroo;
    writeln('Onde o jogador 1 (X) deseja preencher? (1-9)');
    readln(preencher_x);

    valido := True;  

    case preencher_x of
      1: if (tabuleiro[1,1] = 'X') or (tabuleiro[1,1] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter');
           readln;
           valido := False;
         end else tabuleiro[1,1] := 'X';
      2: if (tabuleiro[1,2] = 'X') or (tabuleiro[1,2] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter');
           readln;
           valido := False;
         end else tabuleiro[1,2] := 'X';
      3: if (tabuleiro[1,3] = 'X') or (tabuleiro[1,3] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter');
           readln;
           valido := False;
         end else tabuleiro[1,3] := 'X';
      4: if (tabuleiro[2,1] = 'X') or (tabuleiro[2,1] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter');
           readln;
           valido := False;
         end else tabuleiro[2,1] := 'X';
      5: if (tabuleiro[2,2] = 'X') or (tabuleiro[2,2] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter');
           readln;
           valido := False;
         end else tabuleiro[2,2] := 'X';
      6: if (tabuleiro[2,3] = 'X') or (tabuleiro[2,3] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter');
           readln;
           valido := False;
         end else tabuleiro[2,3] := 'X';
      7: if (tabuleiro[3,1] = 'X') or (tabuleiro[3,1] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter');
           readln;
           valido := False;
         end else tabuleiro[3,1] := 'X';
      8: if (tabuleiro[3,2] = 'X') or (tabuleiro[3,2] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter');
           readln;
           valido := False;
         end else tabuleiro[3,2] := 'X';
      9: if (tabuleiro[3,3] = 'X') or (tabuleiro[3,3] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter');
           readln;
           valido := False;
         end else tabuleiro[3,3] := 'X';
      else begin
        writeln('Inválido! Pressione Enter');
        readln;
        valido := False;
      end;
    end;

  until valido;
end;

procedure pergunta_o;
begin
  repeat
    tabuleiroo;
    writeln('Onde o jogador 2 (O) deseja preencher? (1-9)');
    readln(preencher_o);

    valido := True;

    case preencher_o of
      1: if (tabuleiro[1,1] = 'X') or (tabuleiro[1,1] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter.');
           readln;
           valido := False;
         end else tabuleiro[1,1] := 'O';
      2: if (tabuleiro[1,2] = 'X') or (tabuleiro[1,2] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter.');
           readln;
           valido := False;
         end else tabuleiro[1,2] := 'O';
      3: if (tabuleiro[1,3] = 'X') or (tabuleiro[1,3] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter.');
           readln;
           valido := False;
         end else tabuleiro[1,3] := 'O';
      4: if (tabuleiro[2,1] = 'X') or (tabuleiro[2,1] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter.');
           readln;
           valido := False;
         end else tabuleiro[2,1] := 'O';
      5: if (tabuleiro[2,2] = 'X') or (tabuleiro[2,2] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter.');
           readln;
           valido := False;
         end else tabuleiro[2,2] := 'O';
      6: if (tabuleiro[2,3] = 'X') or (tabuleiro[2,3] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter.');
           readln;
           valido := False;
         end else tabuleiro[2,3] := 'O';
      7: if (tabuleiro[3,1] = 'X') or (tabuleiro[3,1] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter.');
           readln;
           valido := False;
         end else tabuleiro[3,1] := 'O';
      8: if (tabuleiro[3,2] = 'X') or (tabuleiro[3,2] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter.');
           readln;
           valido := False;
         end else tabuleiro[3,2] := 'O';
      9: if (tabuleiro[3,3] = 'X') or (tabuleiro[3,3] = 'O') then begin
           writeln('Essa posição já está preenchida! Pressione Enter.');
           readln;
           valido := False;
         end else tabuleiro[3,3] := 'O';
      else begin
        writeln('Inválido! Pressione Enter.');
        readln;
        valido := False;
      end;
    end;

  until valido;
end;

procedure arquivo;
Begin
  Assign(resultado, 'resultado.txt');
  Rewrite(resultado); 

  if jogador_x then
  begin
    writeln(resultado, 'Jogador X ganhou!');
  end
  else if jogador_o then
  begin
    writeln('Jogador O ganhou!');
    writeln(resultado, 'Jogador O ganhou!');
  end
  else
  begin
    writeln('Empate!');
    writeln(resultado, 'Empate!');
  end;

  Close(resultado); 
end;

 ////////////////////////////////////////////////////////////////////////////////////////

begin
home:
  // Reset das variáveis
  jogador_x_vez := True;
  jogador_x := False;
  jogador_o := False;
  valido := True;
  preencher_x := 0;
  preencher_o := 0;

  // Reset do tabuleiro
  for i := 1 to 3 do
    for j := 1 to 3 do
      tabuleiro[i,j] := chr((i-1)*3 + j + 48);

  pretabuleiro;

  repeat
    clrscr;
    if jogador_x_vez then
      pergunta_x
    else
      pergunta_o;

    verificar_resultado;

    if verificar_empate then
    begin
      clrscr;
      tabuleiroo;
      writeln('Empate!');
      break;
    end;

    jogador_x_vez := not jogador_x_vez;

  until jogador_x or jogador_o;

  clrscr;
  tabuleiroo;

  if jogador_x then
    writeln('Jogador X ganhou!')
  else if jogador_o then
    writeln('Jogador O ganhou!')
  else
    writeln('Empate!');

  writeln;
  writeln('Deseja tentar novamente?');
  writeln;
  writeln('0 - Não, sair');
  writeln('1 - Sim, recomeçar');
  readln(op);

  if (op = 1) then
    goto home
  else
    arquivo;
  
end.