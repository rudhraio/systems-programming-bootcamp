# 30-Day Roadmap

Each day is one hour:

```text
20 min learning
35 min coding
 5 min revision
```

Revision and project days are Day 07, Day 14, Day 21, and Day 28.

## Day 01 - Toolchain Orientation And Serious Hello World

Focus: compile, run, warnings, object files, basic inspection.

Build: Hello World with a clean compile command.

## Day 02 - Pointers, Arrays, And Address Thinking

Focus: addresses, pointer arithmetic, arrays, strings.

Build: array inspector.

## Day 03 - Structs, Layout, Enums, Typedef, And Headers

Focus: data modeling and translation units.

Build: small record library.

## Day 04 - Stack, Heap, Lifetime, And malloc

Focus: ownership, allocation, leaks, invalid access.

Build: dynamic string buffer.

## Day 05 - Undefined Behavior, const, static, volatile, restrict

Focus: compiler assumptions and C object lifetime.

Build: bug lab with sanitizers.

## Day 06 - Bits, Bytes, Alignment, And Binary Data

Focus: bit operations, masks, alignment, endian awareness.

Build: binary flags utility.

## Day 07 - Revision Project 1: C Foundations

Focus: reinforce Days 01-06.

Build: file-backed contact table.

## Day 08 - Compiler Pipeline

Focus: preprocessing, compilation, assembly, linking.

Build: inspect every compilation stage.

## Day 09 - Object Files, Symbols, Static Libraries

Focus: `.o`, symbols, `ar`, archive libraries.

Build: static library.

## Day 10 - Shared Libraries And Dynamic Loading

Focus: shared objects, Mach-O dylibs, ELF shared libraries.

Build: shared library and custom binary.

## Day 11 - Make Fundamentals

Focus: dependencies, targets, variables, incremental builds.

Build: Makefile project.

## Day 12 - Make Pattern Rules And Build Modes

Focus: automatic variables, debug/release builds, clean structure.

Build: reusable Makefile template.

## Day 13 - Unit Testing In C

Focus: small tests, assertions, test binaries, failure signals.

Build: unit tests for previous library.

## Day 14 - Revision Project 2: Build And Toolchain

Focus: integrate compiler, linker, libraries, Make, tests.

Build: command-line utility with tests.

## Day 15 - Memory Allocator Mental Model

Focus: allocator API, free lists, fragmentation, debugging.

Build: toy bump allocator.

## Day 16 - Modern C++ Foundations For C Programmers

Focus: RAII, references, constructors, destructors, `std::string`, `std::vector`.

Build: C++ resource wrapper.

## Day 17 - Smart Pointers, Move Semantics, Rule Of Five

Focus: ownership in modern C++.

Build: movable buffer class.

## Day 18 - Templates, STL, Algorithms, Lambdas

Focus: generic code and standard containers.

Build: log analyzer in C++.

## Day 19 - POSIX Files And File Descriptors

Focus: `open`, `read`, `write`, `close`, `errno`.

Build: file copy utility.

## Day 20 - Processes: fork, exec, wait, Environment

Focus: process creation and replacement.

Build: command runner.

## Day 21 - Revision Project 3: Mini Shell Part 1

Focus: integrate files, processes, parsing.

Build: mini shell with simple commands.

## Day 22 - Pipes, Redirection, And Signals

Focus: pipe file descriptors, signal handling, process control.

Build: mini shell pipelines.

## Day 23 - Threads And Mutexes

Focus: POSIX threads, races, mutexes, condition variables.

Build: counter race lab.

## Day 24 - Semaphores, Shared Memory, mmap

Focus: interprocess communication and mapped memory.

Build: shared-memory counter.

## Day 25 - Sockets Basic Networking

Focus: TCP client/server basics.

Build: networking utility.

## Day 26 - Debugging Native Programs

Focus: LLDB/GDB, sanitizers, core dumps, symbol inspection.

Build: debug broken programs.

## Day 27 - Linux Environments, schroot, Containers, VMs

Focus: isolated builds, Debian workflows, macOS practice options.

Build: reproducible Linux build environment notes and scripts.

## Day 28 - Revision Project 4: Mini Shell Part 2

Focus: polish shell, add redirection, pipes, tests.

Build: mini shell checkpoint.

## Day 29 - Kernel Architecture And Driver Concepts

Focus: user/kernel boundary, syscalls, modules, character devices.

Build: character driver skeleton only.

## Day 30 - Driver Skeleton, Capstone Review, Next 90 Days

Focus: safe driver intro, memory mapping overview, interrupts, DMA overview.

Build: final portfolio index and next plan.
