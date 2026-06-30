==================================
FILE:
AGENTS.md
==================================

# Agent Instructions

This repository is designed to be used by Codex or another AI coding agent as a persistent teaching workspace.

## First Files To Read

For any teaching, debugging, review, or exercise-generation request, read:

1. `SYSTEM.md`
2. `CONTEXT.md`
3. `ROADMAP.md`
4. `PROGRESS.md`

Then read the specific day, topic, project, or prompt file requested by the user.

## Command Routing

### User says: "Teach Day 01"

Read:

- `SYSTEM.md`
- `CONTEXT.md`
- `ROADMAP.md`
- `PROGRESS.md`
- `days/day01.md`

Then teach the lesson in a one-hour format. Include commands and exercises. Do not dump the whole file back to the user.

### User says: "Teach Day 12"

Read:

- all standard context files
- `days/day12.md`
- any relevant topic file, such as `MAKE_GUIDE.md`, `GNU_TOOLCHAIN.md`, `COMPILER_PIPELINE.md`, `POSIX.md`, or `MEMORY.md`

Relate the lesson to previous days.

### User says: "Quiz me"

Read:

- `PROGRESS.md`
- recent completed day files
- `quizzes/README.md`

Ask 5 to 10 questions. Mix conceptual, code-tracing, debugging, and command questions. Do not show answers until the learner responds.

### User says: "Quiz me on Day 08"

Read:

- `days/day08.md`
- `quizzes/day08.md` if it exists
- `answers/day08.md` only after the learner answers or explicitly asks for answers

### User says: "Review my code"

Read:

- `SYSTEM.md`
- `BEST_PRACTICES.md`
- relevant day file
- submitted code or workspace files

Review in this order:

1. Correctness
2. Memory safety
3. Undefined behavior
4. Resource lifetime
5. Portability
6. Build quality
7. Style

Use file and line references when reviewing repository code.

### User says: "Explain malloc"

Read:

- `MEMORY.md`
- relevant day files, usually `day04.md`, `day05.md`, `day06.md`, and `day15.md`

Explain from the learner's level. Include ownership, lifetime, heap diagrams, failure handling, and debugging.

### User says: "Debug this"

Read:

- `DEBUGGING.md`
- relevant day file
- submitted code, build file, or command output

Use a hypothesis-driven debugging process. Ask for the exact command only if it is missing and cannot be inferred.

### User says: "Generate exercises"

Read:

- requested day file or topic file
- `ROADMAP.md`
- `PROGRESS.md`

Generate exercises that fit in 35 minutes of coding unless the user asks for a larger project.

### User says: "Create revision"

Read:

- `PROGRESS.md`
- `ROADMAP.md`
- recently completed day files
- `prompts/revision.md`

Create a revision session with active recall, small code tasks, and bug-finding.

### User says: "Generate interview questions"

Read:

- `INTERVIEW.md`
- relevant day or topic file

Generate practical systems interview questions, but do not convert the course into interview cramming.

## File Creation Rules

When adding learner code:

- Put small exercises under `projects/dayXX-*`
- Put reusable templates under `templates/`
- Put learner notes under `notes/`
- Put scripts under `scripts/`

## Teaching Rules

Keep sessions bounded. The learner has one hour.

Do not introduce kernel driver implementation before the learner has practiced:

- C memory
- build systems
- object files
- POSIX APIs
- debugging
- file descriptors
- processes

## macOS Rules

Always mark platform differences:

- macOS executable format: Mach-O
- Linux executable format: ELF
- macOS debugger: LLDB
- Linux debugger: GDB
- macOS dynamic loader: `dyld`
- Linux dynamic loader: `ld-linux`
- Linux kernel modules require Linux

## Completion Tracking

When a day is completed, update `PROGRESS.md` with:

- date
- day number
- exercises completed
- bugs encountered
- concepts to revise
- next recommended session
