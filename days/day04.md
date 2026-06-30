==================================
FILE:
days/day04.md
==================================

# Day 04 - Stack, Heap, Lifetime, And malloc

## Objectives

- Understand stack vs heap by lifetime.
- Allocate and free memory correctly.
- Practice ownership language.

## Concepts

- stack frame
- heap allocation
- ownership
- lifetime
- `malloc`, `calloc`, `realloc`, `free`

## Why They Exist

Programs often need data whose size or lifetime is not known at compile time. Dynamic allocation solves that, but makes ownership explicit.

## Reading

- `MEMORY.md`
- `DEBUGGING.md`

## Examples

```c
char *buf = malloc(128);
if (!buf) {
    return 1;
}
snprintf(buf, 128, "hello");
free(buf);
```

## ASCII Diagram

```text
stack: buf ----+
               |
heap:          v
          [128 bytes]
```

## Memory Diagram

```text
before free:
buf -> live heap block

after free:
buf -> invalid old address
```

## Exercises

1. Allocate an array of `int`.
2. Fill it and print it.
3. Resize it with `realloc`.
4. Free it on every exit path.

## Mini Project

Build `projects/day04-dyn-string/`, a dynamic string buffer with append and destroy functions.

## Debugging

Intentionally leak memory and run sanitizers. Then fix it.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 -fsanitize=address,undefined main.c -o dyn
./dyn
```

## Interview Questions

1. What is ownership?
2. Why is returning a stack address invalid?
3. What is the safe `realloc` pattern?

## Revision Checklist

- [ ] I can explain stack lifetime.
- [ ] I can explain heap lifetime.
- [ ] I can identify the owner of allocated memory.

## Homework

Add capacity growth to the dynamic string buffer.

## Expected Outcome

You can allocate dynamic memory and explain who must release it.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
