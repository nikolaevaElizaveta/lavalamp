%%

%class Lexer
%unicode
%line
%column
%public

%%

[ \t\n]+                         { /* Skip whitespaces and newline characters */ }
\/\/[^\n]*                       { /* Skip one-line comments */ }

"var"                            { System.out.println("VAR"); }
"type"                           { System.out.println("TYPE"); }
"routine"                        { System.out.println("ROUTINE"); }
"integer"                        { System.out.println("INTEGER"); }
"real"                           { System.out.println("REAL"); }
"boolean"                        { System.out.println("BOOLEAN"); }
"while"                          { System.out.println("WHILE"); }
"for"                            { System.out.println("FOR"); }
"if"                             { System.out.println("IF"); }
"else"                           { System.out.println("ELSE"); }
"end"                            { System.out.println("END"); }
"is"                             { System.out.println("IS"); }
"loop"                           { System.out.println("LOOP"); }
"print"                          { System.out.println("PRINT"); }
"true"                           { System.out.println("TRUE"); }
"false"                          { System.out.println("FALSE"); }
"return"                         { System.out.println("RETURN"); }
"reverse"                        { System.out.println("REVERSE"); }

"and"                            { System.out.println("AND"); }
"or"                             { System.out.println("OR"); }
"xor"                            { System.out.println("XOR"); }
"not"                            { System.out.println("NOT"); }

[a-zA-Z_][a-zA-Z0-9_]*           { System.out.println("IDENTIFIER: " + yytext()); }

[+-]?[0-9]+\.[0-9]+              { System.out.println("REAL_LITERAL: " + yytext()); }  
[+-]?[0-9]+                      { System.out.println("INTEGER_LITERAL: " + yytext()); } 
\"[^\"]*\"                       { System.out.println("STRING_LITERAL: " + yytext()); }  

"+"                              { System.out.println("PLUS"); }
"-"                              { System.out.println("MINUS"); }
"*"                              { System.out.println("MULTIPLY"); }
"/"                              { System.out.println("DIVIDE"); }
"%"                              { System.out.println("MOD"); }

"<="                             { System.out.println("LE"); }
">="                             { System.out.println("GE"); }
"<"                              { System.out.println("LT"); }
">"                              { System.out.println("GT"); }
"="                              { System.out.println("EQ"); }
"/="                             { System.out.println("NE"); }

":="                             { System.out.println("ASSIGN"); }

":"                              { System.out.println("COLON"); }
";"                              { System.out.println("SEMICOLON"); }
","                              { System.out.println("COMMA"); }
"("                              { System.out.println("LPAREN"); }
")"                              { System.out.println("RPAREN"); }
"{"                              { System.out.println("LBRACE"); }
"}"                              { System.out.println("RBRACE"); }
"["                              { System.out.println("LBRACKET"); }
"]"                              { System.out.println("RBRACKET"); }

".."                             { System.out.println("RANGE"); }

"."                              { System.out.println("DOT"); }

.                                { System.out.println("Unknown character: " + yytext()); }
