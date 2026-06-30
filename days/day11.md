# Day 11 - Make Fundamentals

## Objectives

- Write a Makefile for a multi-file C project.
- Understand targets, prerequisites, recipes, and variables.
- Practice incremental builds.

## Concepts

- target
- prerequisite
- recipe
- dependency graph
- variables
- `.PHONY`

## Why They Exist

Manual compile commands do not scale. Make records build knowledge so the project can be rebuilt consistently.

## Reading

- `MAKE_GUIDE.md`
- `COMMANDS.md`

## Examples

```make
CC := clang
CFLAGS := -Wall -Wextra -Wpedantic -std=c17 -g -O0

app: main.o util.o
	$(CC) $^ -o $@
```

## ASCII Diagram

```text
main.c -> main.o \
                  -> app
util.c -> util.o /
```

## Memory Diagram

Build graph memory model:

```text
changed file -> rebuild dependent object -> relink app
```

## Exercises

1. Write a Makefile for two `.c` files.
2. Add `clean`.
3. Touch a header and observe what rebuilds.
4. Run `make -n`.

## Mini Project

Build `projects/day11-make-basic/`, a Makefile version of an earlier C module.

## Debugging

Break indentation by replacing a tab with spaces. Observe the Make error.

## Terminal Commands

```sh
make
make -n
make clean
make -j4
```

## Interview Questions

1. What is a prerequisite?
2. Why does Make skip some targets?
3. Why is `.PHONY` useful?

## Revision Checklist

- [ ] I can write a basic Makefile.
- [ ] I can explain incremental rebuilds.
- [ ] I can use automatic variables.

## Homework

Add `CFLAGS` and `LDFLAGS` variables to the project.

## Expected Outcome

You can stop typing long compile commands and encode the build.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
