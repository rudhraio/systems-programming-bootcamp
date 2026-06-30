# Templates

Reusable starter files live here.

Use templates to avoid rebuilding project structure from memory. Understand every line before copying it into a project.

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
