all:
	cc -Wall -c stupidlib.c
	ar -cvq libstupid.a stupidlib.o
	cc -o test_c test.c -L. -lstupid
	crystal build test.cr -o test_cr --link-flags -L.

clean:
	rm *.o *.a test_c test_cr
