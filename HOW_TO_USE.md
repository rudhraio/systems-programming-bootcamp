# How To Use This Repository

This repository is a systems programming mentor workspace template. Fork it or create a repository from it, then use it daily with an AI mentor, your editor, your compiler, and your terminal.

Do not treat it like a book to read from top to bottom. Treat it like a training workspace.

## First-Time Setup

1. Run the environment check:

```sh
sh scripts/check-env.sh
```

2. Edit `CONTEXT.md` if your operating system, compiler, editor, or daily time budget differs.
3. Leave `SYSTEM.md`, `AGENTS.md`, and `ROADMAP.md` stable unless you are intentionally changing the course design.
4. Start with:

```text
Teach Day 01
```

## The Daily Workflow

Use this loop for each day:

```text
1. Ask the mentor: Teach Day XX
2. Read the day's objectives and examples.
3. Code the exercises or mini project.
4. Compile with warnings enabled.
5. Debug at least one mistake intentionally or naturally.
6. Update PROGRESS.md.
7. Stop after one hour unless you deliberately choose extra practice.
```

The intended time split is:

```text
20 min learning
35 min coding
 5 min revision
```

## First Session

For the first session, ask:

```text
Teach Day 01
```

The mentor should read:

- `SYSTEM.md`
- `HOW_TO_USE.md`
- `CONTEXT.md`
- `ROADMAP.md`
- `PROGRESS.md`
- `days/day01.md`

Then it should teach the lesson, give commands, and guide you into the Day 01 project.

## What To Read Manually

You do not need to read everything before starting.

Read these first:

1. `README.md`
2. `HOW_TO_USE.md`
3. `ROADMAP.md`
4. `days/day01.md`

Use the topic files when needed:

- `MEMORY.md` for stack, heap, malloc, ownership, leaks
- `COMMANDS.md` for terminal commands
- `DEBUGGING.md` for debugging workflow
- `COMPILER_PIPELINE.md` for preprocessing, compiling, linking, loading
- `GNU_TOOLCHAIN.md` for object files, symbols, libraries, ELF, Mach-O
- `MAKE_GUIDE.md` for Makefiles
- `POSIX.md` for Linux/macOS system APIs

## How To Talk To The AI Mentor

Use short, direct prompts.

Daily lesson:

```text
Teach Day 04
```

Quiz:

```text
Quiz me on Day 04
```

Code review:

```text
Review my solution for Day 04
```

Debugging:

```text
Debug this Day 04 malloc issue
```

Deep dive:

```text
Deep dive into pointer arithmetic
```

Revision:

```text
Create revision for Days 01-06
```

Harder practice:

```text
Generate harder exercises for Day 15
```

## Where To Put Your Work

Put daily code under `projects/`.

Examples:

```text
projects/day01-hello/
projects/day04-dyn-string/
projects/day09-static-lib/
projects/day21-mini-shell/
```

Put personal notes under `notes/`.

Examples:

```text
notes/day04-memory-bugs.md
notes/day11-make-confusions.md
notes/linux-vm-setup.md
```

Use `templates/` only as starter references. Copy a template into a project directory, rename it if needed, then modify it for that day's exercise.

## How To Track Progress

Update `PROGRESS.md` after each session.

Use this format:

```text
Date:
Day:
Topic:
Commands run:
Exercises completed:
Bugs encountered:
What clicked:
What needs revision:
Next session:
```

Progress tracking matters because future AI sessions can read it and continue without asking you to repeat your background.

If you publish your completed learning repository later, review `PROGRESS.md`, `notes/`, and `projects/` first. They may contain personal details, paths, command output, or unfinished experiments.

## How To Use The Day Files

Each `days/dayXX.md` file contains:

- objectives
- concepts
- why the topic exists
- reading
- examples
- ASCII diagrams
- memory diagrams
- exercises
- mini project
- debugging task
- terminal commands
- interview questions
- revision checklist
- homework
- expected outcome
- time split

Do not try to complete every possible extension in one sitting. The main goal is one strong hour per day.

## How To Use Quizzes

Ask:

```text
Quiz me on Day 08
```

Answer before reading files under `answers/`.

Use quizzes for active recall. If you fail a quiz, do a revision session instead of rushing forward.

## How To Use Prompts

The `prompts/` directory contains reusable prompt patterns for the AI mentor.

Use them when you want a specific mode:

- `prompts/teach-day.md`
- `prompts/quiz-day.md`
- `prompts/revision.md`
- `prompts/debug.md`
- `prompts/deep-dive.md`
- `prompts/code-review.md`
- `prompts/project-review.md`
- `prompts/memory.md`
- `prompts/compiler.md`
- `prompts/driver.md`

You can paste one of those prompts into a future session, replacing `XX` or `TOPIC`.

## macOS And Linux Practice

Your host is macOS, but many topics are Linux-focused.

Use macOS directly for:

- C basics
- Clang
- LLDB
- Make
- Mach-O inspection with `otool`
- POSIX basics that macOS supports

Use Linux through UTM, Docker, VMware, Parallels, or a remote machine for:

- ELF inspection with `readelf`
- `strace`
- Linux-specific behavior
- glibc/musl details
- kernel modules
- device driver work

Do not attempt Linux kernel module work on macOS. Use a disposable Linux VM.

## When You Get Stuck

Use this prompt:

```text
Debug this. I am on Day XX. Here is the command I ran, the code, and the exact error.
```

Always include:

- the command
- the full error message
- the file you changed
- what you expected
- what happened instead

## Quality Bar

For every C/C++ project:

- compile with warnings
- understand every warning
- check allocation failures
- check system call failures
- run sanitizers when memory is involved
- keep ownership clear
- write at least one small test when practical

## Recommended Rhythm

Use this weekly rhythm:

```text
Day 1-6: learn and build
Day 7: revise and integrate
Day 8-13: learn and build
Day 14: revise and integrate
Day 15-20: learn and build
Day 21: revise and integrate
Day 22-27: learn and build
Day 28: revise and integrate
Day 29-30: driver intro and capstone
```

The course is successful if you can explain your code, debug failures, and connect source code to the system underneath it.
