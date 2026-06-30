==================================
FILE:
days/day24.md
==================================

# Day 24 - Semaphores, Shared Memory, mmap

## Objectives

- Understand `mmap`.
- Use shared memory at a basic level.
- Compare mutexes and semaphores.

## Concepts

- `mmap`
- anonymous mapping
- file mapping
- shared memory
- semaphore
- interprocess communication

## Why They Exist

Some programs need memory shared across processes or direct mapping of files and devices.

## Reading

- `POSIX.md`
- `MEMORY.md`

## Examples

```c
void *p = mmap(NULL, size, PROT_READ | PROT_WRITE,
               MAP_ANON | MAP_SHARED, -1, 0);
```

## ASCII Diagram

```text
process A virtual addr -> shared physical page <- process B virtual addr
```

## Memory Diagram

```text
mmap region appears in process address space beside heap/stack
```

## Exercises

1. Map anonymous memory.
2. Fork and share a counter.
3. Add synchronization conceptually.
4. Map a file read-only and print bytes.

## Mini Project

Build `projects/day24-shared-counter/`, a shared-memory counter demo.

## Debugging

Handle `MAP_FAILED` correctly and print `errno`.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 mmap_demo.c -o mmap_demo
./mmap_demo
```

## Interview Questions

1. What does `mmap` put in your address space?
2. How can two processes share memory?
3. Why does shared memory still need synchronization?

## Revision Checklist

- [ ] I can explain mapped memory.
- [ ] I can check `MAP_FAILED`.
- [ ] I can explain IPC vs threads.

## Homework

Map a file and count newline bytes without using `read`.

## Expected Outcome

You understand the basic mechanics of mapped memory and shared pages.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
