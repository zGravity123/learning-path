Program Pzim;
procedure mostrar_scores;
	var 
	  arq: text; 
	  linha: string;
	begin
	  clrscr;
	  TextColor(White);
	  writeln('--- TABELA DE PONTUAÇÕES ---');
	  writeln;
	  
	  assign(arq, 'pontuacao.txt');
	  
	  reset(arq); 
	
	    while not eof(arq) do
	    begin
	      readln(arq, linha);
	      writeln(linha);
	    end;
	    close(arq);
	  
	  writeln;
	  TextColor(Yellow);
	  writeln('Pressione enter para voltar...');
	  readkey;
	end;
	
	
	
	

var 
  acertos, erros, i: integer;
  op,nome: string;
  arq: text;
label 
  resultado, home;

begin
home:
  acertos := 0;
  erros := 0;

  clrscr;
  textcolor(Cyan);
  writeln('Bem-vindo ao Desafio de Ciberseguranca!');
  readln;
  clrscr;

  for i := 1 to 20 do
  begin
    case i of
      1: begin
           writeln('1. O que e phishing?');
           writeln('A) Um tipo de virus que se instala automaticamente no computador.');
           writeln('B) Um ataque que tenta enganar a vitima para obter informacoes sensiveis.');
           writeln('C) Um software que protege contra ataques ciberneticos.');
           writeln('D) Um metodo de encriptacao de dados.');
           readln(op);
           op := upcase(op);
           
           if op = 'B' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      2: begin
           writeln('2. Qual destas opcoes NAO e uma boa pratica de seguranca digital?');
           writeln('A) Utilizar a mesma senha em varios sites.');
           writeln('B) Ativar a autenticacao de dois fatores.');
           writeln('C) Manter o sistema operativo e software atualizados.');
           writeln('D) Desconfiar de emails que pedem dados pessoais.');
           readln(op);
           op := upcase(op);
           
           if op = 'A' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      3: begin
           writeln('3. O que significa o protocolo HTTPS num site?');
           writeln('A) Que o site esta offline.');
           writeln('B) Que o site e seguro e os dados sao encriptados.');
           writeln('C) Que o site pode ser acedido apenas atraves de VPN.');
           writeln('D) Que o site pertence ao governo.');
           readln(op);
           op := upcase(op);
           
           if op = 'B' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      4: begin
           writeln('4. Como se chama um ataque onde os hackers bloqueiam os ficheiros de uma vitima e pedem um resgate?');
           writeln('A) Malware');
           writeln('B) Ransomware');
           writeln('C) Spyware');
           writeln('D) Phishing');
           readln(op);
           op := upcase(op);
           
           if op = 'B' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      5: begin
           writeln('5. O que e um firewall?');
           writeln('A) Um tipo de ataque cibernetico.');
           writeln('B) Um antivirus gratuito.');
           writeln('C) Um sistema que controla o trafego de rede e bloqueia acessos suspeitos.');
           writeln('D) Uma base de dados de senhas seguras.');
           readln(op);
           op := upcase(op);
           
           if op = 'C' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      6: begin
           writeln('6. O que deve ser evitado ao criar uma palavra-passe segura?');
           writeln('A) Usar letras maiusculas e minusculas.');
           writeln('B) Utilizar o nome proprio ou data de nascimento.');
           writeln('C) Incluir numeros e simbolos.');
           writeln('D) Criar uma senha longa.');
           readln(op);
           op := upcase(op);
           
           if op = 'B' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      7: begin
           writeln('7. Qual e o principal objetivo de um ataque de engenharia social?');
           writeln('A) Espalhar virus atraves da rede.');
           writeln('B) Manipular pessoas para obter informacoes confidenciais.');
           writeln('C) Roubar passwords atraves de forca bruta.');
           writeln('D) Criar software de protecao contra hackers.');
           readln(op);
           op := upcase(op);
           
           if op = 'B' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      8: begin
           writeln('8. Como se chama um software malicioso que se esconde dentro de outro programa aparentemente legitimo?');
           writeln('A) Trojan');
           writeln('B) Worm');
           writeln('C) Rootkit');
           writeln('D) Spyware');
           readln(op);
           op := upcase(op);
           
           if op = 'A' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      9: begin
           writeln('9. O que e um ataque DDoS?');
           writeln('A) Um ataque que tenta adivinhar senhas.');
           writeln('B) Um ataque que sobrecarrega um servidor com trafego falso para o tornar inacessivel.');
           writeln('C) Um ataque que rouba dados bancarios.');
           writeln('D) Um software que protege contra virus.');
           readln(op);
           op := upcase(op);
           
           if op = 'B' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      10: begin
           writeln('10. O que significa a sigla VPN?');
           writeln('A) Virtual Password Network');
           writeln('B) Virtual Private Network');
           writeln('C) Verified Protection Node');
           writeln('D) Virus Prevention Network');
           readln(op);
           op := upcase(op);
           
           if op = 'B' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      11: begin
           writeln('11. Qual destas acoes pode ajudar a prevenir ataques de phishing?');
           writeln('A) Desativar o antivirus.');
           writeln('B) Clicar em links desconhecidos de emails urgentes.');
           writeln('C) Confirmar a autenticidade do remetente antes de responder.');
           writeln('D) Utilizar a mesma senha em todos os sites.');
           readln(op);
           op := upcase(op);
           
           if op = 'C' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      12: begin
           writeln('12. O que e um keylogger?');
           writeln('A) Um software que regista tudo o que e digitado no teclado.');
           writeln('B) Um programa de seguranca avancada.');
           writeln('C) Um firewall inteligente.');
           writeln('D) Um software de limpeza de virus.');
           readln(op);
           op := upcase(op);
           
           if op = 'A' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      13: begin
           writeln('13. Qual destas opcoes e um exemplo de malware?');
           writeln('A) PowerPoint');
           writeln('B) Ransomware');
           writeln('C) Bluetooth');
           writeln('D) HTML');
           readln(op);
           op := upcase(op);
           
           if op = 'B' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      14: begin
           writeln('14. O que e um ataque de forca bruta?');
           writeln('A) Um ataque que tenta adivinhar senhas atraves de tentativa e erro.');
           writeln('B) Um ataque que bloqueia o computador da vitima.');
           writeln('C) Um ataque que impede o funcionamento de antivirus.');
           writeln('D) Um software de protecao contra hackers.');
           readln(op);
           op := upcase(op);
           
           if op = 'A' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      15: begin
           writeln('15. Porque e importante atualizar o software regularmente?');
           writeln('A) Para consumir mais memoria RAM.');
           writeln('B) Para corrigir falhas de seguranca e melhorar o desempenho.');
           writeln('C) Para evitar ataques DDoS.');
           writeln('D) Para tornar o computador mais lento.');
           readln(op);
           op := upcase(op);
           
           if op = 'B' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      16: begin
           writeln('16. Qual destas praticas pode melhorar a seguranca de uma rede Wi-Fi domestica?');
           writeln('A) Desativar a encriptacao WPA2.');
           writeln('B) Manter a password predefinida do router.');
           writeln('C) Alterar a password do Wi-Fi regularmente.');
           writeln('D) Tornar a rede visivel para todos.');
           readln(op);
           op := upcase(op);
           
           if op = 'C' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      17: begin
           writeln('17. Qual destas opcoes NAO e um metodo de autenticacao segura?');
           writeln('A) Autenticacao de dois fatores (2FA).');
           writeln('B) Biometria (impressao digital, reconhecimento facial).');
           writeln('C) Senhas curtas e faceis de adivinhar.');
           writeln('D) Smartcards e tokens fisicos.');
           readln(op);
           op := upcase(op);
           if op = 'C' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      18: begin
           writeln('18. O que deve fazer ao encontrar uma pen USB desconhecida?');
           writeln('A) Liga-la ao computador para ver o que contem.');
           writeln('B) Entrega-la a um responsavel ou a autoridade competente.');
           writeln('C) Abrir os ficheiros para ver se sao seguros.');
           writeln('D) Usar-la para guardar ficheiros pessoais.');
           readln(op);
           op := upcase(op);
           
           if op = 'B' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      19: begin
           writeln('19. Como se chama um ataque onde um hacker espia a atividade online de uma pessoa sem o seu conhecimento?');
           writeln('A) Phishing');
           writeln('B) Spoofing');
           writeln('C) Sniffing');
           writeln('D) Spamming');
           readln(op);
           op := upcase(op);
           
           if op = 'C' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
      20: begin
           writeln('20. O que significa "engenharia social" na ciberseguranca?');
           writeln('A) Uso de IA para proteger redes informaticas.');
           writeln('B) Manipulacao de pessoas para obter dados confidenciais.');
           writeln('C) Desenvolvimento de novos algoritmos de encriptacao.');
           writeln('D) Criacao de firewalls avancadas.');
           readln(op);
           op := upcase(op);
           
           if op = 'B' then 
					 	acertos := acertos + 1 
					 else 
					 	erros := erros + 1;
         end;
    end;
    
    clrscr;
  end;

resultado:
  clrscr;
  writeln('Introduza o seu nome!');
  readln(nome);
  
  assign(arq, 'pontuacao.txt');
  append(arq);
  writeln(arq,nome,' | ', acertos,'/',erros);
  close(arq);
  
  textbackground(Yellow);
  clrscr;
  textcolor(Black);
  writeln('Acertos: ', acertos,' Erros: ',erros);

  writeln;
  writeln('Escolha uma opcao:');
  writeln('1 - Reiniciar o Desafio');
  writeln('2 - Visualizar Pontuação');
  writeln;
  writeln('0 - Sair');
  write('Digite sua escolha: ');
  readln(op);
  if op = '1' then
  begin
    clrscr;
    goto home;
  end;
  
  if op = '2' then
  	mostrar_scores
  else
end.