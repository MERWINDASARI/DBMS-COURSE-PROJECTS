%{
	#include <stdio.h>
	struct node 			
	{
		char str1[20];
		struct node* left;	
		struct node* right;
		struct node* up;
		struct node* down;
	};
	typedef struct node node;
	typedef node* nodeptr;
	#include <stdlib.h>
	#include "y.tab.h"
	#include <string.h>
%}

alpha [a-zA-Z_]
alphanum [a-zA-Z0-9_]
digit [0-9]

%%
[ \t\n]					{}
(?i:select)				{return select1;}
(?i:from)				{return from1;}
(?i:where)				{return where1;}
(?i:create)				{return create1;}
(?i:not)				{return not1;}
(?i:sum)				{return sum1;}
"int"					{return int1;}
"varchar(255)"			{return char1;}
(?i:avg)				{return avg1;}
(?:drop)				{return drop1;}
(?:delete)				{return delete1;}
(?:table)				{return table1;}
(?:database)			{return database1;}
(?:use)					{return use1;}
[,]						{return comma;}
[;]						{return semi;}
(?:insert)				{return insert1;}
(?:into)				{return into1;}
(?:values)				{return values1;}
[']						{return quote;}
[*]						{return star;}
{alphanum}+				{strcpy(yylval.str2,yytext);return text1;}
.						{return yytext[0];}
%%