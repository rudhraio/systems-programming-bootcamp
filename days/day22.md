# Day 22 - Pipes, Redirection, And Signals

## Objectives

- Use pipes to connect processes.
- Redirect stdin/stdout.
- Handle basic signals.

## Concepts

- `pipe`
- `dup2`
- redirection
- `SIGINT`
- `SIGCHLD`
- closing unused descriptors

## Why They Exist

Unix composition depends on connecting programs through byte streams.

## Reading

- `POSIX.md`
- `DEBUGGING.md`

## Examples

```text
ls -l | wc -l

ls stdout -> pipe write end
wc stdin  <- pipe read end
```

## ASCII Diagram

```text
child A fd1 -> pipe -> child B fd0
```

## Memory Diagram

```text
process fd tables reference shared kernel pipe object
```

## Exercises

1. Create a pipe.
2. Fork two children.
3. Connect stdout of first to stdin of second.
4. Close unused pipe ends.

## Mini Project

Extend `projects/day21-mini-shell/` or create `projects/day22-pipes/` with single-pipe support.

## Debugging

Leave a pipe write end open and observe a hanging reader. Then fix descriptor closing.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 pipe_demo.c -o pipe_demo
./pipe_demo
```

Linux:

```sh
strace -f ./pipe_demo
```

## Interview Questions

1. Why must unused pipe ends be closed?
2. What does `dup2` do?
3. Why are signal handlers restricted?

## Revision Checklist

- [ ] I can draw pipe file descriptors.
- [ ] I can use `dup2`.
- [ ] I can explain a pipe hang.

## Homework

Add output redirection with `>`.

## Expected Outcome

You can connect processes with Unix pipes.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
