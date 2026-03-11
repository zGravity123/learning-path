Program Pzim ;
var array preco_qnt:[1..5] of integer;
		array nome:[1..5] of integer;
		nome: string;
		cont: integer;
		med : real;

procedure perguntas;
Begin
	for i := 1 to 5
		Begin
			clrscr
			textcolor(Cyan);
			textbackground(White);
			writeln('Introduza o nome de um produto');
			readln(nome[i]);
			
			writeln('Introduza o o preço do produto ',i);
			readln(preco_qnt[i]);

			writeln('Introduza o a quantidade do produto ',i);
			readln(preco_qnt[i]);	
			
			cont := cont + preco_qnt[i];
			med := cont/5;
			 	
		End;
End;

procedure 

Begin

	perguntas:


  
End.