<h1 align="center">
  <img src="https://skillicons.dev/icons?i=c&theme=dark" width="48" height="48" alt="C Language" />
  <br>
  Linguagem C e Programacao de Baixo Nivel
</h1>

<p align="center">
  <b>Automacao, Estruturas de Dados, Algoritmos e Otimizacao em C</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Concluido-2ea44f?style=for-the-badge&logo=checkmarx&logoColor=white" alt="Status">
  <img src="https://img.shields.io/badge/Compilador-GCC-00599C?style=for-the-badge&logo=gnu" alt="Compilador">
  <img src="https://img.shields.io/badge/Exercicios-180+-blue?style=for-the-badge" alt="Exercicios">
</p>

---

## Sobre o Modulo

Este diretorio contem todo o progresso no ecossistema da **linguagem C**. O foco desta etapa foi aprofundar os conhecimentos em manipulacao direta de memoria, estruturas de controlo de alta performance, manipulacao de arrays e apontadores, alem do desenvolvimento de aplicacoes em consola interativas.

Topicos centrais desenvolvidos:
- **Fundamentos**: Entrada/saida formatada (`printf`, `scanf`), tipagem estatica e operadores binarios/logicos.
- **Estruturas de Controlo**: Tomadas de decisao (`if/else`, `switch/case`) e lacos de iteracao (`for`, `while`, `do-while`).
- **Colecoes**: Vetores unidimensionais, matrizes bidimensionais e strings (`char[]`).
- **Modularizacao**: Assinatura de funcoes, prototipos, passagem de parametros e escopo.
- **Projetos**: Jogos de consola interativos, chatbots e simuladores.

---

## Estrutura das Pastas

| Pasta | Descricao | Destaques |
| :--- | :--- | :--- |
| [`01 - Ficha 1`](./01%20-%20Ficha%201) | Fundamentos de sintaxe e I/O formatado | 15 exercicios introdutorios |
| [`02 - Exercicios`](./02%20-%20Exercicios) | Ampla colecao de pratica continua (Ex1 a Ex92) | 92 programas com desafios de raciocinio |
| [`03 - Self-Study`](./03%20-%20Self-Study) | Estudos autonomos e aprofundamento independente | 8 desafios praticos adicionais |
| [`04 - Ficha 2`](./04%20-%20Ficha%202) | Estruturas condicionais e lacos de repeticao | 20 exercicios de fixacao |
| [`05 - Ficha 3`](./05%20-%20Ficha%203) | Funcoes e manipulacao de vetores | 10 exercicios de modularizacao |
| [`06 - Especiais`](./06%20-%20Especiais) | Projetos completos e simuladores | Chatbot, Portugal 2026, CodeQuest e Escape Room |
| [`07 - CodeAvalia`](./07%20-%20CodeAvalia) | Fichas de avaliacao e provas praticas | 7 fichas completas avaliadas |
| [`08 - Ficha 4`](./08%20-%20Ficha%204) | Vetores, matrizes e cadeias de caracteres | 20 exercicios com matrizes e strings |
| [`09 - Ficha 5`](./09%20-%20Ficha%205) | Funcoes avancadas e estruturas algoritmicas | 20 exercicios de nivel intermedio/avancado |
| [`10 - Ficha 6`](./10%20-%20Ficha%206) | Topicos avancados e consolidacao | 4 desafios de finalizacao de modulo |

---

## Projetos em Destaque ([`06 - Especiais`](./06%20-%20Especiais))

### Chatbot de Consola ([`Chatbot.c`](./06%20-%20Especiais/Chatbot.c))
Sistema conversacional em terminal que processa comandos do utilizador, simula respostas contextuais e oferece opcoes utilitarias.

### Portugal 2026 ([`Portugal2026.c`](./06%20-%20Especiais/Portugal2026.c))
Simulador completo com logica de pontuacao, gestao de selecoes, partidas e estatisticas com mais de 500 linhas de codigo estruturado.

### CodeQuest ([`CodeQuest.c`](./06%20-%20Especiais/CodeQuest.c))
Jogo de aventura interativo em formato RPG com desafios de programacao e tomada de decisoes em tempo real.

### Escape Room ([`Scaperoom.c`](./06%20-%20Especiais/Scaperoom.c))
Portabilidade e evolucao do classico Escape Room para C, utilizando logica avancada de estados e puzzles interativos.

---

## Como Compilar e Executar

Utilizando o compilador **GCC** (via terminal ou MSYS2/MinGW):

```bash
# Compilar um exercicio individual
gcc "01 - Ficha 1/Ex1.c" -o Ex1

# Executar no Windows
./Ex1.exe

# Compilar um projeto com otimizacao
gcc -O2 "06 - Especiais/Chatbot.c" -o Chatbot
./Chatbot.exe
```

---

<p align="center">
  <a href="../README.md">Voltar ao README Principal</a>
</p>
