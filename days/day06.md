# Day 06 - Bits, Bytes, Alignment, And Binary Data

## Objectives

- Use bit masks and shifts.
- Understand bytes, alignment, and basic endian awareness.
- Represent compact flags.

## Concepts

- bits and bytes
- masks
- shifts
- flags
- alignment
- endianness

## Why They Exist

Systems code often talks to hardware, file formats, network protocols, and kernels where individual bits matter.

## Reading

- `MEMORY.md`
- `COMMANDS.md`

## Examples

```c
#define FLAG_READ  (1u << 0)
#define FLAG_WRITE (1u << 1)

unsigned flags = FLAG_READ | FLAG_WRITE;
```

## ASCII Diagram

```text
bit:    7 6 5 4 3 2 1 0
value:  0 0 0 0 0 0 1 1
             WRITE ^ READ ^
```

## Memory Diagram

```text
uint32_t x = 0x11223344

big endian:    11 22 33 44
little endian: 44 33 22 11
```

## Exercises

1. Set, clear, toggle, and test a flag.
2. Print bytes of an integer through `unsigned char *`.
3. Inspect `sizeof` and alignment of simple structs.
4. Parse a small binary header.

## Mini Project

Build `projects/day06-flags/`, a command-line flags utility.

## Debugging

Create a shift bug such as shifting by the width of the type. Run UBSan.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 -fsanitize=undefined,address flags.c -o flags
./flags
```

## Interview Questions

1. How do you test whether a bit is set?
2. What is alignment?
3. Why does endian order matter in file formats and networking?

## Revision Checklist

- [ ] I can write masks without magic numbers.
- [ ] I can explain endian order.
- [ ] I can identify padding in a struct.

## Homework

Write a binary file with a simple header and read it back.

## Expected Outcome

You can reason about data at the byte and bit level.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
