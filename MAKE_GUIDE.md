# Make Guide

Make solves one practical problem: rebuild only what is out of date.

## Basic Rule

```make
target: prerequisites
	command
```

The command line must start with a tab.

## Example

```make
app: main.o util.o
	$(CC) main.o util.o -o app

main.o: main.c util.h
	$(CC) $(CFLAGS) -c main.c -o main.o

util.o: util.c util.h
	$(CC) $(CFLAGS) -c util.c -o util.o
```

## Variables

```make
CC := clang
CFLAGS := -Wall -Wextra -Wpedantic -std=c17 -g -O0
```

## Pattern Rules

```make
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
```

Automatic variables:

- `$@` target
- `$<` first prerequisite
- `$^` all prerequisites

## Dependencies

Headers matter:

```make
main.o: main.c util.h
```

If `util.h` changes, `main.o` must rebuild.

## Static Libraries

```make
libcalc.a: add.o sub.o
	ar rcs $@ $^
```

## Shared Libraries

Linux:

```make
libcalc.so: calc.o
	$(CC) -shared -o $@ $^
```

macOS:

```make
libcalc.dylib: calc.o
	$(CC) -dynamiclib -o $@ $^
```

## Incremental Builds

Make compares modification times:

```text
if prerequisite newer than target:
    rebuild target
else:
    skip
```

## Debug Builds

```make
CFLAGS := -Wall -Wextra -Wpedantic -std=c17 -g -O0
```

## Release Builds

```make
CFLAGS := -Wall -Wextra -Wpedantic -std=c17 -O2 -DNDEBUG
```

## Clean Target

```make
.PHONY: clean
clean:
	rm -f app *.o
```

## Why Make Still Matters

Even when using CMake, Meson, Bazel, or custom build systems, the same dependency ideas remain:

```text
inputs -> rules -> outputs
```
