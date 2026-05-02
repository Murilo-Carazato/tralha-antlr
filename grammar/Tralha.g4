grammar Tralha;

options {
    language = Dart;
}

// ----- PARSER RULES -----
programa : (import_decl | class_decl | comando)* EOF ;

import_decl : 'trazPraca' qualified_id ';'? ;

qualified_id : ID ('.' ID)* ;

class_decl 
    : modificadores? 'TREM' ID (mamata_clause)? (bota_clause)? '{' membro* '}' 
    ;

mamata_clause : 'mamata' ID ;
bota_clause : 'bota' ID (',' ID)* ;

membro
    : modificadores? (metodo_decl | campo_decl | construtor_decl)
    | metodo_decl
    | campo_decl
    | construtor_decl
    ;

campo_decl
    : tipo ID ('receba' expressao)? ';'?
    ;

metodo_decl
    : tipo? ID '(' parametros? ')' (bloco | ';')
    | tipo? ID '(' parametros? ')' // Abstract method without block or semicolon
    ;

construtor_decl
    : ID '(' parametros? ')' bloco
    ;

parametros
    : parametro (',' parametro)*
    ;

parametro
    : tipo ID
    ;

modificadores
    : modificador+
    ;

modificador
    : 'todo'
    | 'sou'
    | 'nepotismo'
    | 'baiano'
    | 'teimoso'
    | 'cravado'
    | 'politico'
    | 'override'
    ;

bloco : '{' comando* '}' ;

comando 
    : declaracao ';'?
    | atribuicao ';'?
    | chamada_metodo ';'?
    | condicional
    | repeticao
    | excessao
    | comando_io ';'?
    | 'chega' ';'?
    | 'pula' ';'?
    | 'manda' expressao? ';'?
    | 'taca' expressao ';'?
    | bloco
    ;

declaracao
    : tipo ID ('receba' expressao)?
    ;

atribuicao
    : lvalue 'receba' expressao
    | lvalue ('++' | '--')
    | ('++' | '--') lvalue
    ;

lvalue
    : ID
    | acesso
    | 'nessaBomba' '.' ID
    ;

acesso
    : (ID | 'nessaBomba' | 'deuErro') ('.' ID | '[' expressao ']')+
    ;

chamada_metodo
    : (ID | acesso | 'nessaBomba' | 'deuErro' | primary) '(' lista_expressoes? ')'
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
    | 'vaiNaFe' bloco 'ateDarCerto' '(' expressao ')' ';'?
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
    : primary
    | expressao '.' ID
    | expressao '[' expressao ']'
    | expressao '(' lista_expressoes? ')'
    | ('+'|'-'|'!') expressao
    | expressao ('*'|'/'|'%') expressao
    | expressao ('+'|'-') expressao
    | expressao ('<'|'<='|'>'|'>=') expressao
    | expressao ('=='|'!=') expressao
    | expressao '&&' expressao
    | expressao '||' expressao
    ;

primary
    : ID
    | 'nessaBomba'
    | 'deuErro'
    | 'meteUm' ID '(' lista_expressoes? ')'
    | array_literal
    | literal
    | '(' expressao ')'
    ;

array_literal
    : '[' lista_expressoes? ']'
    ;

literal
    : STRING_LITERAL
    | INT_LITERAL
    | FLOAT_LITERAL
    | DOUBLE_LITERAL
    | CHAR_LITERAL
    | 'confia'
    | 'fakeNews'
    | 'oco'
    ;

tipo
    : tipo_base ('[' ']')*
    ;

tipo_base
    : 'naoFracionado'
    | 'fracionado'
    | 'fracionadao'
    | 'letrinha'
    | 'bipolar'
    | 'testao'
    | 'rouba'
    | 'mutante'
    | 'adivinha'
    | ID 
    ;

// ----- LEXER RULES -----

// Numeros (Literais)
FLOAT_LITERAL : [0-9]+ ('.' [0-9]+)? 'f' ;
DOUBLE_LITERAL : [0-9]+ ('.' [0-9]+)? ;
INT_LITERAL : [0-9]+ ;

STRING_LITERAL : '"' ~( '"' | '\\' )* '"' ;
CHAR_LITERAL : '\'' . '\'' ;

// Identificadores
ID : [a-zA-Z_][a-zA-Z0-9_]* ;

// Comentarios e espaços em branco
WS : [ \t\r\n]+ -> skip ;
LINE_COMMENT : '//' ~[\r\n]* -> skip ;
BLOCK_COMMENT : '/*' .*? '*/' -> skip ;
