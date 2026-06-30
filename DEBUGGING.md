# Debugging Native Programs

Debugging is evidence collection. Do not guess for long.

## Standard Loop

```text
1. Reproduce the failure.
2. Read the exact error.
3. Make one hypothesis.
4. Test the hypothesis.
5. Inspect the result.
6. Repeat.
```

## Compile For Debugging

```sh
clang -g -O0 -Wall -Wextra -Wpedantic main.c -o app
```

`-g` emits debug info.

`-O0` keeps generated code close to source.

Warnings catch many bugs before runtime.

## Sanitizers

```sh
clang -g -O0 -fsanitize=address,undefined main.c -o app
./app
```

AddressSanitizer catches:

- use after free
- buffer overflow
- stack overflow in many cases
- double free
- memory leaks on supported platforms

UndefinedBehaviorSanitizer catches:

- signed integer overflow
- invalid shifts
- null dereferences in some cases
- misaligned access in some cases

## LLDB Basics

```sh
lldb ./app
(lldb) breakpoint set --name main
(lldb) run
(lldb) next
(lldb) step
(lldb) frame variable
(lldb) p pointer
(lldb) bt
```

## GDB Basics

```sh
gdb ./app
(gdb) break main
(gdb) run
(gdb) next
(gdb) step
(gdb) print pointer
(gdb) backtrace
```

## Debugging Memory

Common failures:

```text
allocated too little
used after free
freed twice
forgot to free
returned pointer to stack memory
read past array boundary
wrote past array boundary
```

Ask:

- Who owns this memory?
- How long does it live?
- Is this pointer still valid?
- Is the index in range?
- Does this allocation include space for `'\0'`?

## Debugging Build Failures

Separate stages:

```text
preprocess -> compile -> assemble -> link -> load -> run
```

If the compiler says "undeclared", check headers and declarations.

If the linker says "undefined symbol", check object files and libraries.

If the loader says "library not found", check runtime library paths.

## Debugging POSIX Calls

Always check return values:

```c
int fd = open(path, O_RDONLY);
if (fd == -1) {
    perror("open");
    return 1;
}
```

`errno` is meaningful only after a failing call documents that it sets `errno`.

## Linux Syscall Tracing

Linux:

```sh
strace ./app
strace -f ./mini_shell
```

macOS has different tracing tools and restrictions. `dtruss` may require elevated privileges and behaves differently.

## Core Habit

Never "fix" a bug without first being able to explain why the original code failed.
