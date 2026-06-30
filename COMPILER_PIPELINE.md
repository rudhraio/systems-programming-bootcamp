# Compiler Pipeline

The compiler pipeline turns source code into a running process.

```text
.c file
  |
  v
preprocessor
  |
  v
translation unit
  |
  v
compiler
  |
  v
assembly
  |
  v
assembler
  |
  v
object file
  |
  v
linker
  |
  v
executable
  |
  v
loader
  |
  v
process
```

## Preprocess

```sh
clang -E main.c -o main.i
```

Handles:

- `#include`
- `#define`
- conditional compilation

## Compile

```sh
clang -S main.c -o main.s
```

Produces assembly.

## Assemble

```sh
clang -c main.c -o main.o
```

Produces object file.

## Link

```sh
clang main.o helper.o -o app
```

Resolves symbols and combines object files and libraries.

## Load

When you run:

```sh
./app
```

the OS loader maps the executable and required dynamic libraries into memory, prepares the stack, and transfers control to startup code before `main`.

## macOS vs Linux

Linux:

- object/executable format: ELF
- tools: `readelf`, `objdump`, `ldd`
- dynamic loader: usually `ld-linux`

macOS:

- object/executable format: Mach-O
- tools: `otool`, `nm`, `lipo`
- dynamic loader: `dyld`

## Why This Matters

Many "compiler errors" are not compiler errors:

```text
undeclared identifier -> compile stage
undefined symbol      -> link stage
library not found     -> load stage
crash                 -> runtime stage
```
