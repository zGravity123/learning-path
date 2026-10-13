<h1 align="center">
  <img src="https://skillicons.dev/icons?i=cpp&theme=dark" width="48" height="48" alt="C++" />
  <br>
  C++ & Programação Modular
</h1>

<p align="center">
  <b>Evolução para C++, Paradigmas Modernos, Streams e Programação Modular</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Em_Progresso-yellow?style=for-the-badge&logo=cplusplus&logoColor=white" alt="Status">
  <img src="https://img.shields.io/badge/Compilador-G++-00599C?style=for-the-badge&logo=gnu" alt="Compilador">
  <img src="https://img.shields.io/badge/Exercícios-60+-blue?style=for-the-badge" alt="Exercícios">
</p>

---

## 📌 Sobre o Módulo

Neste módulo dou continuidade à evolução da lógica de programação e baixo nível, migrando para **C++**. Aqui são exploradas as facilidades do C++ moderno em conjunto com a organização arquitetural de software:

- **Streams de I/O**: Migração de `printf`/`scanf` para `std::cin` e `std::cout`.
- **Passagem por Referência**: Uso de referências (`&`) vs apontadores tradicionais.
- **Sobrecarga de Funções**: Polimorfismo estático em tempo de compilação.
- **Arquitetura Modular**: Separação clara entre especificações de cabeçalho (`.h`) e implementações (`.cpp`).

---

## 📂 Estrutura das Pastas

| Pasta | Descrição | Destaques |
| :--- | :--- | :--- |
| [📁 `01 - Exercicios`](./01%20-%20Exercicios) | 55 exercícios progressivos de raciocínio lógico | Inclui projetos modulares `Ex54` e `Ex55` |
| [📁 `02 - Fichas de Trabalho`](./02%20-%20Fichas%20de%20Trabalho) | Fichas de trabalho de aula | Ficha 0 (10 exercícios) e Ficha 1 |

---

## 🧩 Destaques: Programação Modular

Nos exercícios avançados, o código foi reestruturado seguindo as melhores práticas da indústria para divisão em módulos:

### 📐 Módulo Matemática ([`01 - Exercicios/Ex54`](./01%20-%20Exercicios/Ex54))
Separação em biblioteca matemática autónoma:
- `Matematica.h`: Declaração dos protótipos de funções de cálculo
- `Matematica.cpp`: Implementação detalhada dos algoritmos
- `Main.cpp`: Ponto de entrada e interação com o utilizador

### 📏 Módulo Geometria ([`01 - Exercicios/Ex55`](./01%20-%20Exercicios/Ex55))
Cálculo de áreas, perímetros e volumes em arquitetura modular:
- `Geometria.h`: Contratos de interface geométrica
- `Geometria.cpp`: Implementação dos cálculos analíticos
- `main.cpp`: Consola interativa de testes

---

## 🛠️ Como Compilar e Executar

Com o compilador **G++**:

```bash
# Compilar um exercício simples
g++ -std=c++17 "01 - Exercicios/Ex1.cpp" -o Ex1
./Ex1.exe

# Compilar um projeto modular multi-ficheiro (Exemplo Ex54)
g++ -std=c++17 "01 - Exercicios/Ex54/Main.cpp" "01 - Exercicios/Ex54/Matematica.cpp" -o Ex54
./Ex54.exe
```

---

<p align="center">
  <a href="../README.md">⬅️ Voltar ao README Principal</a>
</p>
