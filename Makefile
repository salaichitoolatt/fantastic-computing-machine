clean: some_file
	rm -f some_file example2.o example2 example2.c

some_file: example2
	touch some_file

example2: example2.o
	cc example2.o -o example2 # Runs third

example2.o: example2.c
	cc -c example2.c -o example2.o # Runs second

example2.c:
	echo "int main() { return 0; }" > example2.c # Runs first
