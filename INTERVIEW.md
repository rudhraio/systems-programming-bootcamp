==================================
FILE:
INTERVIEW.md
==================================

# Interview Practice

This course is not optimized for interview cramming. Interview questions here are used to test practical understanding.

## C Memory

1. Explain stack vs heap using lifetime and ownership.
2. What is wrong with returning the address of a local variable?
3. Why does `malloc(strlen(s))` often contain a bug?
4. What is undefined behavior?
5. Explain `const int *p` vs `int *const p`.

## Toolchain

1. What is the difference between a compile error and a link error?
2. What does `nm` show?
3. What is a static library?
4. What changes when using a shared library?
5. Why should you usually call `clang` or `gcc` instead of `ld` directly?

## POSIX

1. What is a file descriptor?
2. What does `fork` copy conceptually?
3. What does `exec` replace?
4. Why must a shell close unused pipe ends?
5. What is `errno`?

## Concurrency

1. What is a data race?
2. What does a mutex protect?
3. Why are condition variables used with a predicate?
4. What is shared between threads?
5. What is separate between threads?

## Drivers

1. What is the difference between user space and kernel space?
2. What is a character device?
3. What is a kernel module?
4. Why is driver debugging riskier than user-space debugging?
5. What are interrupts and DMA at a high level?
