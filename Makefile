files := file1 file2
a := one two
b := 'one two'
x := dude
some_files: $(files)
	echo "Look at this variable: " $(files)
	touch some_file

file1:
	touch file1

file2:
	touch file2

clean some_files:
	echo '$a'
	echo '$b'
	echo $(x)
	echo ${x}
	echo $x # Bad practice, but works
	rm -f file1 file2 some_file
