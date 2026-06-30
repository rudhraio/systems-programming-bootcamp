# Day 18 - Templates, STL, Algorithms, Lambdas

## Objectives

- Use templates at a practical level.
- Use standard containers and algorithms.
- Write small lambdas.

## Concepts

- templates
- `std::map`
- `std::vector`
- `std::algorithm`
- lambdas
- iterators

## Why They Exist

Generic code lets the compiler generate type-safe implementations without manual duplication.

## Reading

- `BEST_PRACTICES.md`

## Examples

```cpp
std::vector<int> xs = {3, 1, 2};
std::sort(xs.begin(), xs.end());
```

## ASCII Diagram

```text
container -> iterator range -> algorithm
```

## Memory Diagram

```text
vector object -> contiguous heap array
map object    -> node-based tree structure
```

## Exercises

1. Sort a vector.
2. Count words with `std::map`.
3. Use a lambda predicate.
4. Write a tiny function template.

## Mini Project

Build `projects/day18-log-analyzer/`, a C++ log analyzer that counts levels or words.

## Debugging

Use compiler errors from a template mistake. Identify the first meaningful diagnostic.

## Terminal Commands

```sh
clang++ -Wall -Wextra -Wpedantic -std=c++20 -g -O0 log_analyzer.cpp -o log_analyzer
./log_analyzer sample.log
```

## Interview Questions

1. Why prefer standard algorithms?
2. What is a lambda?
3. What is the difference between `vector` and `map` storage?

## Revision Checklist

- [ ] I can use `std::sort`.
- [ ] I can use `std::map`.
- [ ] I can read basic template diagnostics.

## Homework

Add command-line options for top N results.

## Expected Outcome

You can write practical modern C++ using the standard library.

## Time Split

- 20 min learning
- 35 min coding
- 5 min revision
