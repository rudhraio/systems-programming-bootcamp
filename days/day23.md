# Day 23 - Threads And Mutexes

## Objectives

- Create POSIX threads.
- Observe a data race.
- Fix shared data with a mutex.

## Concepts

- thread
- shared address space
- stack per thread
- mutex
- data race
- condition variable introduction

## Why They Exist

Threads allow concurrent work inside one process, but shared memory requires synchronization.

## Reading

- `POSIX.md`
- `DEBUGGING.md`

## Examples

```c
pthread_mutex_lock(&mu);
counter++;
pthread_mutex_unlock(&mu);
```

## ASCII Diagram

```text
process
|-- thread A stack
|-- thread B stack
|-- shared heap and globals
```

## Memory Diagram

```text
counter shared by two threads
without lock: read/modify/write interleaves
```

## Exercises

1. Create two threads.
2. Increment a shared counter without a lock.
3. Add a mutex.
4. Compare results.

## Mini Project

Build `projects/day23-thread-race/`, a race demonstration and fixed version.

## Debugging

Use ThreadSanitizer if available:

```sh
clang -fsanitize=thread -g -O1 race.c -o race
```

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 race.c -o race
./race
```

Linux may require:

```sh
gcc race.c -pthread -o race
```

## Interview Questions

1. What memory is shared between threads?
2. What does a mutex protect?
3. What is a data race?

## Revision Checklist

- [ ] I can create and join threads.
- [ ] I can identify shared state.
- [ ] I can protect a critical section.

## Homework

Add a condition variable based producer-consumer sketch.

## Expected Outcome

You can explain and fix a basic data race.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
