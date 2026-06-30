# Day 25 - Sockets Basic Networking

## Objectives

- Understand sockets as communication endpoints.
- Build a tiny TCP client or server.
- Relate sockets to file descriptors.

## Concepts

- socket
- bind
- listen
- accept
- connect
- TCP
- byte stream

## Why They Exist

Networking extends file-descriptor-style I/O across machines.

## Reading

- `POSIX.md`
- `DEBUGGING.md`

## Examples

```text
server: socket -> bind -> listen -> accept -> read/write
client: socket -> connect -> write/read
```

## ASCII Diagram

```text
client fd <==== TCP byte stream ====> server accepted fd
```

## Memory Diagram

```text
user buffer -> socket fd -> kernel TCP stack -> network
```

## Exercises

1. Create a TCP server socket.
2. Accept one connection.
3. Echo received bytes.
4. Write a simple client or use `nc`.

## Mini Project

Build `projects/day25-netcat-lite/`, a small networking utility.

## Debugging

Handle port already in use and connection refused.

## Terminal Commands

```sh
clang -Wall -Wextra -Wpedantic -std=c17 -g -O0 server.c -o server
./server 9000
nc localhost 9000
```

## Interview Questions

1. How is a socket like a file descriptor?
2. What does `accept` return?
3. Is TCP message-based or byte-stream-based?

## Revision Checklist

- [ ] I can draw client/server socket flow.
- [ ] I can accept one TCP connection.
- [ ] I can explain byte streams.

## Homework

Add a client program and test against your server.

## Expected Outcome

You can build a minimal TCP utility and reason about its descriptors.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
