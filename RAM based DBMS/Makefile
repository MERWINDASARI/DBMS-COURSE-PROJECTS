dbms: y.tab.c lex.yy.c y.tab.h
	gcc -g y.tab.c lex.yy.c  -ll -ly  -o dbms
lex.yy.c: 2.l
	lex 2.l
y.tab.c: 2.y
	yacc -v -d 2.y
clean:
	rm -f dbms y.tab.c lex.yy.c y.tab.h	y.output
