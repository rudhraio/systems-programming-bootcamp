# Day 28 - Revision Project 4: Mini Shell Part 2

## Objectives

- Polish the mini shell.
- Add redirection and single pipeline support.
- Add tests or scripted checks.

## Concepts

- built-ins
- redirection
- pipes
- child processes
- descriptor lifetime
- test scripts

## Why They Exist

The shell project forces precise understanding of process and descriptor behavior.

## Reading

- `POSIX.md`
- `DEBUGGING.md`
- `BEST_PRACTICES.md`

## Examples

```text
echo hello > out.txt
cat out.txt | wc -c
```

## ASCII Diagram

```text
parser -> command graph -> process setup -> wait
```

## Memory Diagram

```text
line buffer -> parsed command structs -> child argv arrays
```

## Exercises

1. Add `cd`.
2. Add output redirection.
3. Add one pipeline.
4. Add basic scripted tests.

## Mini Project

Continue `projects/day21-mini-shell/` or create `projects/day28-mini-shell-v2/`.

## Debugging

Use descriptor diagrams to fix hangs and wrong redirection.

## Terminal Commands

```sh
make
./msh
printf 'echo hello\nexit\n' | ./msh
```

Linux:

```sh
strace -f ./msh
```

## Interview Questions

1. Why must `cd` be a built-in?
2. What happens if pipe descriptors are not closed?
3. How does redirection use `dup2`?

## Revision Checklist

- [ ] I can explain mini shell process flow.
- [ ] I can implement redirection.
- [ ] I can implement one pipeline.

## Homework

Write a project review note listing limitations and future improvements.

## Expected Outcome

You have a meaningful systems programming portfolio project.

## Time Split

- 20 min design/revision
- 35 min coding
- 5 min revision
