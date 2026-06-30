==================================
FILE:
days/day05.md
==================================

# Day 05 - Undefined Behavior, const, static, volatile, restrict

## Objectives

- Understand why undefined behavior matters.
- Use `const` and `static` accurately.
- Learn what `volatile` and `restrict` are for without overusing them.

## Concepts

- undefined behavior
- `const`
- internal linkage with `static`
- static storage duration
- `volatile`
- `restrict`

## Why They Exist

Compilers optimize based on language rules. Undefined behavior lets the optimizer assume impossible states never happen. Correct qualifiers communicate intent to humans and compilers.

## Reading

- `BEST_PRACTICES.md`
- `MEMORY.md`

## Examples

```c
const int *p;   /* pointer to const int */
int *const q;   /* const pointer to int */
```

## ASCII Diagram

```text
source rule violated -> compiler assumes it never happens -> surprising binary
```

## Memory Diagram

```text
static int count;

stored in data/BSS, not in a stack frame
```

## Exercises

1. Write examples of `const int *` and `int *const`.
2. Create a file-scope `static` helper function.
3. Trigger signed overflow under UBSan.
4. Explain why `volatile` is not a thread synchronization tool.

## Mini Project

Build `projects/day05-ub-lab/`, a set of tiny broken programs and fixed versions.

## Debugging

Compile with:

```sh
clang -g -O0 -fsanitize=undefined,address ub.c -o ub
```

Observe reports and explain root causes.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 -fsanitize=undefined,address ub.c -o ub
./ub
```

## Interview Questions

1. What is undefined behavior?
2. What does file-scope `static` do?
3. Why is `volatile` not a lock?

## Revision Checklist

- [ ] I can explain UB without saying "random."
- [ ] I can use `const` in function parameters.
- [ ] I can distinguish storage duration from linkage.

## Homework

Write a short note explaining one UB example and how the sanitizer exposed it.

## Expected Outcome

You understand that C is a contract with the optimizer, not just a direct instruction list.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
