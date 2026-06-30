==================================
FILE:
README.md
==================================

# Systems Programming Bootcamp

This repository is a self-contained 30-day systems programming course for a learner who knows basic C and has exactly one hour per day.

It is designed to act as persistent context for future AI teaching sessions. A future mentor should be able to read `SYSTEM.md`, `HOW_TO_USE.md`, `AGENTS.md`, `CONTEXT.md`, and `ROADMAP.md`, then respond naturally to prompts such as:

- Teach Day 03
- Quiz me on Day 08
- Review my solution for Day 10
- Deep dive into malloc
- Explain ELF again
- Revise Makefiles
- Debug my code

## Start Here

Read these files in order:

1. `SYSTEM.md` - permanent teaching instructions
2. `HOW_TO_USE.md` - daily workflow and repository usage guide
3. `CONTEXT.md` - learner profile
4. `ROADMAP.md` - 30-day course map
5. `AGENTS.md` - exact instructions for Codex or another coding agent
6. `days/day01.md` - first lesson

## Repository Layout

```text
systems-programming-bootcamp/
|-- README.md
|-- HOW_TO_USE.md
|-- SYSTEM.md
|-- AGENTS.md
|-- CONTEXT.md
|-- ROADMAP.md
|-- PROGRESS.md
|-- GLOSSARY.md
|-- COMMANDS.md
|-- DEBUGGING.md
|-- MEMORY.md
|-- COMPILER_PIPELINE.md
|-- MAKE_GUIDE.md
|-- GNU_TOOLCHAIN.md
|-- POSIX.md
|-- RESOURCES.md
|-- INTERVIEW.md
|-- BEST_PRACTICES.md
|-- days/
|-- projects/
|-- templates/
|-- notes/
|-- quizzes/
|-- answers/
|-- prompts/
`-- scripts/
```

## Daily Format

Each day is designed for one hour:

- 20 minutes learning
- 35 minutes coding
- 5 minutes revision

Every day includes objectives, concepts, why they exist, examples, diagrams, exercises, a mini project, debugging tasks, commands, interview questions, a checklist, homework, and expected outcomes.

## How To Use

For a teaching session:

```text
Teach Day 01
```

For review:

```text
Review my solution for Day 10
```

For revision:

```text
Quiz me on Day 08
```

For deeper understanding:

```text
Deep dive into malloc
```

## Environment Assumptions

Primary host:

- macOS
- zsh or bash
- Vim or VS Code
- Clang and GCC
- LLDB on macOS
- GDB inside Linux VM/container if needed

Linux practice options:

- UTM Linux VM
- Docker
- VMware Fusion
- Parallels
- Remote Linux machine

## Course Goal

By the end of Day 30, the learner should have built:

- Hello World
- Static library
- Shared library
- Custom binary
- Command-line utility
- Makefile project
- Memory allocator
- Mini shell
- Thread pool
- Networking utility
- Unit tests
- File copy utility
- Character driver skeleton

This is not interview cramming. It is a practical path toward becoming comfortable with real systems software.
