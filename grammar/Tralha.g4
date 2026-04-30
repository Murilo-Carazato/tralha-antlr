grammar Tralha;

options {
    language = Dart;
}

// ----- PARSER RULES -----
programa : comando* EOF ;

bloco : '{' comando* '}' ;

comando 
    : declaracao ';'
    | atribuicao ';'
    | chamada_metodo ';'
    | condicional
    | repeticao
    | excessao
    | comando_io ';'
    | 'chega' ';'
    | 'pula' ';'
    | 'manda' expressao? ';'
    | 'taca' expressao ';'
    | bloco
    ;

declaracao
    : tipo ID ('receba' expressao)?
    ;

atribuicao
    : (ID | acesso) 'receba' expressao
    | (ID | acesso) ('++' | '--')
    | ('++' | '--') (ID | acesso)
    ;

acesso
    : ID ('.' ID | '[' expressao ']')+
    ;

chamada_metodo
    : (ID | acesso) '(' lista_expressoes? ')'
    ;

lista_expressoes
    : expressao (',' expressao)*
    ;

condicional
    : 'sePa' '(' expressao ')' comando
      ('ouSeDeusQuiser' 'sePa' '(' expressao ')' comando)*
      ('ouSeDeusQuiser' comando)?
    | 'dependendo' '(' expressao ')' '{' caso* padrao? '}'
    ;

caso
    : 'nesseCaso' expressao ':' comando*
    ;

padrao
    : 'naDuvida' ':' comando*
    ;

repeticao
    : 'ateDarCerto' '(' expressao ')' comando
    | 'vaiNaFe' bloco 'ateDarCerto' '(' expressao ')' ';'
    | 'vaiVolta' '(' declaracao? ';' expressao? ';' atribuicao? ')' comando
    | 'vaiVolta' '(' tipo ID 'laEle' expressao ')' comando
    ;

excessao
    : 'gambiarra' bloco 'deuPau' '(' tipo ID ')' bloco ('fitaIsolante' bloco)?
    ;

comando_io
    : 'whatsapp' '(' expressao ')'
    ;

expressao
    : '(' expressao ')'
    | ('+'|'-'|'!') expressao
    | expressao ('*'|'/'|'%') expressao
    | expressao ('+'|'-') expressao
    | expressao ('<'|'<='|'>'|'>=') expressao
    | expressao ('=='|'!=') expressao
    | expressao '&&' expressao
    | expressao '||' expressao
    | termo
    ;

termo
    : ID
    | chamada_metodo
    | acesso
    | STRING_LITERAL
    | INT_LITERAL
    | FLOAT_LITERAL
    | DOUBLE_LITERAL
    | CHAR_LITERAL
    | 'confia'
    | 'fakeNews'
    | 'oco'
    ;

tipo
    : 'naoFracionado'
    | 'fracionado'
    | 'fracionadao'
    | 'letrinha'
    | 'bipolar'
    | 'testao'
    | 'rouba'
    | 'mutante'
    | 'adivinha'
    | ID // Permite classes customizadas
    ;

// ----- LEXER RULES -----

// Numeros (Literais)
FLOAT_LITERAL : [0-9]+ '.' [0-9]+ 'f' | [0-9]+ 'f' ;
DOUBLE_LITERAL : [0-9]+ '.' [0-9]+ ;
INT_LITERAL : [0-9]+ ;

STRING_LITERAL : '"' ~( '"' | '\\' )* '"' ;
CHAR_LITERAL : '\'' . '\'' ;

// Identificadores
ID : [a-zA-Z_][a-zA-Z0-9_]* ;

// Comentarios e espaços em branco
WS : [ \t\r\n]+ -> skip ;
LINE_COMMENT : '//' ~[\r\n]* -> skip ;
BLOCK_COMMENT : '/*' .*? '*/' -> skip ;
