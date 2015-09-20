#include <stdio.h>
#include <stdlib.h>

void print_and_free(char* (*some_cb)(void)) {
  char *s = some_cb();
  printf("%s\n", s);
  free(s);
}
