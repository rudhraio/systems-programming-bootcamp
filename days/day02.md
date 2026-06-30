==================================
FILE:
days/day02.md
==================================

# Day 02 - Pointers, Arrays, And Address Thinking

## Objectives

- Strengthen the address-based model of pointers.
- Understand array decay and pointer arithmetic.
- Practice strings as byte arrays ending in `'\0'`.

## Concepts

- pointer values
- pointed-to objects
- array indexing
- pointer arithmetic
- string terminators

## Why They Exist

C exposes memory directly because systems code often needs exact layout, low overhead, and interoperability with hardware, kernels, and binary formats.

## Reading

- `MEMORY.md`
- `BEST_PRACTICES.md`

## Examples

```c
int xs[] = {10, 20, 30};
int *p = xs;
printf("%d\n", *(p + 1));
```

`p + 1` advances by `sizeof *p`, not by one byte.

## ASCII Diagram

```text
xs:  [10][20][30]
      ^
      p

p + 1 points here:
         ^
```

## Memory Diagram

```text
address: 1000 1004 1008
value:     10   20   30
```

## Exercises

1. Print addresses of each array element.
2. Write `sum_array(const int *xs, size_t n)`.
3. Write your own `strlen`.
4. Show why `sizeof array` differs from `sizeof pointer`.

## Mini Project

Build `projects/day02-array-inspector/`, a program that prints indexes, values, and addresses for an integer array and a string.

## Debugging

Create an off-by-one read and run with AddressSanitizer.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 -fsanitize=address,undefined main.c -o inspect
./inspect
```

## Interview Questions

1. What does array decay mean?
2. Why does pointer arithmetic depend on type?
3. Why do C strings need `'\0'`?

## Revision Checklist

- [ ] I can explain pointer value vs pointed-to object.
- [ ] I can trace pointer arithmetic.
- [ ] I can write a safe array loop with a length.

## Homework

Write `find_int` that returns a pointer to the first matching element or `NULL`.

## Expected Outcome

You can reason about arrays and pointers using addresses instead of vague metaphors.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
