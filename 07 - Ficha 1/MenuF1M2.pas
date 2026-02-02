Program MenuF1M2 ;
var opcao:integer;
		Comp,med,A1,B,C,D, P, Q, Larg, Altura,volume1,Pi,R,A, Volume:real;
label inicio;
Begin
	inicio:
	textcolor(yellow);
	clrscr;
	writeln('---------------------------------------------------------');
	writeln('               Ficha 1 - Módulo 2                        ');
	writeln('          Sérgio Almeida  N*19 - 10* TGPSI               ');
	writeln('---------------------------------------------------------');
	textcolor(white);
	writeln('');
	writeln(' Escolha uma das opções abaixo:');
	writeln('');
	writeln(' 1 - Volume do tanque');
	writeln(' 2 - Operações Aritméticas Simples');
	writeln(' 3 - Volume de Cilindro');
	writeln(' 4 - Média de Temperaturas');
	writeln('');
	writeln(' 0 - Sair');
	writeln('');
	readkey;
	
	
	    readln(opcao);
	    clrscr;

    case opcao of
     1: 
        begin
        
        	
          writeln('Tu escolheste a opção "Volume do tanque".');
          writeln('Pressione qualquer tecla para continuar...');
          readkey;
          clrscr;
          writeln('Introduza as medidas do tanque:');
          writeln('');
          
          writeln('Comprimento da base:');
          readln(comp);
          clrscr;
          
          writeln('Largura da base:');
          readln(Larg);
          clrscr;
          
          writeln('Altura do tanque:');
          readln(Altura);
          clrscr;

          volume := comp * Larg * Altura;
          
          writeln('Volume = ', volume:0:2);
					readkey; 
          
          goto inicio;
          readkey;  
        end;
				
      2:
        begin
        
        	
          writeln('Tu escolheste a opção "Operações Aritméticas Simples".');
          writeln('Pressione qualquer tecla para continuar...');
          readkey;
          clrscr;
          
					P:= 5;
					Q:= P;
					P:= Q * 1.5;
					Q:= P+5;
					P:= P/3;
					
  				writeln('Introduza o P');
  				readln(P);
  				writeln('Introduza o Q');
  				readln(Q);
					writeln;
					writeln('P =', P:0:2, 'Q =', Q:0:2);
					readkey;   
					goto inicio; 
       	end;
        
      3:
        begin
        
        	
          writeln('Tu escolheste a opção "Volume de Cilindro".');
          writeln('Pressione qualquer tecla para continuar...');
          readkey;
          clrscr;
          
					Pi:= 3.14;
  
  				writeln;
  				writeln('Introduza o valor do raio da base');
  				readln(R);
 					writeln('Introduza o valor da altura');
  				readln(A);
  
  					volume:= Pi * R * R * A;
  
  				writeln('O volume do recepiente é: ', volume:0:2);
  				readkey; 
  				goto inicio;
  			end;
  			
  		4:
  			begin
  			
				 writeln;
  			 writeln('Introduza quatro valores de temperatura');
  			 readln(A1,B,C,D);
  
  				med:= (A1+B+C+D)/4;
  
  			 writeln('A media das temperaturas é: ', med:0:2);
  			 readkey;
  			 goto inicio;
        End;	
					
      0:
      	begin                              
      	
      	
      	
      		writeln('---------------------------------------------------------');
					writeln('                  Fechando o progama...                  ');
					writeln('                   Por favor aguarde                     ');
					writeln('---------------------------------------------------------');
					

      		delay(500);
      		end;
     
		 
		  
    else
      writeln('Opção inválida! Tente novamente.');
      readkey;
      
      goto inicio;
      
    end;
    
    



  
End.