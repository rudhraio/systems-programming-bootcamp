==================================
FILE:
MEMORY.md
==================================

# Memory

Memory is the central mental model of systems programming.

## Process Memory Map

Simplified:

```text
High addresses

+-------------------------------+
| Stack                         |
| grows downward                |
+-------------------------------+
|                               |
| unused / guard / mappings     |
|                               |
+-------------------------------+
| Heap                          |
| grows as allocator requests   |
+-------------------------------+
| BSS                           |
| zero-initialized globals      |
+-------------------------------+
| Data                          |
| initialized globals           |
+-------------------------------+
| Text                          |
| machine code                  |
+-------------------------------+

Low addresses
```

This is a model, not a promise. Real layouts include shared libraries, memory-mapped files, stacks for threads, guard pages, ASLR, and platform details.

## Stack

The stack stores function call state:

```text
main()
  calls parse()
    calls helper()

+-------------------+
| helper frame      |
+-------------------+
| parse frame       |
+-------------------+
| main frame        |
+-------------------+
```

Stack memory is automatic. It becomes invalid when the function returns.

Bug:

```c
int *bad(void) {
    int x = 42;
    return &x;
}
```

`x` dies when `bad` returns.

## Heap

Heap memory is dynamic. It lives until explicitly released.

```c
int *p = malloc(sizeof *p);
if (!p) {
    return 1;
}
*p = 42;
free(p);
p = NULL;
```

Ownership question: who is responsible for calling `free`?

## Data Segment

Initialized globals and static objects:

```c
int global_count = 5;
static int cached = 10;
```

## BSS

Zero-initialized globals and static objects:

```c
int global_zero;
static char buffer[4096];
```

## Text Segment

Compiled machine code, usually read-only and executable.

## Virtual Memory

Each process sees its own address space:

```text
Process A virtual address 0x1000 -> physical page X
Process B virtual address 0x1000 -> physical page Y
```

The same virtual address in two processes usually does not refer to the same physical memory.

## Alignment

Objects often need addresses divisible by their alignment.

```text
address:  1000 1001 1002 1003 1004 1005 1006 1007
int:      [         4 bytes        ]
```

Misalignment may be slow, invalid, or handled by hardware depending on architecture.

## Fragmentation

External fragmentation:

```text
free  used  free  used  free
[----][XXXX][--][XXXXXX][---]
```

Enough total free memory may exist, but not enough contiguous memory for one request.

Internal fragmentation: allocator gives a larger block than requested.

## malloc

```c
void *malloc(size_t size);
```

Returns a block of at least `size` bytes or `NULL`.

Memory is uninitialized.

## calloc

```c
void *calloc(size_t count, size_t size);
```

Allocates and zero-initializes. Also helps avoid some multiplication overflow bugs in good implementations.

## realloc

```c
void *tmp = realloc(p, new_size);
if (!tmp) {
    /* p is still valid */
} else {
    p = tmp;
}
```

Never overwrite the only pointer before checking success.

## free

```c
free(p);
```

After `free`, the pointer value still exists, but it no longer points to a live object.

## C++ new/delete

```cpp
Widget *w = new Widget{};
delete w;
```

Prefer RAII:

```cpp
auto w = std::make_unique<Widget>();
```

## Memory Leaks

A leak happens when live allocated memory becomes unreachable:

```text
p -> heap block
p overwritten
no pointer -> heap block
```

## AddressSanitizer

```sh
clang -g -O0 -fsanitize=address,undefined main.c -o app
./app
```

Use it early. It makes invisible memory errors visible.

## Valgrind

Linux:

```sh
valgrind --leak-check=full ./app
```

Valgrind is less natural on modern macOS. Prefer a Linux VM/container for Valgrind practice.
