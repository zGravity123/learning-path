Program Pzim;
uses crt;

var 
  usada: array[1..20] of integer;
  n, i: integer;
  r: char;
  pontos: longint;
  certas, erradas, respondidas: integer;
  nome: string;

/////// PROCEDURES DE SISTEMA ////////////

procedure mostrar_scores;
var 
  arq: text; 
  linha: string;
begin
  clrscr;
  TextColor(White);
  writeln('--- TABELA DE HIGH SCORES ---');
  writeln;
  
  assign(arq, 'scores.txt');
  {$I-} 
  reset(arq); 
  {$I+} 
  
  if IOResult <> 0 then
    writeln('Ainda nao ha pontuacoes guardadas. Joga uma partida primeiro!')
  else
  begin
    while not eof(arq) do
    begin
      readln(arq, linha);
      writeln(linha);
    end;
    close(arq);
  end;
  
  writeln;
  TextColor(Yellow);
  writeln('Pressione enter para voltar ao menu...');
  readkey;
end;

procedure guardar_score;
var 
  arq: text;
begin
  clrscr;
  TextColor(Yellow);
  writeln('--- FIM DE JOGO ---');
  writeln('Respostas Certas: ', certas);
  writeln('Respostas Erradas: ', erradas);
  writeln('Pontuacao Final: ', pontos, ' euros');
  writeln;
  
  if respondidas > 0 then
  begin
    TextColor(White);
    write('Introduza seu nome: ');
    readln(nome);
    
    assign(arq, 'scores.txt');

    append(arq); 
    
    if IOResult <> 0 then 
      rewrite(arq);
      
    writeln(arq, nome, ' | Pontos: ', pontos, ' | Certas: ', certas, ' | Erradas: ', erradas);
    close(arq);
    
    TextColor(LightGreen);
    writeln('Score guardado com sucesso!');
  end;
  
  readkey;
end;

procedure entrada;
var
  s, s1, s2: string;
  j: integer;
begin
  clrscr;
  s := 'System Message: Bem vindo(a) ao nosso jogo interativo';
  s1 := 'O nome do nosso jogo e: Quem quer ser milionario';
  s2 := 'Pressione enter para comecar...';

  TextColor(Yellow);
  for j := 1 to Length(s) do 
		begin 
			Write(s[j]); 
			Delay(25); 
		end; 
	 writeln;
  for j := 1 to Length(s1) do 
		begin 
			Write(s1[j]); 
			Delay(25); 
		end; 
	 writeln;
  for j := 1 to Length(s2) do 
		begin 
			Write(s2[j]); 
			Delay(25); 
		end; 
	 writeln;
  readkey;
end;

		/////// PROCEDURE PERGUNTAS ////////////

procedure perguntas;
begin
  TextColor(Cyan);
  
  writeln;
  writeln('Respondidas: ', respondidas, ' | Certas: ', certas, ' | Erradas: ', erradas);
  writeln('Saldo Atual: ', pontos:0:1, '€');
  writeln;
  writeln;

  case n of
  1: begin
       writeln('Qual e a capital de Portugal?');
       writeln('a) Madrid');
       writeln('b) Lisboa');
       writeln('c) Barcelona');
       writeln('d) Porto');
       write('Sua resposta (ou "s" para desistir): ');
       readln(r);
       if (r = 's') or (r = 'S') then exit; 
       
       respondidas := respondidas + 1;
       if (r = 'b') or (r = 'B') then
       begin writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
       else
       begin writeln('Incorreto! A resposta certa e b) Lisboa'); pontos := pontos - 500000; erradas := erradas + 1; end;
     end;

  2: begin
       writeln('Em que ano ocorreu a Revolucao dos Cravos em Portugal?');
       writeln('a) 1974');
       writeln('b) 1980');
       writeln('c) 1968');
       writeln('d) 1990');
       write('Sua resposta (ou "s" para desistir): ');
       readln(r);
       if (r = 's') or (r = 'S') then exit;

       respondidas := respondidas + 1;
       if (r = 'a') or (r = 'A') then
       begin writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
       else
       begin writeln('Incorreto! A resposta certa e a) 1974'); pontos := pontos - 500000; erradas := erradas + 1; end;
     end;

  3: begin
       writeln('Quem e considerado o poeta nacional de Portugal?');
       writeln('a) Fernando Pessoa');
       writeln('b) Luis de Camoes');
       writeln('c) Jose Saramago');
       writeln('d) Sophia de Mello Breyner');
       write('Sua resposta (ou "s" para desistir): ');
       readln(r);
       if (r = 's') or (r = 'S') then exit;

       respondidas := respondidas + 1;
       if (r = 'b') or (r = 'B') then
       begin writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
       else
       begin writeln('Incorreto! A resposta certa e b) Luis de Camoes'); pontos := pontos - 500000; erradas := erradas + 1; end;
     end;

  4: begin
       writeln('Qual e o prato tradicional portugues feito a base de bacalhau?');
       writeln('a) Paella');
       writeln('b) Sushi');
       writeln('c) Feijoada');
       writeln('d) Bacalhau a Bras');
       write('Sua resposta (ou "s" para desistir): ');
       readln(r);
       if (r = 's') or (r = 'S') then exit;

       respondidas := respondidas + 1;
       if (r = 'd') or (r = 'D') then
       begin writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
       else
       begin writeln('Incorreto! A resposta certa e d) Bacalhau a Bras'); pontos := pontos - 500000; erradas := erradas + 1; end;
     end;

  5: begin
       writeln('Qual e o rio que atravessa Lisboa?');
       writeln('a) Danubio');
       writeln('b) Tamisa');
       writeln('c) Tejo');
       writeln('d) Sena');
       write('Sua resposta (ou "s" para desistir): ');
       readln(r);
       if (r = 's') or (r = 'S') then exit;

       respondidas := respondidas + 1;
       if (r = 'c') or (r = 'C') then
       	begin 
				 writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
       else
       	begin 
					writeln('Incorreto! A resposta certa e c) Tejo'); pontos := pontos - 500000; erradas := erradas + 1; end;
     end;

  6: begin
       writeln('Quem foi o navegador portugues que primeiro circum-navegou a Terra?');
       writeln('a) Cristovao Colombo');
       writeln('b) Bartolomeu Dias');
       writeln('c) Vasco da Gama');
       writeln('d) Fernao Mendes Pinto');
       write('Sua resposta (ou "s" para desistir): ');
       readln(r);
       if (r = 's') or (r = 'S') then exit;

       respondidas := respondidas + 1;
       if (r = 'c') or (r = 'C') then
       	begin 
					writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
       else
       	begin 
				 writeln('Incorreto! A resposta certa e c) Vasco da Gama'); pontos := pontos - 500000; erradas := erradas + 1; end;
     end;

  7: begin
       writeln('Em que cidade portuguesa se realiza anualmente o Festival da Eurovisao?');
       writeln('a) Porto');
       writeln('b) Lisboa');
       writeln('c) Faro');
       writeln('d) Coimbra');
       write('Sua resposta (ou "s" para desistir): ');
       readln(r);
       if (r = 's') or (r = 'S') then exit;

       respondidas := respondidas + 1;
       if (r = 'b') or (r = 'B') then
       	begin 
					writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
       else
       	begin 
				  writeln('Incorreto! A resposta certa e b) Lisboa'); pontos := pontos - 500000; erradas := erradas + 1; end;
     end;

  8: begin
       writeln('Qual e a ilha portuguesa que e conhecida como "A Perola do Atlantico"?');
       writeln('a) Acores');
       writeln('b) Madeira');
       writeln('c) Porto Santo');
       writeln('d) Terceira');
       write('Sua resposta (ou "s" para desistir): ');
       readln(r);
       if (r = 's') or (r = 'S') then exit;

       respondidas := respondidas + 1;
       if (r = 'b') or (r = 'B') then
       	begin 
					writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
       else
       	begin 
					writeln('Incorreto! A resposta certa e b) Madeira'); pontos := pontos - 500000; erradas := erradas + 1; end;
     end;

  9: begin
       writeln('Quem e o famoso jogador de futebol portugues conhecido como "CR7"?');
       writeln('a) Cristiano Ronaldo');
       writeln('b) Ricardo Quaresma');
       writeln('c) Luis Figo');
       writeln('d) Eusebio');
       write('Sua resposta (ou "s" para desistir): ');
       readln(r);
       if (r = 's') or (r = 'S') then exit;

       respondidas := respondidas + 1;
       if (r = 'a') or (r = 'A') then
       	begin 
				 writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
       else
       	begin 
				 writeln('Incorreto! A resposta certa e a) Cristiano Ronaldo'); pontos := pontos - 500000; erradas := erradas + 1; end;
     end;

  10: begin
        writeln('Qual e o doce tradicional de Portugal feito com gemas e acucar?');
        writeln('a) Pastel de Nata');
        writeln('b) Queijada');
        writeln('c) Bolo Rei');
        writeln('d) Pao de Lo');
        write('Sua resposta (ou "s" para desistir): ');
        readln(r);
        if (r = 's') or (r = 'S') then exit;

        respondidas := respondidas + 1;
        if (r = 'b') or (r = 'B') then
        	begin 
						writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
        else
        	begin 
						writeln('Incorreto! A resposta certa e b) Queijada'); pontos := pontos - 500000; erradas := erradas + 1; end;
      end;

  11: begin
        writeln('Qual e a cidade portuguesa conhecida pelos seus azulejos coloridos?');
        writeln('a) Braga');
        writeln('b) Aveiro');
        writeln('c) Porto');
        writeln('d) Lisboa');
        write('Sua resposta (ou "s" para desistir): ');
        readln(r);
        if (r = 's') or (r = 'S') then exit;

        respondidas := respondidas + 1;
        if (r = 'd') or (r = 'D') then
        	begin 
						writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
        else
        	begin 
						writeln('Incorreto! A resposta certa e d) Lisboa'); pontos := pontos - 500000; erradas := erradas + 1; end;
      end;

  12: begin
        writeln('Em que ano Portugal aderiu a Uniao Europeia?');
        writeln('a) 1986');
        writeln('b) 1995');
        writeln('c) 1973');
        writeln('d) 2001');
        write('Sua resposta (ou "s" para desistir): ');
        readln(r);
        if (r = 's') or (r = 'S') then exit;

        respondidas := respondidas + 1;
        if (r = 'a') or (r = 'A') then
        	begin 
						writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
        else
        	begin 
						writeln('Incorreto! A resposta certa e a) 1986'); pontos := pontos - 500000; erradas := erradas + 1; end;
      end;

  13: begin
        writeln('Quem e a escritora portuguesa vencedora do Premio Nobel da Literatura em 1998?');
        writeln('a) Jose Saramago');
        writeln('b) Sophia de Mello Breyner');
        writeln('c) Antonio Lobo Antunes');
        writeln('d) Egas Moniz');
        write('Sua resposta (ou "s" para desistir): ');
        readln(r);
        if (r = 's') or (r = 'S') then exit;

        respondidas := respondidas + 1;
        if (r = 'a') or (r = 'A') then
        	begin 
						writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
        else
        	begin 
						writeln('Incorreto! A resposta certa e a) Jose Saramago'); pontos := pontos - 500000; erradas := erradas + 1; end;
      end;

  14: begin
        writeln('Qual e o ponto mais ocidental do continente europeu, localizado em Portugal?');
        writeln('a) Cabo da Boa Esperanca');
        writeln('b) Cabo da Roca');
        writeln('c) Cabo Horn');
        writeln('d) Cabo Verde');
        write('Sua resposta (ou "s" para desistir): ');
        readln(r);
        if (r = 's') or (r = 'S') then exit;

        respondidas := respondidas + 1;
        if (r = 'b') or (r = 'B') then
        	begin 
						writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
        else
        	begin 
						writeln('Incorreto! A resposta certa e b) Cabo da Roca'); pontos := pontos - 500000; erradas := erradas + 1; end;
      end;

  15: begin
        writeln('Qual e o arquipelago portugues que se situa no Oceano Indico?');
        writeln('a) Acores');
        writeln('b) Madeira');
        writeln('c) Cabo Verde');
        writeln('d) Arquipelago de Sao Tome e Principe');
        write('Sua resposta (ou "s" para desistir): ');
        readln(r);
        if (r = 's') or (r = 'S') then exit;

        respondidas := respondidas + 1;
        if (r = 'b') or (r = 'B') then
        	begin 
						writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
        else
        	begin 
						writeln('Incorreto! A resposta certa e b) Madeira'); pontos := pontos - 500000; erradas := erradas + 1; end;
      end;

  16: begin
        writeln('Que explorador portugues descobriu o caminho maritimo para a India em 1498?');
        writeln('a) Bartolomeu Dias');
        writeln('b) Pedro Alvares Cabral');
        writeln('c) Fernao Mendes Pinto');
        writeln('d) Vasco da Gama');
        write('Sua resposta (ou "s" para desistir): ');
        readln(r);
        if (r = 's') or (r = 'S') then exit;

        respondidas := respondidas + 1;
        if (r = 'd') or (r = 'D') then
       	 begin 
					writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
        else
         begin 
				 	writeln('Incorreto! A resposta certa e d) Vasco da Gama'); pontos := pontos - 500000; erradas := erradas + 1; end;
      end;

  17: begin
        writeln('Qual e a maior cidade do norte de Portugal?');
        writeln('a) Porto');
        writeln('b) Braga');
        writeln('c) Coimbra');
        writeln('d) Viana do Castelo');
        write('Sua resposta (ou "s" para desistir): ');
        readln(r);
        if (r = 's') or (r = 'S') then exit;

        respondidas := respondidas + 1;
        if (r = 'a') or (r = 'A') then
        	begin 
						writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
        else
        	begin 
						writeln('Incorreto! A resposta certa e a) Porto'); pontos := pontos - 500000; erradas := erradas + 1; end;
      end;

  18: begin
        writeln('Qual e o nome da ponte que liga Lisboa a Almada?');
        writeln('a) Ponte Vasco da Gama');
        writeln('b) Ponte 25 de Abril');
        writeln('c) Ponte do Infante');
        writeln('d) Ponte D. Luis');
        write('Sua resposta (ou "s" para desistir): ');
        readln(r);
        if (r = 's') or (r = 'S') then exit;

        respondidas := respondidas + 1;
        if (r = 'b') or (r = 'B') then
        	begin 
						writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
        else
        	begin 
						writeln('Incorreto! A resposta certa e b) Ponte 25 de Abril'); pontos := pontos - 500000; erradas := erradas + 1; end;
      end;

  19: begin
        writeln('Quem e o primeiro presidente da Republica Portuguesa?');
        writeln('a) Sidonio Pais');
        writeln('b) Bernardino Machado');
        writeln('c) Manuel de Arriaga');
        writeln('d) Teofilo Braga');
        write('Sua resposta (ou "s" para desistir): ');
        readln(r);
        if (r = 's') or (r = 'S') then exit;

        respondidas := respondidas + 1;
        if (r = 'c') or (r = 'C') then
        	begin 
						writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
        else
        	begin 
						writeln('Incorreto! A resposta certa e c) Manuel de Arriaga'); pontos := pontos - 500000; erradas := erradas + 1; end;
      end;

  20: begin
        writeln('Qual e a regiao vinicola famosa por produzir o Vinho do Porto em Portugal?');
        writeln('a) Alentejo');
        writeln('b) Douro');
        writeln('c) Bairrada');
        writeln('d) Dao');
        write('Sua resposta (ou "s" para desistir): ');
        readln(r);
        if (r = 's') or (r = 'S') then exit;

        respondidas := respondidas + 1;
        if (r = 'b') or (r = 'B') then
        	begin 
						writeln('Correto!'); pontos := pontos + 1000000; certas := certas + 1; end
        else
        	begin 
						writeln('Incorreto! A resposta certa e b) Douro'); pontos := pontos - 500000; erradas := erradas + 1; end;
      end;
  end; 
end;

procedure iniciar_jogo;
begin
  pontos := 0;
  certas := 0;
  erradas := 0;
  respondidas := 0;
  r := ' ';

  for i := 1 to 20 do
    usada[i] := 0;

  entrada;

  i := 1;
  while (i <= 20) and (r <> 's') and (r <> 'S') do
  begin
    clrscr;
    TextColor(Cyan);
    writeln('Pergunta ', i, '/20:');

    repeat
      n := Random(20) + 1;  
    until usada[n] = 0;

    perguntas;    
    
    if (r <> 's') and (r <> 'S') then
    begin
      usada[n] := 1; 
      writeln;
      writeln('Pressione enter para a proxima...');
      readkey;
      i := i + 1;
    end;
  end;
  
  guardar_score;
end;

			/////// MENU ////////////

var 
  opcao_menu: char;

begin
  Randomize;
  
  repeat
    clrscr;
    TextColor(Cyan);
    writeln('====================================');
    writeln('    QUEM QUER SER MILIONARIO        ');
    writeln('====================================');
    writeln;
    writeln('1. Novo Jogo');
    writeln('2. Ver Tabela de High Scores');
    writeln('3. Sair do Jogo');
    writeln;
    write('Escolha uma opcao: ');
    readln(opcao_menu);
    
    case opcao_menu of
      '1': iniciar_jogo;
      '2': mostrar_scores;
      '3': begin 
			clrscr; 
			writeln('Obrigado por jogar!'); 
			Delay(1000); 
		 end;
    end;
    
  until opcao_menu = '3';

end.