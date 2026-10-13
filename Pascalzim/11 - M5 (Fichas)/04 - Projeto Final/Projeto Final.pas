Program Pzim;

///////////////// Estruturas /////////////////

Type    
    Alunos = record
        nome : string;
        Numaluno : integer;
        Idade : integer;
        Numero : integer;
        Telefone : integer;
        Email : string;
        Localidade : string;
    end;
    
    disciplina = record
        codigo : integer;
        nome : string;
        totalhrs : real;
    end;
  
    notas = record
        aluno : string;
        nota : integer;
        id : integer;
    end;
  
var 
    aluno: array[1..20] of Alunos;
    disciplinas: array[1..20] of disciplina;
    nota: array[1..100] of notas;
    arq1, arq, arq2: text;
    senha: string;
    i, cont, cont1, cont2: integer;  // cont = alunos, cont1 = disciplinas, cont2 = notas

///////////////// PROCEDURES /////////////////

procedure login;
var
    logado: boolean;
begin
    logado := false;
    repeat
        clrscr;
        textcolor(cyan);
        writeln('Seja bem vindo! Por favor faca o log-in');
        write('Senha: ');
        readln(senha);
        
        if senha = 'admin123' then
        begin
            writeln('Bem vindo de volta, admin!');
            readkey; 
            logado := true;
        end
        else
        begin
            writeln('Ops! Senha incorreta');
            readkey;
        end;
    until logado = true;
end;

procedure adicionar_aluno;
begin
    if cont < 20 then
    begin
        clrscr;
        cont := cont + 1;
        
        write('Introduza o nome do aluno: ');
        readln(aluno[cont].nome);
        
        write('Introduza o numero do aluno: ');
        readln(aluno[cont].numaluno);
        
        write('Introduza a idade do aluno: ');
        readln(aluno[cont].idade);
        
        write('Introduza o numero de telefone do aluno: ');
        readln(aluno[cont].telefone);
        
        write('Introduza o e-mail do aluno: ');
        readln(aluno[cont].email);
        
        write('Introduza a localidade do aluno: ');
        readln(aluno[cont].localidade);
        
        writeln('Aluno adicionado com sucesso!');
        readkey;
    end
    else
    begin
        writeln('Erro! O limite de alunos ja foi preenchido (20)');
        readkey;
    end;
end;

procedure adicionar_disciplina;
begin
    if cont1 < 5 then
    begin
        clrscr;
        cont1 := cont1 + 1;
        
        write('Introduza o nome da disciplina: ');
        readln(disciplinas[cont1].nome);
        
        write('Introduza o total de horas: ');
        readln(disciplinas[cont1].totalhrs);
        
        disciplinas[cont1].codigo := cont1;
        
        writeln('Disciplina adicionada com sucesso!');
        readkey;
    end
    else
    begin
        writeln('Erro! O limite de disciplinas ja foi preenchido (5)');
        readkey;
    end;
end;

procedure adicionar_notas;
var j: integer;
begin
    if cont2 < 100 then     
    begin
        clrscr;
        cont2 := cont2 + 1;
        
        write('Introduza o nome do aluno: ');
        readln(nota[cont2].aluno);
        
        write('Introduza a nota (0/20): ');
        readln(nota[cont2].nota);
        
        // Mostrar IDs das disciplinas
        
        writeln('Pressione 0 para ver os IDs das disciplinas: ');
        readln(i);
        if i = 0 then
        begin
            clrscr;
            writeln('ID | Nome da Disciplina');
            writeln('----------------------');
            for j := 1 to cont1 do
                writeln(disciplinas[j].codigo, '  | ', disciplinas[j].nome);
            writeln;
        end;
        
        write('Introduza o ID da disciplina: ');
        readln(nota[cont2].id);
        
        writeln('Nota adicionada com sucesso!');
        readkey;
    end
    else    
    begin
        writeln('Erro! O limite de notas ja foi preenchido (100)');
        readkey;
    end;
end;

procedure listar_alunos;
var j: integer;
begin
    clrscr;
    textcolor(cyan);                
    writeln('============= INFORMACOES DOS ALUNOS =============');
    writeln;
    writeln('Nome       | Numero | Idade | Telefone   |         E-Mail           | Localidade       ');
    writeln('-----------+--------+-------+------------+--------------------------+------------------');
    
    for j := 1 to cont do
    begin
        writeln(
            aluno[j].nome:10, ' | ',
            aluno[j].numaluno:6, ' | ',
            aluno[j].idade:5, ' | ',
            aluno[j].telefone:10, ' | ',
            aluno[j].email:24, ' | ',
            aluno[j].localidade:15
        );                                                                 
    end;
    readkey;
end;

procedure listar_disciplinas;
var j: integer;
begin
    clrscr;
    textcolor(cyan);                
    writeln('============= INFORMACOES DAS DISCIPLINAS =============');
    writeln;
    writeln('Nome       | Codigo | TotalHrs ');
    writeln('-----------+--------+----------');
    
    for j := 1 to cont1 do  
    begin
        writeln(
            disciplinas[j].nome:10, ' | ',
            disciplinas[j].codigo:6, ' | ',
            disciplinas[j].totalhrs:5:2
        );                                                                          
    end;
    readkey;
end;

procedure listar_notas;
var 
    j, escolha, id_pesquisa: integer;
    nome_pesquisa: string;
    encontrou: boolean;
begin
    clrscr;
    textcolor(cyan);
    writeln('============= PROCURAR NOTAS =============');
    writeln('1 - Procurar por Nome do Aluno');
    writeln('2 - Procurar por ID da Disciplina');
    writeln('------------------------------------------');
    write('Escolha uma opcao: ');
    readln(escolha);
    
    clrscr;
    encontrou := false; 
    
    // Procurar ALUNO
    
    if escolha = 1 then
    begin
        write('Introduza o nome do aluno que quer procurar: ');
        readln(nome_pesquisa);
        writeln;
        writeln('============= NOTAS DE ', nome_pesquisa, ' =============');
        writeln('Nome       | ID Disciplina | Nota ');
        writeln('-----------+---------------+------');
        
        for j := 1 to cont2 do
        begin
            if nota[j].aluno = nome_pesquisa then
            begin
                writeln(nota[j].aluno:10, ' | ', nota[j].id:13, ' | ', nota[j].nota:4);
                encontrou := true;
            end;
        end;
    end
    
    // Procurar DISCIPLINA
    
    else if escolha = 2 then
    begin
        writeln('Pressione 0 para ver os IDs das disciplinas: ');
        readln(i);
        if i = 0 then
        begin
            clrscr;
            writeln('ID | Nome da Disciplina');
            writeln('----------------------');
            for j := 1 to cont1 do
                writeln(disciplinas[j].codigo, '  | ', disciplinas[j].nome);
            writeln;
        end;
                
        write('Introduza o ID da disciplina que quer procurar: ');
        readln(id_pesquisa);
        writeln;
        writeln('============= NOTAS DA DISCIPLINA ID: ', id_pesquisa, ' =============');
        writeln('Nome       | ID Disciplina | Nota ');
        writeln('-----------+---------------+------');
        
        for j := 1 to cont2 do
        begin
            if nota[j].id = id_pesquisa then
            begin
                writeln(nota[j].aluno:10, ' | ', nota[j].id:13, ' | ', nota[j].nota:4);
                encontrou := true;
            end;
        end;
    end
    else
    begin
        writeln('Opcao invalida!');
    end;

    if encontrou = false then
    begin
        writeln;
        writeln('Nenhum registo encontrado para a sua pesquisa.');
    end;

    writeln;
    readkey;
end;

procedure procurar_aluno;
var 
    j, k, x: integer;
    nome_pesquisa, nome_disciplina: string;
    encontrou: boolean;
begin
    clrscr;
    textcolor(cyan);
    
    write('Introduza o nome do aluno: ');
    readln(nome_pesquisa);
    writeln;
        
    encontrou := false;
        
    for k := 1 to cont do
    begin
        if aluno[k].nome = nome_pesquisa then
        begin
            writeln('============= INFORMACOES =============');
            writeln('Nome:       ', aluno[k].nome);
            writeln('Numero:     ', aluno[k].numaluno);
            writeln('Idade:      ', aluno[k].idade);
            writeln('Telefone:   ', aluno[k].telefone);
            writeln('Email:      ', aluno[k].email);
            writeln('Localidade: ', aluno[k].localidade);
            writeln('=======================================');
            encontrou := true;
        end;
    end;

    if encontrou = true then
    begin
        writeln;
        writeln('============= Notas =============');
        writeln('Disciplina           | Nota ');
        writeln('---------------------+------');
            
        for j := 1 to cont2 do
        begin
            if nota[j].aluno = nome_pesquisa then
            begin
                nome_disciplina := 'Desconhecida';
                    
                for x := 1 to cont1 do
                begin
                    if disciplinas[x].codigo = nota[j].id then
                        nome_disciplina := disciplinas[x].nome;
                end;
                    
                writeln(nome_disciplina:20, ' | ', nota[j].nota:4);
            end;
        end;
        writeln('===================================');
    end
    else
    begin
        writeln('Erro: Aluno nao encontrado');
    end;
        
    readkey;
end;

procedure listar_aprovados_reprovados;
var
    id_pesquisa, j: integer;
    nome_disciplina: string;
    encontrou_disciplina: boolean;
    tem_notas: boolean;
begin
    clrscr;
    textcolor(cyan);
    writeln('============= APROVADOS E REPROVADOS =============');
    
    writeln('Pressione 0 para ver os IDs das disciplinas: ');
    readln(i);
    if i = 0 then
    begin
        clrscr;
        writeln('ID | Nome da Disciplina');
        writeln('----------------------');
        for j := 1 to cont1 do
            writeln(disciplinas[j].codigo, '  | ', disciplinas[j].nome);
        writeln;
    end;
    
    write('Introduza o ID da disciplina: ');
    readln(id_pesquisa);
    writeln;
    
    encontrou_disciplina := false;
    nome_disciplina := '';
    
    // Encontra o nome da disciplina
    
    for j := 1 to cont1 do
    begin
        if disciplinas[j].codigo = id_pesquisa then
        begin
            nome_disciplina := disciplinas[j].nome;
            encontrou_disciplina := true;
        end;
    end;
    
    if encontrou_disciplina = false then
    begin
        writeln('Erro: Disciplina nao encontrada!');
        readkey;
    end
    else
    begin
        writeln('Resultados para a disciplina: ', nome_disciplina);
        writeln;
        
        // APROVADOS
        
        writeln('--- APROVADOS ---');
        tem_notas := false;
        for j := 1 to cont2 do
        begin
            if (nota[j].id = id_pesquisa) and (nota[j].nota >= 10) then
            begin
                writeln(nota[j].aluno:15, ' | Nota: ', nota[j].nota);
                tem_notas := true;
            end;
        end;
        if tem_notas = false then 
            writeln('Nenhum aluno aprovado.');
        writeln;
        
        // REPROVADOS
        
        writeln('--- REPROVADOS  ---');
        tem_notas := false;
        for j := 1 to cont2 do
        begin
            if (nota[j].id = id_pesquisa) and (nota[j].nota < 10) then
            begin
                writeln(nota[j].aluno:15, ' | Nota: ', nota[j].nota);
                tem_notas := true;
            end;
        end;
        if tem_notas = false then 
            writeln('Nenhum aluno reprovado.');
            
        writeln('==================================================');
        readkey;
    end;
end;


procedure guardar_dados;
var
    j: integer; 
begin
    // Alunos
    assign(arq, 'alunos.txt');
    rewrite(arq);  
    for j := 1 to cont do
    begin
        writeln(arq, 'Nome: ', aluno[j].nome);
        writeln(arq, 'Numero do Aluno: ', aluno[j].Numaluno);
        writeln(arq, 'Idade: ', aluno[j].idade);
        writeln(arq, 'Telefone: ', aluno[j].Telefone);
        writeln(arq, 'Email: ', aluno[j].Email);
        writeln(arq, 'Localidade: ', aluno[j].Localidade);
        writeln(arq);  
    end;
    close(arq);
  
    // Disciplinas
    assign(arq1, 'disciplinas.txt');
    rewrite(arq1);  
    for j := 1 to cont1 do
    begin
        writeln(arq1, 'Disciplina: ', disciplinas[j].nome);
        writeln(arq1, 'Codigo da Disciplina: ', disciplinas[j].codigo);
        writeln(arq1);
    end;
    close(arq1);
    
    // Notas
    assign(arq2, 'notas.txt');
    rewrite(arq2);  
    for j := 1 to cont2 do
    begin
        writeln(arq2, 'Aluno: ', nota[j].aluno);
        writeln(arq2, 'Nota: ', nota[j].nota);
        writeln(arq2, 'Codigo da Disciplina: ', nota[j].id);
        writeln(arq2);
    end;
    close(arq2);
  
    writeln('Todos os dados foram guardados com sucesso!');
    readkey; 
end;

procedure mostrar_menu;
var op: integer;
begin
    repeat
        textcolor(cyan);
        clrscr;
        writeln('===========================');
        writeln('|          MENU           |');
        writeln('===========================');
        writeln('1 - Adicionar Aluno');
        writeln('2 - Listar Aluno');
        writeln('3 - Adicionar Disciplina');
        writeln('4 - Listar Disciplina');
        writeln('5 - Adicionar Notas');
        writeln('6 - Listar Notas');
        writeln('7 - Aprovados e Reprovados / Disciplina');
        writeln('8 - Procurar Aluno (Mostrar Notas)');
        writeln('9 - Guardar Dados'); 
        writeln;
        writeln('10 - Sair');
        writeln;
        write('Escolha uma opcao: ');
        readln(op);
        
        case op of
            1: adicionar_aluno;
            2: listar_alunos;
            3: adicionar_disciplina;
            4: listar_disciplinas;
            5: adicionar_notas;
            6: listar_notas;
            7: listar_aprovados_reprovados;
            8: procurar_aluno;
            9: guardar_dados;
        end;
    until op = 10;
end;
    
///////////////// PROGRAMA PRINCIPAL /////////////////
begin
    
    cont := 0;
    cont1 := 0;
    cont2 := 0;

    login; 
    mostrar_menu;
end.