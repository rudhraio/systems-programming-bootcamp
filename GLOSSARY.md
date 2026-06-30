# Glossary

## Address

A numeric location in a process virtual address space. A pointer stores an address plus a type interpretation in C.

## Alignment

A restriction that objects of certain types should begin at addresses divisible by a required boundary.

## ABI

Application Binary Interface. Rules for calling functions, laying out objects, passing arguments, and linking binaries.

## API

Application Programming Interface. Source-level contract used by programmers.

## BSS

Memory segment for zero-initialized global and static objects.

## Data Segment

Memory segment for initialized global and static objects.

## ELF

Executable and Linkable Format used by Linux and many Unix-like systems.

## Mach-O

Executable format used by macOS.

## File Descriptor

A small integer index into a process table of open kernel-managed resources.

## Heap

Region used for dynamic allocation through allocators such as `malloc`.

## Linker

Tool that combines object files and libraries, resolves symbols, and produces an executable or library.

## Loader

Runtime component that maps executable files and shared libraries into memory.

## Object File

Compiled machine code plus symbols and relocation information, usually ending in `.o`.

## POSIX

Portable Operating System Interface. A family of standards for Unix-like operating systems.

## RAII

Resource Acquisition Is Initialization. C++ technique where object lifetime controls resource lifetime.

## Stack

Memory region used for function calls, local variables, return addresses, and saved state.

## Symbol

A named function or object visible to the assembler, linker, debugger, or loader.

## Translation Unit

A C or C++ source file after preprocessing, compiled independently by the compiler.

## Undefined Behavior

A program construct for which the language standard imposes no requirements. The compiler may assume it never happens.
