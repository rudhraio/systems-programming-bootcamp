# Day 08 - Compiler Pipeline

## Objectives

- Walk through preprocessing, compiling, assembling, linking, and loading.
- Generate intermediate files.
- Classify errors by pipeline stage.

## Concepts

- preprocessor
- compiler
- assembler
- linker
- loader
- translation unit

## Why They Exist

Build failures become easier when you know which machine in the pipeline produced the error.

## Reading

- `COMPILER_PIPELINE.md`
- `GNU_TOOLCHAIN.md`

## Examples

```sh
clang -E main.c -o main.i
clang -S main.c -o main.s
clang -c main.c -o main.o
clang main.o -o app
```

## ASCII Diagram

```text
.c -> .i -> .s -> .o -> executable -> process
```

## Memory Diagram

```text
executable mapped:
text | rodata | data | bss | stack | heap
```

## Exercises

1. Generate `.i`, `.s`, and `.o`.
2. Find your function name in assembly.
3. Create a missing declaration error.
4. Create a link error with an undefined function.

## Mini Project

Build `projects/day08-pipeline-lab/`, containing one program and saved intermediate outputs.

## Debugging

Given an error, label it as preprocessing, compile, link, load, or runtime.

## Terminal Commands

```sh
clang -E main.c -o main.i
clang -S main.c -o main.s
clang -c main.c -o main.o
nm main.o
clang main.o -o app
```

## Interview Questions

1. What does the preprocessor output?
2. What is an object file?
3. What does the linker resolve?

## Revision Checklist

- [ ] I can produce intermediate build artifacts.
- [ ] I can identify compile vs link errors.
- [ ] I can explain what the loader does.

## Homework

Write a one-page explanation of the path from `main.c` to a running process.

## Expected Outcome

The compiler pipeline is no longer a black box.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
