# Day 17 - Smart Pointers, Move Semantics, Rule Of Five

## Objectives

- Understand exclusive and shared ownership.
- Learn move semantics.
- Apply the Rule of Five only when needed.

## Concepts

- `std::unique_ptr`
- `std::shared_ptr`
- move constructor
- move assignment
- copy control
- Rule of Five

## Why They Exist

Resource-owning objects need clear transfer rules. Modern C++ expresses this through moves and smart pointers.

## Reading

- `BEST_PRACTICES.md`

## Examples

```cpp
auto p = std::make_unique<int>(42);
auto q = std::move(p);
```

After the move, `q` owns the object.

## ASCII Diagram

```text
before: p -> object
move
after:  q -> object, p empty
```

## Memory Diagram

```text
unique_ptr stack object -> heap object
destructor deletes heap object
```

## Exercises

1. Use `unique_ptr` for an owned buffer.
2. Demonstrate a move.
3. Disable copying for a resource owner.
4. Implement move operations for a raw owning buffer.

## Mini Project

Build `projects/day17-movable-buffer/`, a movable C++ buffer class.

## Debugging

Create a double-free bug in a naive copyable raw pointer class, then fix it by deleting copy or implementing deep copy.

## Terminal Commands

```sh
clang++ -Wall -Wextra -Wpedantic -std=c++20 -g -O0 -fsanitize=address,undefined buffer.cpp -o buffer
./buffer
```

## Interview Questions

1. When should you use `unique_ptr`?
2. What does `std::move` actually do?
3. What problem does the Rule of Five solve?

## Revision Checklist

- [ ] I can explain exclusive ownership.
- [ ] I can trace a move.
- [ ] I can prevent accidental copying of owners.

## Homework

Add tests for move construction and move assignment.

## Expected Outcome

You can reason about C++ ownership without treating smart pointers as decoration.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
