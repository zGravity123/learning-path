<h1 align="center">
  <img src="https://skillicons.dev/icons?i=cpp&theme=dark" width="48" height="48" alt="C++" />
  <br>
  C++ & Modular Programming
</h1>

<p align="center">
  <b>Evolution to C++, Modern Paradigms, Streams, and Modular Architecture</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-In_Progress-yellow?style=for-the-badge&logo=cplusplus&logoColor=white" alt="Status">
  <img src="https://img.shields.io/badge/Compiler-G++-00599C?style=for-the-badge&logo=gnu" alt="Compiler">
  <img src="https://img.shields.io/badge/Exercises-60+-blue?style=for-the-badge" alt="Exercises">
</p>

---

## About the Module

This module represents the progression from structured C to **C++**. The focus is on leveraging modern language features while structuring code into maintainable, modular software components:

- **I/O Streams**: Modern input/output handling via `std::cin` and `std::cout`.
- **Pass-by-Reference**: Leveraging native references (`&`) alongside traditional pointer mechanics.
- **Function Overloading**: Static compile-time polymorphism.
- **Modular Software Architecture**: Strict decoupling between header definitions (`.h`) and implementation files (`.cpp`).

---

## Directory Structure

| Directory | Description | Highlights |
| :--- | :--- | :--- |
| [`01 - Exercicios`](./01%20-%20Exercicios) | 55 progressive logical challenges | Includes modular projects `Ex54` and `Ex55` |
| [`02 - Fichas de Trabalho`](./02%20-%20Fichas%20de%20Trabalho) | Curriculum laboratory worksheets | Worksheet 0 (10 exercises) and Worksheet 1 |

---

## Modular Architecture Highlights

Advanced exercises apply industry conventions for multi-file component design:

### Mathematics Module ([`01 - Exercicios/Ex54`](./01%20-%20Exercicios/Ex54))
Decoupled mathematical computation library:
- `Matematica.h`: Function prototype declarations
- `Matematica.cpp`: Algorithmic implementations
- `Main.cpp`: Entry point and CLI user interface

### Geometry Module ([`01 - Exercicios/Ex55`](./01%20-%20Exercicios/Ex55))
Modular calculation of areas, perimeters, and volumes:
- `Geometria.h`: Geometric interface contracts
- `Geometria.cpp`: Analytical calculation routines
- `main.cpp`: Interactive test console

---

## How to Compile and Run

Using the **G++** compiler:

```bash
# Compile a single exercise
g++ -std=c++17 "01 - Exercicios/Ex1.cpp" -o Ex1
./Ex1.exe

# Compile a multi-file modular project (e.g. Ex54)
g++ -std=c++17 "01 - Exercicios/Ex54/Main.cpp" "01 - Exercicios/Ex54/Matematica.cpp" -o Ex54
./Ex54.exe
```

---

<p align="center">
  <a href="../README.md">Back to Main README</a>
</p>
