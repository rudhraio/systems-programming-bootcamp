# Day 10 - Shared Libraries And Dynamic Loading

## Objectives

- Build a shared library on Linux and a dylib on macOS.
- Understand runtime library lookup.
- Compare static and dynamic linking.

## Concepts

- shared libraries
- dynamic loader
- ABI
- ELF `.so`
- Mach-O `.dylib`

## Why They Exist

Shared libraries reduce duplication and allow multiple programs to use one runtime-loaded implementation.

## Reading

- `GNU_TOOLCHAIN.md`
- `COMPILER_PIPELINE.md`

## Examples

Linux:

```sh
gcc -fPIC -shared calc.c -o libcalc.so
gcc main.c -L. -lcalc -o app
```

macOS:

```sh
clang -dynamiclib calc.c -o libcalc.dylib
clang main.c -L. -lcalc -o app
```

## ASCII Diagram

```text
app --runtime needs--> libcalc.so or libcalc.dylib
```

## Memory Diagram

```text
process:
text(app)
text(shared library)
heap
stack
```

## Exercises

1. Build a shared library.
2. Link an executable against it.
3. Inspect dependencies.
4. Break runtime lookup and fix it.

## Mini Project

Build `projects/day10-shared-lib/`, a shared library plus custom binary.

## Debugging

If the executable builds but will not run, identify it as a loader/runtime library path problem.

## Terminal Commands

macOS:

```sh
otool -L app
DYLD_LIBRARY_PATH=. ./app
```

Linux:

```sh
ldd ./app
LD_LIBRARY_PATH=. ./app
readelf -d ./app
```

## Interview Questions

1. What changes between static and dynamic linking?
2. What does the dynamic loader do?
3. Why does ABI compatibility matter?

## Revision Checklist

- [ ] I can build a shared library.
- [ ] I can inspect dynamic dependencies.
- [ ] I can explain macOS `.dylib` vs Linux `.so`.

## Homework

Add version output to the library and inspect symbols.

## Expected Outcome

You understand the first practical layer of runtime linking.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
