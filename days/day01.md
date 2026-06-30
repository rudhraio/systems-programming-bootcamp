==================================
FILE:
days/day01.md
==================================

# Day 01 - Toolchain Orientation And Serious Hello World

## Objectives

- Compile and run a C program intentionally.
- Understand warnings, debug flags, object files, and executable output.
- Learn the difference between source, object file, executable, and process.

## Concepts

- compiler driver
- warning flags
- debug symbols
- object files
- executable files
- macOS Clang vs Linux GCC/Clang

## Why They Exist

Systems programmers do not just write code. They control how code becomes machine instructions. The first professional habit is knowing exactly what command built your binary.

## Reading

- `COMMANDS.md`
- `COMPILER_PIPELINE.md`
- `GNU_TOOLCHAIN.md`

## Examples

```c
#include <stdio.h>

int main(void) {
    printf("hello, systems programming\n");
    return 0;
}
```

Compile:

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 hello.c -o hello
./hello
```

## ASCII Diagram

```text
hello.c -> clang -> hello
source     build    executable
```

## Memory Diagram

```text
process memory
+------+  printf code in shared library
| text |
+------+
| data |
+------+
|stack |  main frame
+------+
```

## Exercises

1. Build `hello.c` with Clang.
2. Build it with GCC if available.
3. Add an unused variable and observe the warning.
4. Compile with `-c` and inspect the `.o` file with `nm`.

## Mini Project

Create `projects/day01-hello/` with:

- `hello.c`
- `build.sh`
- `README.md`

The script should compile with warnings and run the program.

## Debugging

Break the program by removing `#include <stdio.h>`. Read the diagnostic. Restore it.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 hello.c -o hello
clang -c hello.c -o hello.o
nm hello.o
file hello
otool -L hello
```

On Linux, also use:

```sh
readelf -h hello
ldd hello
```

## Interview Questions

1. What is the difference between `hello.c`, `hello.o`, and `hello`?
2. Why use `-Wall -Wextra`?
3. What does `-g` add?

## Revision Checklist

- [ ] I can compile a C file manually.
- [ ] I can explain what an object file is.
- [ ] I can distinguish compile time, link time, and runtime.

## Homework

Write a second program that prints your compiler name using preprocessor macros such as `__clang__` or `__GNUC__`.

## Expected Outcome

You can build, run, and inspect a tiny C program without treating the compiler as magic.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
