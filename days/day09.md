# Day 09 - Object Files, Symbols, Static Libraries

## Objectives

- Inspect object files and symbols.
- Create and link a static library.
- Understand archive libraries.

## Concepts

- symbols
- relocation
- undefined references
- static libraries
- `ar`

## Why They Exist

Large programs are compiled separately. Libraries let code be reused without recompiling every source file into every project manually.

## Reading

- `GNU_TOOLCHAIN.md`
- `COMMANDS.md`

## Examples

```sh
clang -c add.c -o add.o
ar rcs libcalc.a add.o
clang main.c libcalc.a -o calc
```

## ASCII Diagram

```text
add.o + sub.o -> libcalc.a
main.o + libcalc.a -> app
```

## Memory Diagram

```text
link time:
main.o has U add
libcalc.a has T add
```

## Exercises

1. Create `add.c`, `sub.c`, and `calc.h`.
2. Build `libcalc.a`.
3. Link `main.c` against it.
4. Inspect symbols with `nm`.

## Mini Project

Build `projects/day09-static-lib/`, a small static math/string utility library.

## Debugging

Remove one object file from the archive and observe the link error.

## Terminal Commands

```sh
clang -c add.c -o add.o
clang -c sub.c -o sub.o
ar rcs libcalc.a add.o sub.o
ar t libcalc.a
nm libcalc.a
clang main.c libcalc.a -o app
```

## Interview Questions

1. What does `U` mean in `nm` output?
2. What does `ar` create?
3. What is the difference between declaration and definition?

## Revision Checklist

- [ ] I can create a static library.
- [ ] I can inspect archive contents.
- [ ] I can diagnose an undefined symbol.

## Homework

Add a header and make sure users of the library do not include `.c` files directly.

## Expected Outcome

You can build and link a reusable static C library.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
