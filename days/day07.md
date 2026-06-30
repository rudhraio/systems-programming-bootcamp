==================================
FILE:
days/day07.md
==================================

# Day 07 - Revision Project 1: C Foundations

## Objectives

- Reinforce Days 01-06.
- Combine modules, pointers, dynamic memory, structs, and bit flags.
- Practice debugging with warnings and sanitizers.

## Concepts

- integrated C project
- ownership
- headers
- arrays and strings
- flags
- sanitizers

## Why They Exist

Real skill comes from combining small concepts under project pressure.

## Reading

- `MEMORY.md`
- `DEBUGGING.md`
- `BEST_PRACTICES.md`

## Examples

Project shape:

```text
contact.h
contact.c
main.c
Makefile optional
```

## ASCII Diagram

```text
main -> contact API -> heap records
```

## Memory Diagram

```text
ContactTable
  items -> [Contact][Contact][Contact]
  len
  cap
```

## Exercises

1. Create a `Contact` struct.
2. Store contacts in a dynamic array.
3. Add status flags.
4. Print, find, and delete contacts.

## Mini Project

Build `projects/day07-contact-table/`, a file-backed contact table if time allows. If one hour is tight, implement memory-only first.

## Debugging

Run with AddressSanitizer and fix leaks or invalid accesses.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 -fsanitize=address,undefined main.c contact.c -o contacts
./contacts
```

## Interview Questions

1. Which object owns the contact array?
2. What invariants should `len` and `cap` satisfy?
3. What breaks if a string is not null-terminated?

## Revision Checklist

- [ ] I can compile a multi-file C program.
- [ ] I can manage dynamic array ownership.
- [ ] I can find memory bugs with sanitizers.

## Homework

Write down three bugs you encountered and their root causes.

## Expected Outcome

You have a practical C foundation project that can be extended later.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
