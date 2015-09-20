#include "stupidlib.h"
#include <stdio.h>
#include <stdlib.h>

static char* _cb(void *data) {
  char *buf = malloc(16);
  snprintf(buf, 16, "Got: %d.", (int)(uintptr_t)data);

  return buf;
}

int main(int argc, char **argv)
{
  print_and_free(_cb);
}
