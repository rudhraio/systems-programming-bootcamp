==================================
FILE:
days/day16.md
==================================

# Day 16 - Modern C++ Foundations For C Programmers

## Objectives

- Learn RAII as deterministic cleanup.
- Use `std::string` and `std::vector`.
- Compare C manual cleanup with C++ object lifetime.

## Concepts

- constructor
- destructor
- RAII
- references
- `std::string`
- `std::vector`

## Why They Exist

Modern C++ makes ownership and cleanup part of object lifetime, reducing manual cleanup bugs common in C.

## Reading

- `BEST_PRACTICES.md`

## Examples

```cpp
std::vector<int> xs;
xs.push_back(10);
xs.push_back(20);
```

## ASCII Diagram

```text
scope enter -> object constructed
scope exit  -> destructor runs
```

## Memory Diagram

```text
vector object on stack -> heap buffer owned by vector
```

## Exercises

1. Rewrite a dynamic C array using `std::vector`.
2. Use `std::string` instead of manual char buffers.
3. Create a class that prints in constructor/destructor.
4. Observe destruction order.

## Mini Project

Build `projects/day16-cpp-raii/`, a simple file wrapper or buffer wrapper.

## Debugging

Create an exception or early return path and observe that destructors still run.

## Terminal Commands

```sh
clang++ -Wall -Wextra -Wpedantic -std=c++20 -g -O0 main.cpp -o app
./app
```

## Interview Questions

1. What is RAII?
2. Why is `std::vector` usually better than manual dynamic arrays?
3. What does a destructor guarantee?

## Revision Checklist

- [ ] I can explain RAII.
- [ ] I can use `std::vector`.
- [ ] I can use `std::string`.

## Homework

Wrap a C file handle in a small C++ class.

## Expected Outcome

You can use C++ lifetime rules to manage resources more safely.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
