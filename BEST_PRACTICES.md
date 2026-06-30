# Best Practices

## C

- Compile with warnings.
- Treat warnings as design feedback.
- Initialize variables before use.
- Keep ownership obvious.
- Check allocation failures.
- Check system call return values.
- Use `sizeof *ptr` for allocations.
- Avoid clever pointer arithmetic unless it clarifies the code.
- Prefer small functions with clear contracts.
- Keep headers minimal and self-contained.

## Memory

- Every allocation needs an owner.
- Every owner needs a release path.
- Set pointers to `NULL` after freeing only when the pointer remains in use.
- Do not return pointers to stack objects.
- Do not store pointers to temporary objects.
- Run sanitizers early.

## Build

- Keep debug and release builds separate.
- Make incremental builds reliable.
- Avoid hidden dependencies.
- Build from a clean checkout periodically.
- Inspect object files when learning linking.

## POSIX

- Check `open`, `read`, `write`, `close`, `fork`, `exec`, `pipe`, and `pthread_*` results.
- Handle partial reads and writes.
- Preserve `errno` when needed.
- Close unused file descriptors.
- Prefer simple signal handlers.

## C++

- Prefer RAII over manual cleanup.
- Prefer `std::vector` over manual dynamic arrays.
- Prefer `std::string` over raw string ownership.
- Use `std::unique_ptr` for exclusive ownership.
- Use `std::shared_ptr` only when shared ownership is real.
- Implement Rule of Five only when owning raw resources.

## Debugging

- Reproduce before changing code.
- Change one thing at a time.
- Keep the failing input.
- Use sanitizers.
- Use a debugger to inspect state.
- Explain the root cause before declaring the bug fixed.
