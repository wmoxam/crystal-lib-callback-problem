# Demonstrates an issue I'm having with an external lib that frees a passed pointer

## Usage

```
$ make
cc -Wall -c stupidlib.c
ar -cvq libstupid.a stupidlib.o
q - stupidlib.o
cc -o test_c test.c -L. -lstupid
crystal build test.cr -o test_cr --link-flags -L.

$ ./test_c
Hello There

$ ./test_cr
Hello there
test_cr(59624,0x7fff7d9d3300) malloc: *** error for object 0x10864624c: pointer being freed was not allocated
*** set a breakpoint in malloc_error_break to debug
Abort trap: 6

```
