# Day 03 - Structs, Layout, Enums, Typedef, And Headers

## Objectives

- Model data with structs and enums.
- Understand basic layout and padding.
- Split code into header and implementation files.

## Concepts

- structs
- enums
- typedef
- header guards
- translation units
- padding

## Why They Exist

Real systems programs are built from stable data contracts. Headers describe contracts; `.c` files provide implementation.

## Reading

- `COMPILER_PIPELINE.md`
- `GNU_TOOLCHAIN.md`

## Examples

```c
typedef enum {
    USER_ACTIVE,
    USER_DISABLED
} UserStatus;

typedef struct {
    int id;
    UserStatus status;
    char name[32];
} User;
```

## ASCII Diagram

```text
user.h  -> declarations
user.c  -> definitions
main.c  -> uses API
```

## Memory Diagram

```text
User
+----+--------+----------------+
| id | status | name[32]       |
+----+--------+----------------+
```

Padding may exist between fields depending on alignment.

## Exercises

1. Define a `Record` struct.
2. Print `sizeof` each struct.
3. Reorder fields and observe size changes.
4. Create `record.h` and `record.c`.

## Mini Project

Build `projects/day03-record-lib/`, a tiny record library with create, print, and validate functions.

## Debugging

Omit the header guard and include the header twice. Observe the compiler error, then fix it.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 main.c record.c -o records
clang -c record.c -o record.o
nm record.o
```

## Interview Questions

1. What belongs in a header?
2. What is a translation unit?
3. Why can struct size be larger than the sum of fields?

## Revision Checklist

- [ ] I can write a header guard.
- [ ] I can split declarations from definitions.
- [ ] I can explain struct padding.

## Homework

Add a function that compares two records by ID.

## Expected Outcome

You can create small C modules with clear data contracts.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
