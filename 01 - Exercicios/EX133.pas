Program Pzim;

Type 
  Artigo = Record
    Nome: string[20];
    preco, iva, piva: real;
  end;

var
  A1, A2, A3: Artigo;  
  total, media: real;  

Begin

	textcolor(Cyan);
  writeln('Artigo 1: ');
  readln(A1.nome, A1.preco);
  writeln('Artigo 2: ');
  readln(A2.nome, A2.preco);
  writeln('Artigo 3: ');
  readln(A3.nome, A3.preco);
  
  A1.iva := A1.preco * 0.23; 
  A2.iva := A2.preco * 0.23; 
  A3.iva := A3.preco * 0.23;
  
  A1.piva := A1.preco + A1.iva;
  A2.piva := A2.preco + A2.iva;
  A3.piva := A3.preco + A3.iva;
  
  total := A1.piva + A2.piva + A3.piva;
  media := total / 3;
  

  textcolor(Yellow);
  writeln(' /-----------/ INFORMAÇÕES /-----------/ ');
  writeln;
  writeln('	', A1.nome, '|', A1.piva:0:2);
  writeln('	', A2.nome, '|', A2.piva:0:2);
  writeln('	', A3.nome, '|', A3.piva);
  writeln;
  writeln('	Total: ', total:0:2);
  writeln('	Média: ', media:0:2);
  writeln(' /-----------/ ------------ /-----------/ ');
  readkey;
End.