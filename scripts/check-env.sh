#!/usr/bin/env sh
set -eu

echo "System:"
uname -a

echo
echo "Shell:"
printf '%s\n' "${SHELL:-unknown}"

echo
echo "Clang:"
if command -v clang >/dev/null 2>&1; then
    clang --version | sed -n '1,3p'
else
    echo "clang not found"
fi

echo
echo "GCC:"
if command -v gcc >/dev/null 2>&1; then
    gcc --version | sed -n '1,3p'
    if gcc --version 2>/dev/null | sed -n '1p' | grep -qi 'clang'; then
        echo "note: this gcc command is a Clang frontend on this system"
    fi
else
    echo "gcc not found"
fi

echo
echo "Make:"
if command -v make >/dev/null 2>&1; then
    make --version | sed -n '1,2p'
else
    echo "make not found"
fi

echo
echo "Debugger:"
if command -v lldb >/dev/null 2>&1; then
    lldb --version | sed -n '1,2p'
elif command -v gdb >/dev/null 2>&1; then
    gdb --version | sed -n '1,2p'
else
    echo "lldb/gdb not found"
fi
