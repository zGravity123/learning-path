Program Ex69;
var 
  num1, num2, num3, maior, menor, media: real;
  op: integer;
begin
  repeat
    textcolor(Cyan);
    clrscr;
    writeln(' --- Menu Interativo --- ');
    writeln('1 - Valores em ordem Crescente');
    writeln('2 - Valores em ordem Decrescente');
    writeln('3 - Maior dos Três valores');
    writeln('4 - Menor dos Três valores');
    writeln('5 - Média dos Três valores');
    writeln('6 - Valores existentes acima da média');
    writeln('7 - Sair');
    writeln('');
    writeln('Introduza uma opção');
    readln(op);
    
    case op of
      1: begin
        clrscr;
        writeln('Introduza três valores');
        readln(num1, num2, num3);
    
        if (num1 > num2) then
          begin
            num1 := num1 + num2;
            num2 := num1 - num2;
            num1 := num1 - num2;
          end;
        if (num2 > num3) then
          begin
            num2 := num2 + num3;
            num3 := num2 - num3;
            num2 := num2 - num3;
          end;
        if (num1 > num2) then
          begin
            num1 := num1 + num2;
            num2 := num1 - num2;
            num1 := num1 - num2;
          end;
        clrscr;
        writeln('Valores em ordem crescente: ', num1:0:2, ', ', num2:0:2, ', ', num3:0:2);
        readkey;
      end;
      
      2: begin
        clrscr;
        writeln('Introduza três valores');
        readln(num1, num2, num3);
    
        if (num1 < num2) then
          begin
            num1 := num1 + num2;
            num2 := num1 - num2;
            num1 := num1 - num2;
          end;
        if (num2 < num3) then
          begin
            num2 := num2 + num3;
            num3 := num2 - num3;
            num2 := num2 - num3;
          end;
        if (num1 < num2) then
          begin
            num1 := num1 + num2;
            num2 := num1 - num2;
            num1 := num1 - num2;
          end;
        clrscr;
        writeln('Valores em ordem decrescente: ', num1:0:2, ', ', num2:0:2, ', ', num3:0:2);
        readkey;
      end;
      
      3: begin
        clrscr;
        writeln('Introduza três valores');
        readln(num1, num2, num3);
        
        maior := num1;
        
        if (num2 > maior) then
          maior := num2;
          
        if (num3 > maior) then
          maior := num3;
          
        clrscr;
        writeln('O maior número é: ', maior:0:2);
        readkey;
      end;
      
      4: begin
        clrscr;
        writeln('Introduza três valores');
        readln(num1, num2, num3);
        
        menor := num1;
        
        if (num2 < menor) then
          menor := num2;
          
        if (num3 < menor) then
          menor := num3;
          
        clrscr;
        writeln('O menor número é: ', menor:0:2);
        readkey;
      end;
      
      5: begin
        clrscr;
        writeln('Introduza três valores');
        readln(num1, num2, num3);
        
        media := (num1 + num2 + num3) / 3;
        
        clrscr;
        writeln('A média dos três valores é: ', media:0:2);
        readkey;
      end;
      
      6: begin
        clrscr;
        writeln('Introduza três valores');
        readln(num1, num2, num3);
        
        media := (num1 + num2 + num3) / 3;
        
        clrscr;
        writeln('Valores acima da média: ');
        if num1 > media then
          writeln('num1: ', num1:0:2);
        if num2 > media then
          writeln('num2: ', num2:0:2);
        if num3 > media then
          writeln('num3: ', num3:0:2);
        readkey;
      end;
      
      7: begin
        writeln('Saindo...');
        break;
      end;
      
    else
      begin
        textcolor(Red);
        writeln('Opção inválida!');
        readkey;
      end;
    end;
    
  until op = 7;
end.
