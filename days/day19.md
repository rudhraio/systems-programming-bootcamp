# Day 19 - POSIX Files And File Descriptors

## Objectives

- Use `open`, `read`, `write`, and `close`.
- Understand file descriptors.
- Handle partial reads and writes.

## Concepts

- file descriptor
- `errno`
- system call wrapper
- partial I/O
- permissions

## Why They Exist

Unix models many resources as file descriptors. Mastering them unlocks files, pipes, sockets, terminals, and devices.

## Reading

- `POSIX.md`
- `DEBUGGING.md`

## Examples

```c
int fd = open("input.txt", O_RDONLY);
if (fd == -1) {
    perror("open");
    return 1;
}
close(fd);
```

## ASCII Diagram

```text
process fd table:
0 stdin
1 stdout
2 stderr
3 input.txt
```

## Memory Diagram

```text
user buffer <-> read/write <-> kernel file object
```

## Exercises

1. Open a file and print its contents.
2. Copy a file using a loop.
3. Handle partial writes.
4. Report errors with `perror`.

## Mini Project

Build `projects/day19-file-copy/`, a robust file copy utility.

## Debugging

Try copying a missing file and verify the error path.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 copy.c -o copy
./copy input.txt output.txt
cmp input.txt output.txt
```

## Interview Questions

1. What is a file descriptor?
2. Why can `write` write fewer bytes than requested?
3. When is `errno` meaningful?

## Revision Checklist

- [ ] I can use POSIX file APIs.
- [ ] I can handle errors.
- [ ] I can handle partial I/O.

## Homework

Add a buffer-size command-line option.

## Expected Outcome

You can write a real low-level file copying tool.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
