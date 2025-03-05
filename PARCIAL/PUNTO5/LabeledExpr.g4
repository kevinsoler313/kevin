grammar LabeledExpr; 

prog:   stat+ ;

stat:   expr NEWLINE                # printExpr
    |   ID '=' expr NEWLINE         # assign
    |   NEWLINE                     # blank
    ;

expr:   expr '^' expr               # Power 
    |   expr op=('*'|'/') expr      # MulDiv
    |   expr op=('+'|'-') expr      # AddSub
    |   FUNC '(' expr ')'           # FuncCall
    |   INT                         # int
    |   ID                          # id
    |   '(' expr ')'                # parens
    ;

FUNC : 'sin' | 'cos' | 'tan' | 'log'; // Funciones trigonométricas y logaritmo
ID  :   [a-zA-Z]+ ;      
INT :   [0-9]+ ;         
NEWLINE:'\r'? '\n' ;    
WS  :   [ \t]+ -> skip ;

