==================================
FILE:
POSIX.md
==================================

# POSIX

POSIX is a standards family that describes portable Unix-like operating system interfaces.

It matters because much systems software targets POSIX APIs even when the exact kernel differs.

## Core Ideas

- processes
- files
- file descriptors
- pipes
- signals
- threads
- environment variables
- permissions
- directories

## File Descriptors

A file descriptor is a small integer handle:

```text
0 -> stdin
1 -> stdout
2 -> stderr
3 -> opened file
```

The kernel tracks what each descriptor refers to.

## Files

```c
int fd = open("input.txt", O_RDONLY);
ssize_t n = read(fd, buf, sizeof buf);
close(fd);
```

Always check errors.

## Processes

```c
pid_t pid = fork();
if (pid == 0) {
    execlp("ls", "ls", "-l", NULL);
    _exit(127);
}
waitpid(pid, NULL, 0);
```

`fork` creates a child process.

`exec` replaces the current program image.

`wait` observes child termination.

## Signals

Signals are asynchronous notifications.

Examples:

- `SIGINT`
- `SIGTERM`
- `SIGCHLD`

Signal handlers have strict safety rules. Keep them minimal.

## Pipes

```text
process A stdout -> pipe -> process B stdin
```

Pipes are file descriptors with a read end and write end.

## Threads

Threads share an address space but have separate stacks.

```text
Process
|-- thread 1 stack
|-- thread 2 stack
|-- shared heap
|-- shared globals
```

Use mutexes or other synchronization for shared mutable data.

## mmap

`mmap` maps files or anonymous memory into a process address space.

Used for:

- memory-mapped files
- shared memory
- allocators
- device mappings

## Sockets

Sockets expose networking as file-descriptor-like objects.

Basic TCP flow:

```text
server: socket -> bind -> listen -> accept -> read/write
client: socket -> connect -> read/write
```

## macOS Differences

macOS is Unix and supports many POSIX APIs, but:

- it is not Linux
- syscall numbers differ
- kernel interfaces differ
- tracing differs
- binary format is Mach-O, not ELF
- dynamic loader is `dyld`, not `ld-linux`
- Linux kernel modules do not run on macOS

## glibc And musl

Linux C libraries:

- glibc: common on Debian, Ubuntu, Fedora, many distributions
- musl: common in Alpine and static-linking-focused environments

The C library wraps syscalls and provides standard C/POSIX APIs.
