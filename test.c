#include "stupidlib.h"
#include <stdio.h>
#include <stdlib.h>

static char* _cb() {
  char *buf = malloc(16);
  snprintf(buf, 16, "Hello There");

  return buf;
}

int main(int argc, char **argv)
{
  print_and_free(_cb);
}
