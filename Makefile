all: vbackdoor.so

vbackdoor.so: vbackdoor.c
	gcc -Wall -fPIC -shared -o vbackdoor.so vbackdoor.c -ldl

.PHONY clean:
	rm -f vbackdoor.so
