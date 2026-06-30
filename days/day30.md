==================================
FILE:
days/day30.md
==================================

# Day 30 - Driver Skeleton, Capstone Review, Next 90 Days

## Objectives

- Review the full 30-day path.
- Finalize a character driver skeleton.
- Understand memory mapping, interrupts, and DMA at overview level.
- Plan the next 90 days.

## Concepts

- character driver skeleton
- kernel module lifecycle
- `mmap` in drivers overview
- interrupts overview
- DMA overview
- capstone review

## Why They Exist

Driver work connects everything learned so far: C, memory, build systems, ABI boundaries, debugging discipline, and OS interfaces.

## Reading

- `ROADMAP.md`
- `POSIX.md`
- `MEMORY.md`
- `GNU_TOOLCHAIN.md`
- `RESOURCES.md`

## Examples

```text
user read()
  -> VFS
  -> driver read callback
  -> copy data to user
```

## ASCII Diagram

```text
hardware interrupt -> interrupt handler -> deferred work -> user-visible data
```

## Memory Diagram

```text
DMA overview:
device <-> physical memory buffer <-> driver <-> user program
```

## Exercises

1. Write the final driver skeleton layout.
2. Add comments explaining each callback.
3. Create a capstone index of all projects.
4. Write a next-90-days plan.

## Mini Project

Build `projects/day30-capstone/`, containing:

- portfolio index
- next 90-day plan
- driver skeleton notes
- environment checklist

## Debugging

Write a kernel-debugging safety checklist:

- use VM
- snapshot before loading modules
- keep console access
- read kernel logs
- unload modules carefully

## Terminal Commands

Linux only when inside a prepared VM:

```sh
dmesg --follow
lsmod
modinfo ./example.ko
```

## Interview Questions

1. How does a user program reach a driver?
2. What is DMA?
3. Why should first driver work happen in a VM?

## Revision Checklist

- [ ] I can summarize the compiler pipeline.
- [ ] I can explain stack, heap, data, BSS, and text.
- [ ] I can build with Make.
- [ ] I can use POSIX file/process APIs.
- [ ] I can explain the user/kernel boundary.

## Homework

Choose the next track:

- deeper C and allocators
- Linux systems programming projects
- C++ systems design
- kernel module practice in a VM

## Expected Outcome

You have a complete first-month systems programming foundation and a path into deeper Linux work.

## Time Split

- 20 min review
- 35 min capstone writing/coding
- 5 min next-step commitment
