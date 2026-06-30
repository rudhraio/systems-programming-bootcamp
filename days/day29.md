==================================
FILE:
days/day29.md
==================================

# Day 29 - Kernel Architecture And Driver Concepts

## Objectives

- Understand user space vs kernel space.
- Learn what kernel modules and character devices are.
- Create a driver skeleton conceptually, not a production driver.

## Concepts

- kernel
- syscall boundary
- kernel module
- character device
- device file
- major/minor numbers
- `file_operations`

## Why They Exist

Drivers let the kernel expose hardware or kernel-managed functionality to user programs through controlled interfaces.

## Reading

- `POSIX.md`
- `RESOURCES.md`
- `DEBUGGING.md`

## Examples

```text
user program -> read(fd) -> syscall -> kernel -> driver read method
```

## ASCII Diagram

```text
user space
  app
   |
   | syscall
   v
kernel space
  VFS -> character driver -> device
```

## Memory Diagram

```text
user pointer cannot be trusted by kernel
kernel copies data with special helpers
```

## Exercises

1. Draw the user/kernel boundary.
2. Read a minimal character driver skeleton.
3. Identify init and exit paths.
4. Identify open/read/write/release operations.

## Mini Project

Build `projects/day29-char-driver-skeleton/`, a non-loaded skeleton with comments and a Makefile note. Only build/load inside a Linux VM when ready.

## Debugging

Discuss why kernel bugs can crash the whole system and why VM snapshots matter.

## Terminal Commands

Linux only:

```sh
uname -r
ls /lib/modules/$(uname -r)/build
```

Do not attempt kernel module loading on macOS.

## Interview Questions

1. What is the user/kernel boundary?
2. What is a character device?
3. Why are user pointers dangerous in kernel code?

## Revision Checklist

- [ ] I can explain syscalls at a high level.
- [ ] I can explain what a kernel module is.
- [ ] I can identify character driver operations.

## Homework

Set up a disposable Linux VM snapshot for future driver work.

## Expected Outcome

You understand the shape of Linux driver development without pretending it is safe to do casually on macOS.

## Time Split

- 20 min learning
- 35 min skeleton reading/writing
- 5 min revision
