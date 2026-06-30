==================================
FILE:
days/day26.md
==================================

# Day 26 - Debugging Native Programs

## Objectives

- Use LLDB or GDB with intent.
- Debug crashes, bad memory, and wrong output.
- Inspect symbols and stack traces.

## Concepts

- breakpoint
- backtrace
- stack frame
- watchpoint
- sanitizer report
- core dump introduction

## Why They Exist

Native bugs are often invisible without tools. Debuggers and sanitizers turn memory and control flow into evidence.

## Reading

- `DEBUGGING.md`
- `COMMANDS.md`

## Examples

```sh
lldb ./buggy
breakpoint set --name main
run
bt
frame variable
```

## ASCII Diagram

```text
crash -> signal -> debugger stops -> inspect stack -> inspect variables
```

## Memory Diagram

```text
invalid pointer -> access -> fault -> debugger shows location
```

## Exercises

1. Debug a null pointer crash.
2. Debug a buffer overflow with ASan.
3. Debug wrong output with breakpoints.
4. Inspect symbols with `nm`.

## Mini Project

Build `projects/day26-debug-lab/`, a folder of broken programs and fixes.

## Debugging

Write a root-cause note for every bug fixed.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 -fsanitize=address,undefined buggy.c -o buggy
lldb ./buggy
nm buggy
```

## Interview Questions

1. What does a backtrace show?
2. Why compile with `-g`?
3. What does AddressSanitizer detect?

## Revision Checklist

- [ ] I can set a breakpoint.
- [ ] I can inspect stack frames.
- [ ] I can explain a sanitizer report.

## Homework

Create one intentional bug and document how to find it.

## Expected Outcome

You can debug from evidence rather than trial and error.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
