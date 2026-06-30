# Day 15 - Memory Allocator Mental Model

## Objectives

- Understand allocator responsibilities.
- Build a toy bump allocator.
- Recognize fragmentation and metadata.

## Concepts

- arena
- bump pointer
- block metadata
- free list
- fragmentation

## Why They Exist

Allocators are the layer between program requests and raw memory regions. Understanding them improves every `malloc` debugging session.

## Reading

- `MEMORY.md`
- `DEBUGGING.md`

## Examples

```text
arena:
[used][used][free free free free]
             ^
             bump pointer
```

## ASCII Diagram

```text
alloc(8)  -> returns current pointer, advances by 8
alloc(16) -> returns next pointer, advances by 16
reset()   -> bump pointer returns to start
```

## Memory Diagram

```text
base                             end
 |-------------------------------|
 | obj1 | obj2 | available       |
              ^
              current
```

## Exercises

1. Implement `arena_init`.
2. Implement `arena_alloc`.
3. Add alignment.
4. Add `arena_reset`.

## Mini Project

Build `projects/day15-bump-allocator/`, a toy allocator for short-lived objects.

## Debugging

Request more memory than the arena holds and handle failure cleanly.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 -fsanitize=address,undefined arena.c test.c -o arena_test
./arena_test
```

## Interview Questions

1. What is fragmentation?
2. Why does an allocator need metadata?
3. What are the limits of a bump allocator?

## Revision Checklist

- [ ] I can explain allocator ownership.
- [ ] I can draw a bump allocator.
- [ ] I can handle out-of-memory paths.

## Homework

Add tests for alignment and capacity exhaustion.

## Expected Outcome

`malloc` is less magical because you have built a small allocator model.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
