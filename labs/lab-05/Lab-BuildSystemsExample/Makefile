all: static_block dynamic_block

libdynamic.o: source/block.c
	gcc -c -fPIC source/block.c -o libdynamic.o

libstatic.o: source/block.c
	gcc -c source/block.c -o libstatic.o

staticlib.a: libstatic.o
	ar rcs libstatic.a libstatic.o

dynamiclib.so: libdynamic.o
	gcc libdynamic.o -shared -o libdynamic.so

program.o: program.c
	gcc -c program.c -o program.o

static_block: program.o staticlib.a
	gcc -L. -lstatic -o static_block program.o

dynamic_block: program.o dynamiclib.so
	gcc -L. -ldynamic -o dynamic_block program.o

clean:
	rm *.o static_block dynamic_block *.a *.so
