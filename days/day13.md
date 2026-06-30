==================================
FILE:
days/day13.md
==================================

# Day 13 - Unit Testing In C

## Objectives

- Write small test binaries.
- Use assertions intentionally.
- Add tests to a Makefile.

## Concepts

- test binary
- assertion
- exit status
- regression test
- test target

## Why They Exist

Systems code breaks easily when memory, parsing, or edge cases change. Small tests protect behavior.

## Reading

- `MAKE_GUIDE.md`
- `DEBUGGING.md`

## Examples

```c
#include <assert.h>

static void test_add(void) {
    assert(add(2, 3) == 5);
}
```

## ASCII Diagram

```text
source -> library
tests  -> test binary -> pass/fail exit status
```

## Memory Diagram

```text
test creates object -> checks invariant -> destroys object
```

## Exercises

1. Write tests for a pure function.
2. Write tests for allocation and cleanup.
3. Add `make test`.
4. Intentionally break the implementation and watch the test fail.

## Mini Project

Build `projects/day13-c-tests/`, tests for the Day 09 library.

## Debugging

Run a failing test under LLDB and inspect the failed value.

## Terminal Commands

```sh
make test
lldb ./test_calc
```

Linux:

```sh
gdb ./test_calc
```

## Interview Questions

1. Why should tests be separate binaries in C?
2. What does a process exit status communicate?
3. Why test edge cases?

## Revision Checklist

- [ ] I can write a minimal C test.
- [ ] I can add tests to Make.
- [ ] I can debug a failing test.

## Homework

Add tests for invalid inputs and boundary conditions.

## Expected Outcome

You can protect C code with simple automated tests.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
