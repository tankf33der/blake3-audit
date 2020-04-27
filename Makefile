all: a m u
a:  c
	clang -fsanitize=address *.c -DBLAKE3_NO_AVX512 -DBLAKE3_NO_AVX2 -DBLAKE3_NO_SSE41 && ./a.out
m:  c
	clang -fsanitize=memory *.c -DBLAKE3_NO_AVX512 -DBLAKE3_NO_AVX2 -DBLAKE3_NO_SSE41 && ./a.out
u:  c
	clang -fsanitize=undefined *.c -DBLAKE3_NO_AVX512 -DBLAKE3_NO_AVX2 -DBLAKE3_NO_SSE41 && ./a.out
mike: c
	cat *.c > mike.c
c:
	rm -rf *.o *.out mike.*
