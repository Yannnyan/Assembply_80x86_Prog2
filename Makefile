



MatrixCalc: MatrixCalc.o
	ld -m elf_i386 -o MatrixCalc MatrixCalc.o

MatrixCalc.o: MatrixCalc.s
	nasm -f elf32 -o MatrixCalc.o MatrixCalc.s 

.PHONY: clean

clean: 
	rm -f MatrixCalc *.o

