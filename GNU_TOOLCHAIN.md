==================================
FILE:
GNU_TOOLCHAIN.md
==================================

# GNU Toolchain

The GNU toolchain is the traditional Unix-like systems programming toolbox.

## Compiler

Compilers translate source code into lower-level forms.

Common drivers:

- `gcc`
- `g++`
- `clang`
- `clang++`

Use the compiler driver for linking unless you have a specific reason to call `ld` directly.

## Assembler

The assembler converts assembly into object code.

Typical object file:

```text
code + data + symbols + relocations
```

## Linker

The linker combines object files and libraries.

It resolves references:

```text
main.o calls add
libmathstuff.a contains add
linker connects them
```

## Loader

The loader maps executable code and shared libraries into a process.

Linux uses ELF and a dynamic loader such as `ld-linux`.

macOS uses Mach-O and `dyld`.

## Object Files

Inspect:

```sh
nm main.o
objdump -h main.o
```

macOS:

```sh
nm main.o
otool -l main.o
```

## Libraries

Static library:

```sh
ar rcs libcalc.a add.o sub.o
clang main.o libcalc.a -o app
```

Shared library on Linux:

```sh
gcc -fPIC -shared calc.c -o libcalc.so
gcc main.c -L. -lcalc -o app
```

Dynamic library on macOS:

```sh
clang -dynamiclib calc.c -o libcalc.dylib
clang main.c -L. -lcalc -o app
```

## Static Linking

Code from libraries is copied into the final binary.

Pros:

- simpler deployment in some cases
- fewer runtime dependencies

Cons:

- larger binaries
- harder security updates for library code

## Dynamic Linking

Libraries are loaded at runtime.

Pros:

- shared code between processes
- smaller binaries
- library updates can apply without rebuilding the app

Cons:

- runtime search path problems
- ABI compatibility matters

## ELF

ELF contains:

- headers
- sections
- segments
- symbols
- relocations
- dynamic linking metadata

Linux command:

```sh
readelf -h app
```

## Mach-O

Mach-O is macOS's binary format.

macOS command:

```sh
otool -l app
```

## Compilation Pipeline

```text
source -> preprocess -> compile -> assemble -> object -> link -> executable -> load
```

When debugging build problems, identify the failing stage first.
