main: cal.l
	flex cal.l
	gcc lex.yy.c
	./a.out <input.txt> output.txt
main2:cal.l cal.y
	bison -d cal.y
	flex cal.l
	gcc lex.yy.c cal.tab.c -lfl
	./a.out <input.txt> output.txt