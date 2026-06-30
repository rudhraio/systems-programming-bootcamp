# Templates

Reusable starter files live here.

Templates are generic scaffolding, not completed course work. They exist so a learner can start a new exercise with a clean `main.c`, header, test file, or Makefile without rebuilding the same boilerplate from memory.

Use them when a day asks you to create a new project under `projects/`. Copy only what you need, then modify the copied files for that exercise. Understand every line before using it.

Suggested use:

```sh
mkdir -p projects/day01-hello
cp templates/c-main.c projects/day01-hello/main.c
cp templates/c-project-Makefile projects/day01-hello/Makefile
```

Then build from the project directory:

```sh
cd projects/day01-hello
make
./app
```

Keep completed exercises under `projects/`, not in this directory.
