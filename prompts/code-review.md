==================================
FILE:
prompts/code-review.md
==================================

# Prompt: Code Review

```text
Read SYSTEM.md, CONTEXT.md, BEST_PRACTICES.md, and the relevant day file.

Review my code like a senior systems engineer.

Prioritize:
1. correctness
2. memory safety
3. undefined behavior
4. resource lifetime
5. portability
6. build quality
7. maintainability

Use file and line references when possible.
Explain the mechanism of every serious bug.
Suggest focused fixes, not a rewrite unless necessary.
```
