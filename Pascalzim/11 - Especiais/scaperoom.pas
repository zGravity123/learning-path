Program Pzim;
uses crt;

var
  acertos, erros: integer;
  op: real;
  op1: string;
  label home,resultado;

begin
home:
  acertos := 0;
  erros := 0;

  clrscr;
  textcolor(Cyan);
  writeln('Bem-vindo ao Desafio do Conhecimento...');
  delay(500);
  writeln('Para entrar, decifre o código.');
  delay(500);
  
 // 1. Entrada na Biblioteca 
  
  writeln('Qual é o número atómico do ouro?');
  readln(op);

  if op = 79 then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(1000);
    goto resultado;
  end;

  writeln('Pressione ENTER para continuar...');
  readln;
  clrscr;

	// 2. O Guardião da Porta

  textcolor(LightGreen);
  writeln('Sou o início do conhecimento e o fim da ignorância.');
  delay(500);
  writeln('Quem sou eu?');
  readln(op1);
  op1 := upcase(op1);

  if op1 = 'A' then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(1000);
    goto resultado;
  end;

  writeln('Pressione ENTER para continuar...');
  readln;
  clrscr;

 // 3. Escolha do Caminho

  textcolor(LightCyan);
  writeln('À frente estão dois caminhos...');
  delay(500);
  writeln('O da direita é iluminado.');
  delay(500);
  writeln('O da esquerda desce para a escuridão.');
  writeln('Pressione ENTER para continuar...');
  readln;
  clrscr;

 // 4. Sala dos Hieróglifos

  textcolor(Yellow);
  writeln('Transforma o número 42 no seu equivalente hexadecimal.');
  readln(op1);
  op1 := upcase(op1);

  if op1 = '2A' then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(1000);  
    goto resultado;
  end;

  writeln('Pressione ENTER para continuar...');
  readln;
  clrscr;

 // 5. A Escadaria Secreta

  textcolor(LightMagenta);
  writeln('Cada degrau tem um número...');
  delay(500);
  writeln('Multiplique todos os ímpares de 1 a 9.');
  readln(op);

  if op = 945 then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(1000);
    goto resultado;
  end;

  writeln('Pressione ENTER para continuar...');
  readln;
  clrscr;

 // 6. A Porta com Letras Gregas


  textcolor(LightBlue);
  writeln('Qual é a letra grega correspondente ao número 3?');
  readln(op1);
  op1 := upcase(op1);

  if op1 = 'GAMA' then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(1000);
    goto resultado;
  end;

  writeln('Pressione ENTER para continuar...');
  readln;
  clrscr;

 // 7. O Enigma dos Elementos

  textcolor(LightRed);
  writeln('Combine Hidrogénio e Oxigénio para formar algo vital.');
  readln(op1);

  op1 := upcase(op1);

  if op1 = 'H2O' then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(1000);
    goto resultado;
  end;

  // 8. A Sala das Sombras
  textcolor(LightGray);
  writeln('A Sala das Sombras');
  delay(500);
  writeln('Quatro velas iluminam a sala, mas uma apaga-se. Quantas sobram?');
  readln(op);

  if op = 3 then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(1000);
    goto resultado;
  end;

  writeln('Pressione ENTER para continuar...');
  readln;
  clrscr;

  // 9. O Cofre do Conhecimento
  textcolor(yellow);
  writeln('O Cofre do Conhecimento');
  delay(500);
  writeln('Quantos bits tem um byte?');
  readln(op);

  if op = 8 then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(1000);
    goto resultado;
  end;

  writeln('Pressione ENTER para continuar...');
  readln;
  clrscr;

  // 10. O Desafio da Recursividade
  textcolor(LightGreen);
  writeln('O Desafio da Recursividade');
  delay(500);
  writeln('Calcula o fatorial de 5.');
  readln(op);

  if op = 120 then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(1000);
    goto resultado;
  end;

  writeln('Pressione ENTER para continuar...');
  readln;
  clrscr;

  // 11. A Charada de Fibonacci
  textcolor(LightCyan);
  writeln('A Charada de Fibonacci');
  delay(500);
  writeln('Qual é o 7o número da sequência de Fibonacci?');
  readln(op);

  if op = 13 then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(1000);
    goto resultado;
  end;

  writeln('Pressione ENTER para continuar...');
  readln;
  clrscr;

  // 12. A Porta das Estrelas
  textcolor(LightBlue);
  writeln('A Porta das Estrelas');
  delay(500);
  writeln('Quantos planetas existem no Sistema Solar?');
  readln(op);

  if op = 8 then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(1000);
    goto resultado;
  end;

  writeln('Pressione ENTER para continuar...');
  readln;
  clrscr;

 // 13. O Enigma Final
  textcolor(LightRed);
  writeln('O Enigma Final');
  delay(500);
  writeln('Eu sou algo que cresce quanto mais partilhas, mas não sou um objeto físico. Sou a chave para o progresso e a solução para muitos problemas. O que sou?');
  readln(op1);

  op1 := upcase(op1); 

  if op1 = 'CONHECIMENTO' then
  begin
    acertos := acertos + 1;
    textcolor(Green);
    writeln('Resposta correta!');
  end
  else
  begin
    erros := erros + 1;
    textcolor(Red);
    writeln('ERROU! O caminho do saber ainda te espera...');
    delay(500);
    goto resultado;
    
    
resultado:
  clrscr; 
  textbackground(Yellow); 
  clrscr;  
  textcolor(Black); 

  writeln('Desafio concluído!');
  delay(500);
  writeln('Total de acertos: ', acertos);
  writeln('Total de erros: ', erros);
  writeln;

  if acertos = 13 then
    writeln('Es um verdadeiro mestre do conhecimento!')
  else if acertos >= 10 then
    writeln('Excelente! Você está muito próximo da perfeição!')
  else if acertos >= 5 then
    writeln('Bom trabalho! Mas ainda há espaço para melhorar.')
  else
    writeln('Deve continuar sua jornada de aprendizado.');

  writeln;
  writeln('Escolha uma opção:');
  writeln('1 - Reiniciar o Desafio');
  writeln('2 - Sair');
  write('Digite sua escolha: ');
  readln(op);
	 if (op = 1) then
	  begin
     textbackground(Black);  
     clrscr;  
     writeln('Obrigado por participar!');
     delay(1000);
    end;  
  if (op = 2) then
  end;
    
end.