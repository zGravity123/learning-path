program MenuOperacoes;
var
  soma1, soma2, subtracao1, subtracao2, multiplicacao1, multiplicacao2, op: Integer;

begin
  repeat
  clrscr;
  
    textcolor(Cyan);
    writeln(' -- Menu Interativo -- ');
    writeln('');
    writeln('Selecione uma das opções abaixo:');
    writeln('');
    writeln('1: Somar dois números');
    writeln('2: Subtrair dois números');
    writeln('3: Multiplicar dois números');
    writeln('');
    writeln('0: Fechar Menu');
    readln(op);
    clrscr;

    case op of
      1: begin
           writeln('Introduza dois números');
           readln(soma1);  
           readln(soma2); 
           clrscr;
           writeln('O resultado da soma é: ', soma1 + soma2:2:0);
           readkey;
         end;
      
      2: begin
           writeln('Introduza dois números');
           readln(subtracao1);  
           readln(subtracao2);
           writeln('O resultado da subtração é: ', subtracao1 - subtracao2:2:0);
           readkey;
         end;

      3: begin
           writeln('Introduza dois números');
           readln(multiplicacao1);  
           readln(multiplicacao2); 
           writeln('O resultado da multiplicação é: ', multiplicacao1 * multiplicacao2:2:0);
           readkey;
         end;

      0: begin
           writeln('Fechando o menu.');
           delay(250);
           clrscr;
           writeln('Fechando o menu..');
           delay(250);
           clrscr;
           writeln('Fechando o menu...');
           delay(250);
           clrscr;
           break; 
         end;

    else
      writeln('Opção inválida! Tente novamente');
      readkey;
    end;

  until op = 0;  
end.
