# Day 12 - Make Pattern Rules And Build Modes

## Objectives

- Use pattern rules.
- Separate source, object, and binary directories.
- Add debug and release build modes.

## Concepts

- pattern rules
- automatic variables
- build directories
- debug build
- release build

## Why They Exist

Repeated Makefile rules become error-prone. Pattern rules express the general rule once.

## Reading

- `MAKE_GUIDE.md`

## Examples

```make
build/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@
```

## ASCII Diagram

```text
src/main.c -> build/main.o -> bin/app
src/util.c -> build/util.o --^
```

## Memory Diagram

Build outputs:

```text
source tree: stable inputs
build tree: generated outputs
```

## Exercises

1. Move source files under `src/`.
2. Put object files under `build/`.
3. Put executables under `bin/`.
4. Add `debug` and `release` targets.

## Mini Project

Build `projects/day12-make-template/`, a reusable Makefile template.

## Debugging

Create a missing build directory problem, then fix it with `mkdir -p`.

## Terminal Commands

```sh
make debug
make release
make clean
make -n release
```

## Interview Questions

1. What does `$<` mean?
2. What does `$@` mean?
3. Why separate generated files from source files?

## Revision Checklist

- [ ] I can use pattern rules.
- [ ] I can create debug and release builds.
- [ ] I can explain generated files vs source files.

## Homework

Adapt the template to one previous project.

## Expected Outcome

You have a reusable Make pattern for small C projects.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
