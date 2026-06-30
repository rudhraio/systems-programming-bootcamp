# Day 20 - Processes: fork, exec, wait, Environment

## Objectives

- Create child processes.
- Replace a process image with `exec`.
- Wait for child termination.
- Pass environment variables.

## Concepts

- process
- `fork`
- `exec`
- `waitpid`
- exit status
- environment

## Why They Exist

Shells, build systems, servers, and process supervisors all rely on creating and coordinating processes.

## Reading

- `POSIX.md`
- `DEBUGGING.md`

## Examples

```c
pid_t pid = fork();
if (pid == 0) {
    execlp("ls", "ls", "-l", NULL);
    _exit(127);
}
waitpid(pid, NULL, 0);
```

## ASCII Diagram

```text
parent process
   |
 fork
   +--> child -> exec("ls")
   |
 wait
```

## Memory Diagram

```text
after fork:
parent virtual memory
child virtual memory

copy-on-write shares physical pages until modified
```

## Exercises

1. Fork and print parent/child PIDs.
2. Exec `echo`.
3. Wait and inspect exit status.
4. Print an environment variable.

## Mini Project

Build `projects/day20-command-runner/`, a tiny command runner.

## Debugging

Call `exec` with a missing command and handle failure correctly in the child.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 runner.c -o runner
./runner /bin/echo hello
```

## Interview Questions

1. What does `fork` return in parent and child?
2. What does `exec` replace?
3. Why use `_exit` after failed exec in a child?

## Revision Checklist

- [ ] I can create a child process.
- [ ] I can exec a command.
- [ ] I can wait for status.

## Homework

Support passing arguments from `argv` to the child command.

## Expected Outcome

You understand the core mechanism behind shells and process launchers.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
