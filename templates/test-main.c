==================================
FILE:
templates/test-main.c
==================================

#include <assert.h>

static void test_example(void) {
    assert(1 + 1 == 2);
}

int main(void) {
    test_example();
    return 0;
}
