<h1 align="center">
  <img src="https://skillicons.dev/icons?i=c&theme=dark" width="48" height="48" alt="C Language" />
  <br>
  C Programming & Low-Level Foundations
</h1>

<p align="center">
  <b>Structured Programming, Memory Concepts, Algorithms, and Automation in C</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Completed-2ea44f?style=for-the-badge&logo=checkmarx&logoColor=white" alt="Status">
  <img src="https://img.shields.io/badge/Compiler-GCC-00599C?style=for-the-badge&logo=gnu" alt="Compiler">
  <img src="https://img.shields.io/badge/Exercises-180+-blue?style=for-the-badge" alt="Exercises">
</p>

---

## About the Module

This directory tracks the progression through the **C programming language**. The primary objective was to master low-level memory interactions, high-performance control flow, array and pointer operations, and console-based software development.

Core concepts covered:
- **Fundamentals**: Formatted input/output (`printf`, `scanf`), static types, and arithmetic/logical operators.
- **Control Flow**: Decision-making (`if/else`, `switch/case`) and iterative loops (`for`, `while`, `do-while`).
- **Collections & Strings**: 1D arrays, 2D matrices, and null-terminated character strings (`char[]`).
- **Modularization**: Function declarations, signatures, parameter passing mechanisms, and variable scope.
- **Applied Projects**: Interactive terminal games, conversational bots, and simulations.

---

## Directory Structure

| Directory | Description | Highlights |
| :--- | :--- | :--- |
| [`01 - Ficha 1`](./01%20-%20Ficha%201) | Syntax foundations and formatted I/O | 15 introductory problems |
| [`02 - Exercicios`](./02%20-%20Exercicios) | Continuous algorithmic practice (Ex1 to Ex92) | 92 programs focusing on problem-solving |
| [`03 - Self-Study`](./03%20-%20Self-Study) | Independent research and extra challenges | 8 autonomous practice problems |
| [`04 - Ficha 2`](./04%20-%20Ficha%202) | Conditional logic and repetitive control flow | 20 consolidation exercises |
| [`05 - Ficha 3`](./05%20-%20Ficha%203) | Functions and vector manipulation | 10 modularized exercises |
| [`06 - Especiais`](./06%20-%20Especiais) | Full projects and interactive simulations | Chatbot, Portugal 2026, CodeQuest, and Escape Room |
| [`07 - CodeAvalia`](./07%20-%20CodeAvalia) | Practical assessments and evaluated tasks | 7 complete graded worksheets |
| [`08 - Ficha 4`](./08%20-%20Ficha%204) | Vectors, matrices, and string processing | 20 array and string manipulation programs |
| [`09 - Ficha 5`](./09%20-%20Ficha%205) | Advanced functions and algorithmic logic | 20 intermediate-to-advanced tasks |
| [`10 - Ficha 6`](./10%20-%20Ficha%206) | Advanced topics and module consolidation | 4 capstone module challenges |

---

## Featured Projects ([`06 - Especiais`](./06%20-%20Especiais))

### Console Chatbot ([`Chatbot.c`](./06%20-%20Especiais/Chatbot.c))
A terminal conversational agent that parses user commands, simulates context-aware responses, and provides utility tools.

### Portugal 2026 ([`Portugal2026.c`](./06%20-%20Especiais/Portugal2026.c))
A tournament simulator managing national football teams, matches, point tables, and statistical ranking over 500+ lines of structured C code.

### CodeQuest ([`CodeQuest.c`](./06%20-%20Especiais/CodeQuest.c))
An interactive RPG adventure game featuring programming puzzles and decision-based branching paths.

### Escape Room ([`Scaperoom.c`](./06%20-%20Especiais/Scaperoom.c))
C port and evolution of the classic Escape Room, employing state machines and riddle solving.

---

## How to Compile and Run

Using the **GCC** compiler:

```bash
# Compile a single exercise
gcc "01 - Ficha 1/Ex1.c" -o Ex1

# Run on Windows
./Ex1.exe

# Compile a project with optimization
gcc -O2 "06 - Especiais/Chatbot.c" -o Chatbot
./Chatbot.exe
```

---

<p align="center">
  <a href="../README.md">Back to Main README</a>
</p>
