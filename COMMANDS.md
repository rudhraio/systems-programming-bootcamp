# Practical Command Cheat Sheet

Use these commands as starting points. Prefer understanding each flag over memorizing long command lines.

## clang

```sh
clang -Wall -Wextra -Wpedantic -std=c17 main.c -o app
clang -g -O0 -fsanitize=address,undefined main.c -o app
clang -E main.c -o main.i
clang -S main.c -o main.s
clang -c main.c -o main.o
clang main.o -o app
```

Why: Clang is the default compiler family on macOS and gives excellent diagnostics.

## gcc

```sh
gcc -Wall -Wextra -Wpedantic -std=c17 main.c -o app
gcc -g -O0 main.c -o app
gcc -c main.c -o main.o
```

Why: GCC is common on Linux build systems and embedded toolchains.

## make

```sh
make
make clean
make debug
make release
make -n
make -j4
```

Why: Make encodes build dependencies so only changed parts rebuild.

## gdb

Linux-focused:

```sh
gdb ./app
run
break main
next
step
print variable
backtrace
info locals
quit
```

## lldb

macOS-focused:

```sh
lldb ./app
run
breakpoint set --name main
next
step
frame variable
bt
quit
```

## objdump

Linux:

```sh
objdump -d app
objdump -t app
objdump -h app
```

Why: inspect disassembly, symbols, and sections.

## otool

macOS:

```sh
otool -L app
otool -l app
otool -tvV app
```

Why: inspect Mach-O binaries and linked dynamic libraries.

## nm

```sh
nm main.o
nm app
nm -g app
```

Symbol letters matter:

- `T` text/code symbol
- `D` initialized data
- `B` BSS
- `U` undefined symbol

## readelf

Linux:

```sh
readelf -h app
readelf -S app
readelf -s app
readelf -d app
```

Why: inspect ELF headers, sections, symbols, and dynamic linking info.

## strings

```sh
strings app
strings core
```

Why: find printable strings inside binaries.

## strip

```sh
cp app app.debug
strip app
```

Why: remove symbols from release binaries. Keep debug copies when needed.

## ar

```sh
ar rcs libmathstuff.a add.o sub.o
ar t libmathstuff.a
```

Why: create static libraries.

## ld

Usually call the compiler driver instead of invoking `ld` directly:

```sh
clang main.o helper.o -o app
```

The compiler driver adds startup files, standard libraries, and platform defaults.

## chmod

```sh
chmod +x script.sh
chmod 644 file.txt
chmod 755 tool
```

## find

```sh
find . -name '*.c'
find . -type f -name Makefile
find . -type f -perm +111
```

## grep

Prefer `rg` when available:

```sh
grep -R "malloc" .
grep -n "TODO" file.c
```

## sed

```sh
sed -n '1,80p' file.c
sed 's/foo/bar/g' input.txt
```

## awk

```sh
awk '{ print $1 }' file.txt
awk -F: '{ print $1 }' /etc/passwd
```

## xargs

```sh
find . -name '*.o' | xargs rm
find . -name '*.c' | xargs clang-format -i
```

Be careful with spaces in filenames. Prefer `find -print0` and `xargs -0` for robust scripts.

## tar

```sh
tar -czf project.tar.gz project/
tar -xzf project.tar.gz
tar -tf project.tar.gz
```

## ssh

```sh
ssh user@host
ssh -p 2222 user@host
```

## scp

```sh
scp file.c user@host:/tmp/
scp -r project user@host:/tmp/
```

## git

```sh
git status
git diff
git add file.c
git commit -m "Add file copy utility"
git log --oneline --graph --decorate
git branch
git switch -c experiment
```
