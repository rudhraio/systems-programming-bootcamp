==================================
FILE:
days/day27.md
==================================

# Day 27 - Linux Environments, schroot, Containers, VMs

## Objectives

- Understand isolated build environments.
- Learn what `schroot` is and why Debian uses it.
- Choose a macOS path for Linux practice.

## Concepts

- chroot
- schroot
- container
- VM
- reproducible build environment
- Debian packaging context

## Why They Exist

Companies need builds that do not depend on one developer's machine. Isolated environments make dependencies explicit and repeatable.

## Reading

- `POSIX.md`
- `GNU_TOOLCHAIN.md`
- `RESOURCES.md`

## Examples

```text
macOS host
  |
  +-- UTM Linux VM: full Linux kernel
  +-- Docker: Linux userspace container on VM layer
  +-- remote Linux: real Linux environment elsewhere
```

## ASCII Diagram

```text
schroot:
host Linux kernel
  |
  +-- isolated Debian filesystem root
```

## Memory Diagram

```text
process sees "/" as chroot directory, but still uses host kernel
```

## Exercises

1. Write down which Linux practice method you will use.
2. Install or identify a Debian/Ubuntu environment.
3. Build a previous C project inside Linux.
4. Compare `readelf` output with macOS `otool`.

## Mini Project

Build `projects/day27-linux-env/`, notes and scripts for your Linux practice environment.

## Debugging

Classify an issue as host OS, container/VM config, package dependency, compiler, linker, or runtime.

## Terminal Commands

Linux:

```sh
uname -a
cat /etc/os-release
gcc --version
readelf -h /bin/ls
```

macOS:

```sh
uname -a
sw_vers
clang --version
otool -hV /bin/ls
```

## Interview Questions

1. What problem does `schroot` solve?
2. How is a VM different from chroot?
3. Why do companies use isolated builds?

## Revision Checklist

- [ ] I can explain schroot.
- [ ] I can explain Docker vs VM at a practical level.
- [ ] I can choose a Linux practice setup.

## Homework

Set up UTM, Docker, VMware, Parallels, or remote Linux for future Linux-specific days.

## Expected Outcome

You understand how to practice Linux systems programming from macOS.

## Time Split

- 20 min learning
- 35 min setup/coding
- 5 min revision
