# Day 21 - Revision Project 3: Mini Shell Part 1

## Objectives

- Combine parsing, processes, and file descriptors.
- Build the first version of a mini shell.
- Reinforce Days 19-20.

## Concepts

- REPL loop
- command parsing
- `fork`
- `execvp`
- `waitpid`
- exit status

## Why They Exist

A shell is a compact systems programming project: input, parsing, processes, file descriptors, errors, and control flow.

## Reading

- `POSIX.md`
- `DEBUGGING.md`

## Examples

```text
prompt -> read line -> parse argv -> fork -> execvp -> wait -> prompt
```

## ASCII Diagram

```text
mini-shell
   |
 fork child
   |
 exec command
```

## Memory Diagram

```text
line buffer -> argv pointers into buffer
```

## Exercises

1. Read a command line.
2. Split it into words.
3. Run the command with `fork` and `execvp`.
4. Add `exit`.

## Mini Project

Build `projects/day21-mini-shell/`, a shell that runs simple commands.

## Debugging

Handle empty input, missing commands, and failed `fork`.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 shell.c -o msh
./msh
```

## Interview Questions

1. Why does a shell use `fork` before `exec`?
2. What is `argv`?
3. What should happen when `execvp` fails?

## Revision Checklist

- [ ] I can write a REPL loop.
- [ ] I can run external commands.
- [ ] I can handle child status.

## Homework

Add a `cd` built-in and explain why it must run in the shell process.

## Expected Outcome

You have the first working mini shell.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
