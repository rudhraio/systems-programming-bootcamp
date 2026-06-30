# Systems Programming Bootcamp

This repository is a self-contained 30-day systems programming course template for learners who know basic C and have about one hour per day.

It is designed to act as persistent context for future AI teaching sessions. A future mentor should be able to read `SYSTEM.md`, `HOW_TO_USE.md`, `AGENTS.md`, `CONTEXT.md`, and `ROADMAP.md`, then respond naturally to prompts such as:

- Teach Day 03
- Quiz me on Day 08
- Review my solution for Day 10
- Deep dive into malloc
- Explain ELF again
- Revise Makefiles
- Debug my code

## Start Here

If you are using this as a GitHub template or fork:

1. Run `sh scripts/check-env.sh`.
2. Adjust `CONTEXT.md` if your setup differs from the default macOS-oriented profile.
3. Ask your AI mentor: `Teach Day 01`.
4. Put your code under `projects/` and notes under `notes/`.
5. Update `PROGRESS.md` after each session.

Read these files first:

1. `HOW_TO_USE.md` - daily workflow and repository usage guide
2. `CONTEXT.md` - learner profile
3. `ROADMAP.md` - 30-day course map
4. `AGENTS.md` - exact instructions for Codex or another coding agent
5. `days/day01.md` - first lesson

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
|-- .gitignore
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

To check your local tools:

```sh
sh scripts/check-env.sh
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
- Thread race demonstration
- Networking utility
- Unit tests
- File copy utility
- Character driver skeleton

This is not interview cramming. It is a practical path toward becoming comfortable with real systems software.

## Publishing Notes

Before publishing your own copy publicly, choose a repository license and add a `LICENSE` file. This template intentionally does not assume a license for you.
