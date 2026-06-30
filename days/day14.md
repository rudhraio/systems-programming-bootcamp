# Day 14 - Revision Project 2: Build And Toolchain

## Objectives

- Integrate libraries, Make, tests, and binary inspection.
- Build a command-line utility.
- Practice diagnosing build-stage failures.

## Concepts

- project layout
- static library
- executable
- test binary
- Makefile
- symbol inspection

## Why They Exist

Production systems work depends on repeatable builds and inspectable artifacts.

## Reading

- `MAKE_GUIDE.md`
- `GNU_TOOLCHAIN.md`
- `DEBUGGING.md`

## Examples

```text
src/
include/
tests/
build/
bin/
Makefile
```

## ASCII Diagram

```text
src/lib.c -> libtool.a -> bin/tool
tests/*.c ----------- -> bin/test_tool
```

## Memory Diagram

```text
CLI args -> parser -> command struct -> action -> exit status
```

## Exercises

1. Create a CLI with `argc` and `argv`.
2. Put reusable code in a static library.
3. Add unit tests.
4. Inspect the final binary.

## Mini Project

Build `projects/day14-cli-tool/`, a small command-line utility such as `hexview`, `linecount`, or `flags`.

## Debugging

Create one compile error, one link error, and one runtime error. Classify each.

## Terminal Commands

```sh
make clean
make
make test
nm bin/tool
otool -L bin/tool
```

Linux:

```sh
readelf -h bin/tool
ldd bin/tool
```

## Interview Questions

1. What makes a build reproducible?
2. Why inspect symbols?
3. How do tests fit into the build?

## Revision Checklist

- [ ] I can create a small project layout.
- [ ] I can build library, app, and tests.
- [ ] I can classify build failures.

## Homework

Write a `README.md` for the utility with build and run commands.

## Expected Outcome

You have a complete small C project with build and tests.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
