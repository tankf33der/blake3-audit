all: a m u
a:  c
	clang -fsanitize=address *.c -DBLAKE3_NO_AVX512 -DBLAKE3_NO_AVX2 -DBLAKE3_NO_SSE41 && ./a.out
m:  c
	clang -fsanitize=memory *.c -DBLAKE3_NO_AVX512 -DBLAKE3_NO_AVX2 -DBLAKE3_NO_SSE41 && ./a.out
u:  c
	clang -fsanitize=undefined *.c -DBLAKE3_NO_AVX512 -DBLAKE3_NO_AVX2 -DBLAKE3_NO_SSE41 && ./a.out
t: c
	tcc *.c -DBLAKE3_VERSION_STRING="MIKE" -DBLAKE3_NO_AVX512 -DBLAKE3_NO_AVX2 -DBLAKE3_NO_SSE41 -DBLAKE3_NO_SSE2 && ./a.out
c:
	rm -rf *.o *.out mike.*

#
# tis-interpreter.sh --cc "-DBLAKE3_NO_AVX512 -DBLAKE3_NO_AVX2 -DBLAKE3_NO_SSE41" blake3-audit/*.c
#
