<h1 align="center">
  <img src="https://skillicons.dev/icons?i=cpp&theme=dark" width="48" height="48" alt="C++" />
  <br>
  C++ e Programacao Modular
</h1>

<p align="center">
  <b>Evolucao para C++, Paradigmas Modernos, Streams e Programacao Modular</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Em_Progresso-yellow?style=for-the-badge&logo=cplusplus&logoColor=white" alt="Status">
  <img src="https://img.shields.io/badge/Compilador-G++-00599C?style=for-the-badge&logo=gnu" alt="Compilador">
  <img src="https://img.shields.io/badge/Exercicios-60+-blue?style=for-the-badge" alt="Exercicios">
</p>

---

## Sobre o Modulo

Neste modulo dou continuidade a evolucao da logica de programacao e baixo nivel, migrando para **C++**. Aqui sao exploradas as facilidades do C++ moderno em conjunto com a organizacao arquitetural de software:

- **Streams de I/O**: Migracao de `printf`/`scanf` para `std::cin` e `std::cout`.
- **Passagem por Referencia**: Uso de referencias (`&`) vs apontadores tradicionais.
- **Sobrecarga de Funcoes**: Polimorfismo estatico em tempo de compilacao.
- **Arquitetura Modular**: Separacao clara entre especificacoes de cabecalho (`.h`) e implementacoes (`.cpp`).

---

## Estrutura das Pastas

| Pasta | Descricao | Destaques |
| :--- | :--- | :--- |
| [`01 - Exercicios`](./01%20-%20Exercicios) | 55 exercicios progressivos de raciocinio logico | Inclui projetos modulares `Ex54` e `Ex55` |
| [`02 - Fichas de Trabalho`](./02%20-%20Fichas%20de%20Trabalho) | Fichas de trabalho de aula | Ficha 0 (10 exercicios) e Ficha 1 |

---

## Destaques: Programacao Modular

Nos exercicios avancados, o codigo foi reestruturado seguindo as melhores praticas da industria para divisao em modulos:

### Modulo Matematica ([`01 - Exercicios/Ex54`](./01%20-%20Exercicios/Ex54))
Separacao em biblioteca matematica autonoma:
- `Matematica.h`: Declaracao dos prototipos de funcoes de calculo
- `Matematica.cpp`: Implementacao detalhada dos algoritmos
- `Main.cpp`: Ponto de entrada e interacao com o utilizador

### Modulo Geometria ([`01 - Exercicios/Ex55`](./01%20-%20Exercicios/Ex55))
Calculo de areas, perimetros e volumes em arquitetura modular:
- `Geometria.h`: Contratos de interface geometrica
- `Geometria.cpp`: Implementacao dos calculos analiticos
- `main.cpp`: Consola interativa de testes

---

## Como Compilar e Executar

Com o compilador **G++**:

```bash
# Compilar um exercicio simples
g++ -std=c++17 "01 - Exercicios/Ex1.cpp" -o Ex1
./Ex1.exe

# Compilar um projeto modular multi-ficheiro (Exemplo Ex54)
g++ -std=c++17 "01 - Exercicios/Ex54/Main.cpp" "01 - Exercicios/Ex54/Matematica.cpp" -o Ex54
./Ex54.exe
```

---

<p align="center">
  <a href="../README.md">Voltar ao README Principal</a>
</p>
