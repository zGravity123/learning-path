Program Pzim;
var
    nome: array[1..3] of string;
    qtd: array[1..3] of integer;
    qtm: array[1..3] of integer;
    pcu: array[1..3] of real;
    encomendas: array[1..3] of real;
    i, qntpedido, produtoIndex: integer;
    nomeproduto: string;
    prosseguir: char;
    total: real;
Begin
    randomize;
    textcolor(cyan);
    
    // Dados de produtos
    
    for i := 1 to 3 do
    begin
        writeln('Digite o nome do produto #',i);
        readln(nome[i]);
        clrscr;
        
        writeln('Digite a quantidade disponível (#',i,')');
        readln(qtd[i]);
        clrscr;

        writeln('Digite a quantidade mínima necessária no estoque (#',i,')');
        readln(qtm[i]);
        clrscr;

        writeln('Digite o preço unitário (#',i,')');
        readln(pcu[i]);
        clrscr;
    end;

    // Processo da compra
    
    repeat
        writeln('Digite o nome do produto que deseja comprar');
        readln(nomeproduto);
        
        clrscr;
        
        produtoIndex := -1;
        for i := 1 to 3 do
        begin
            if nome[i] = nomeproduto then
            begin
                produtoIndex := i;
                break;
            end;
        end;

        if produtoIndex = -1 then
        begin
            writeln('Produto não encontrado!');
            clrscr;
        end;
        
        if qtd[produtoIndex] <= qtm[produtoIndex] then
            writeln('É necessário realizar uma nova encomenda para garantir a quantidade mínima de estoque')
        else
        begin
        		clrscr;
            writeln('Quantas unidades deseja comprar?');
            readln(qntpedido);


            if qtd[produtoIndex] < qntpedido then
                writeln('Quantidade insuficiente no estoque. O máximo disponível é ', qtd[produtoIndex])
                
            else
            begin
                
                encomenda[i] := pcu[produtoIndex] * qntpedido;
                clrscr;
                
                writeln('O preço do produto é de $$ ', encomenda[i]:0:2);
								writeln('');
                writeln('Deseja prosseguir?');
                writeln('[S]im ou [N]ão');
                readln(prosseguir);

                if (prosseguir = 'S') or (prosseguir = 's') then
                begin
                    qtd[produtoIndex] := qtd[produtoIndex] - qntpedido;
                    clrscr;
                    writeln('Produto comprado! O ID dele é: ', random(10743));
                    writeln('Estoque atualizado: ', qtd[produtoIndex], ' unidades restantes.');
                end
                else
                    writeln('Compra cancelada.');
            end;
        end;

        writeln('Deseja realizar outra compra? [S]im / [N]ão');
        readln(prosseguir);

    until (prosseguir = 'N') or (prosseguir = 'n');

end.
