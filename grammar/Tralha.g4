// Gramática da linguagem Tralha
// Linguagem de programação orientada a objetos com palavras-chave em português
//
// Convenções ANTLR4 adotadas:
//   - Regras do parser : camelCase          ex: program, classDeclaration, expression
//   - Tokens do lexer  : UPPER_SNAKE_CASE   ex: INT, FLOAT, STRING
//   - Fragmentos       : UPPER_SNAKE_CASE   ex: DIGIT, LETTER

grammar Tralha;

// ============================================================
// PARSER — regras sintáticas (camelCase)
// ============================================================

// ------------------------------------------------------------
// Ponto de entrada
// ------------------------------------------------------------

/// program :
///     ( importDeclaration | classDeclaration | statement )* EOF
program
    : (importDeclaration | classDeclaration | statement)* EOF
    ;

// ------------------------------------------------------------
// Importações
// ------------------------------------------------------------

/// importDeclaration :
///     IMPORT qualifiedName SEMI?
importDeclaration
    : IMPORT qualifiedName SEMI?
    ;

/// qualifiedName :
///     ID ( DOT ID )*
qualifiedName
    : ID (DOT ID)*
    ;

// ------------------------------------------------------------
// Declaração de Classe
// ------------------------------------------------------------

/// classDeclaration :
///     modifier* CLASS ID extendsClause? implementsClause? LBRACE memberDeclaration* RBRACE
classDeclaration
    : modifier* CLASS ID extendsClause? implementsClause? LBRACE memberDeclaration* RBRACE
    ;

/// extendsClause :
///     EXTENDS ID      (herança — equivale a extends)
extendsClause
    : EXTENDS ID
    ;

/// implementsClause :
///     IMPLEMENTS ID (COMMA ID)*   (equivale a implements)
implementsClause
    : IMPLEMENTS ID (COMMA ID)*
    ;

/// memberDeclaration :
///     modifier* ( methodDeclaration | fieldDeclaration | constructorDeclaration )
memberDeclaration
    : modifier* (methodDeclaration | fieldDeclaration | constructorDeclaration)
    ;

/// fieldDeclaration :
///     type ID (ASSIGN expression)? SEMI?
fieldDeclaration
    : type ID (ASSIGN expression)? SEMI?
    ;

/// methodDeclaration :
///     type? ID LPAREN parameterList? RPAREN (block | SEMI?)
methodDeclaration
    : type? ID LPAREN parameterList? RPAREN (block | SEMI?)
    ;

/// constructorDeclaration :
///     ID LPAREN parameterList? RPAREN block
constructorDeclaration
    : ID LPAREN parameterList? RPAREN block
    ;

// ------------------------------------------------------------
// Modificadores
// ------------------------------------------------------------

/// modifier : PUBLIC | PRIVATE | PROTECTED | STATIC | FINAL | CONST | ABSTRACT | OVERRIDE
modifier
    : PUBLIC      // todo
    | PRIVATE     // sou
    | PROTECTED   // nepotismo
    | STATIC      // baiano
    | FINAL       // teimoso
    | CONST       // cravado
    | ABSTRACT    // politico
    | OVERRIDE    // override
    ;

// ------------------------------------------------------------
// Parâmetros
// ------------------------------------------------------------

/// parameterList :
///     parameter (COMMA parameter)*
parameterList
    : parameter (COMMA parameter)*
    ;

/// parameter :
///     type ID
parameter
    : type ID
    ;

// ------------------------------------------------------------
// Bloco e Comandos
// ------------------------------------------------------------

/// block :
///     LBRACE statement* RBRACE
block
    : LBRACE statement* RBRACE
    ;

/// statement :
///     variableDeclaration SEMI?        declaração de variável local
///     assignment SEMI?                 atribuição
///     methodCall SEMI?                 chamada de método como comando
///     ifStatement                      if / else if / else
///     switchStatement                  switch / case / default
///     whileStatement                   while
///     doWhileStatement                 do-while
///     forStatement                     for clássico
///     forEachStatement                 for-each
///     tryStatement                     try / catch / finally
///     printStatement SEMI?             saída (whatsapp)
///     BREAK / CONTINUE / RETURN / THROW
///     block                            bloco aninhado
statement
    : variableDeclaration SEMI?
    | assignment SEMI?
    | methodCall SEMI?
    | ifStatement
    | switchStatement
    | whileStatement
    | doWhileStatement
    | forStatement
    | forEachStatement
    | tryStatement
    | printStatement SEMI?
    | BREAK SEMI?              // chega
    | CONTINUE SEMI?           // pula
    | RETURN expression? SEMI  // manda
    | THROW expression SEMI?   // taca
    | block
    ;

// ------------------------------------------------------------
// Declaração e Atribuição
// ------------------------------------------------------------

/// variableDeclaration :
///     type ID (ASSIGN expression)?
variableDeclaration
    : type ID (ASSIGN expression)?
    ;

/// assignment :
///     assignable ASSIGN expression
///     assignable (INC | DEC)
///     (INC | DEC) assignable
assignment
    : assignable ASSIGN expression
    | assignable (INC | DEC)
    | (INC | DEC) assignable
    ;

/// assignable :
///     ID | memberAccess | THIS DOT ID
assignable
    : ID
    | memberAccess
    | THIS DOT ID
    ;

// ------------------------------------------------------------
// Acesso a membros e Chamada de método
// ------------------------------------------------------------

/// memberAccess :
///     (ID | THIS | NULL_REF) (DOT ID | LBRACK expression RBRACK)+
memberAccess
    : (ID | THIS | NULL_REF) (DOT ID | LBRACK expression RBRACK)+
    ;

/// methodCall :
///     (ID | memberAccess | THIS | NULL_REF) LPAREN argumentList? RPAREN
methodCall
    : (ID | memberAccess | THIS | NULL_REF) LPAREN argumentList? RPAREN
    ;

/// argumentList :
///     expression (COMMA expression)*
argumentList
    : expression (COMMA expression)*
    ;

// ------------------------------------------------------------
// Estruturas de Controle
// ------------------------------------------------------------

/// ifStatement :
///     IF LPAREN expression RPAREN statement
///     (ELSE IF LPAREN expression RPAREN statement)*
///     (ELSE statement)?
ifStatement
    : IF LPAREN expression RPAREN statement
      (ELSE IF LPAREN expression RPAREN statement)*
      (ELSE statement)?
    ;

/// switchStatement :
///     SWITCH LPAREN expression RPAREN LBRACE switchCase* defaultCase? RBRACE
switchStatement
    : SWITCH LPAREN expression RPAREN LBRACE switchCase* defaultCase? RBRACE
    ;

/// switchCase :
///     CASE expression COLON statement*
switchCase
    : CASE expression COLON statement*
    ;

/// defaultCase :
///     DEFAULT COLON statement*
defaultCase
    : DEFAULT COLON statement*
    ;

/// whileStatement :
///     WHILE LPAREN expression RPAREN statement
whileStatement
    : WHILE LPAREN expression RPAREN statement
    ;

/// doWhileStatement :
///     DO block WHILE LPAREN expression RPAREN SEMI?
doWhileStatement
    : DO block WHILE LPAREN expression RPAREN SEMI?
    ;

/// forStatement :
///     FOR LPAREN variableDeclaration? SEMI expression? SEMI assignment? RPAREN statement
forStatement
    : FOR LPAREN variableDeclaration? SEMI expression? SEMI assignment? RPAREN statement
    ;

/// forEachStatement :
///     FOR LPAREN type ID IN expression RPAREN statement
forEachStatement
    : FOR LPAREN type ID IN expression RPAREN statement
    ;

/// tryStatement :
///     TRY block CATCH LPAREN type ID RPAREN block (FINALLY block)?
tryStatement
    : TRY block CATCH LPAREN type ID RPAREN block (FINALLY block)?
    ;

/// printStatement :
///     PRINT LPAREN expression RPAREN
printStatement
    : PRINT LPAREN expression RPAREN
    ;

// ------------------------------------------------------------
// Expressões
// (cada nível de precedência é uma alternativa — do menor para o maior)
// ANTLR4 resolve a recursão à esquerda e a precedência automaticamente.
// ------------------------------------------------------------

/// expression :
///     Nível 1 (menor precedência) → ou lógico
///     Nível 2                     → e lógico
///     Nível 3                     → igualdade
///     Nível 4                     → relacional
///     Nível 5                     → adição / subtração
///     Nível 6                     → multiplicação / divisão / módulo
///     Nível 7                     → operadores unários
///     Nível 8                     → acesso a array
///     Nível 9                     → acesso a membro
///     Nível 10                    → chamada de função/método
///     Nível 11 (maior)            → valor primário
expression
    : expression OR expression                           // ou lógico
    | expression AND expression                          // e lógico
    | expression (EQ | NEQ) expression                   // igualdade
    | expression (LT | LE | GT | GE) expression          // relacional
    | expression (PLUS | MINUS) expression               // adição
    | expression (STAR | SLASH | PERCENT) expression     // multiplicação
    | (PLUS | MINUS | NOT) expression                    // unário
    | expression LBRACK expression RBRACK                // índice de array
    | expression DOT ID                                  // acesso a membro
    | expression LPAREN argumentList? RPAREN             // chamada
    | atom                                               // valor primário
    ;

/// atom :
///     unidade mínima de uma expressão
///     literal | variável | THIS | NULL_REF | NEW | array | ( expr )
atom
    : literal
    | ID
    | THIS                                      // nessaBomba
    | NULL_REF                                  // deuErro
    | NEW ID LPAREN argumentList? RPAREN        // meteUm Objeto(args)
    | arrayLiteral
    | LPAREN expression RPAREN
    ;

/// arrayLiteral :
///     LBRACK argumentList? RBRACK
arrayLiteral
    : LBRACK argumentList? RBRACK
    ;

// ------------------------------------------------------------
// Literais
// ------------------------------------------------------------

/// literal :
///     número | texto | caractere | booleano | null
literal
    : INT
    | FLOAT
    | DOUBLE
    | STRING
    | CHAR
    | TRUE    // confia
    | FALSE   // fakeNews
    | NULL    // oco
    ;

// ------------------------------------------------------------
// Tipos
// ------------------------------------------------------------

/// type :
///     baseType (LBRACK RBRACK)*      suporte a arrays: int[], String[][], etc.
type
    : baseType (LBRACK RBRACK)*
    ;

/// baseType :
///     tipos primitivos | void | var | nome de classe (ID)
baseType
    : INT_TYPE      // naoFracionado
    | FLOAT_TYPE    // fracionado
    | DOUBLE_TYPE   // fracionadao
    | CHAR_TYPE     // letrinha
    | BOOL_TYPE     // bipolar
    | STRING_TYPE   // testao
    | VOID_TYPE     // rouba
    | VAR_TYPE      // mutante
    | DYNAMIC_TYPE  // adivinha
    | ID            // nome de classe definida pelo usuário
    ;

// ============================================================
// LEXER — tokens (UPPER_SNAKE_CASE)
// Nome = conceito real em inglês | Valor = palavra da linguagem Tralha
// ============================================================

// ------------------------------------------------------------
// Palavras-chave da linguagem
// ------------------------------------------------------------
IMPORT      : 'trazPraca'       ;   // import
CLASS       : 'TREM'            ;   // class
EXTENDS     : 'mamata'          ;   // extends
IMPLEMENTS  : 'bota'            ;   // implements
ASSIGN      : 'receba'          ;   // = (atribuição)
PUBLIC      : 'todo'            ;   // public
PRIVATE     : 'sou'             ;   // private
PROTECTED   : 'nepotismo'       ;   // protected
STATIC      : 'baiano'          ;   // static
FINAL       : 'teimoso'         ;   // final
CONST       : 'cravado'         ;   // const
ABSTRACT    : 'politico'        ;   // abstract
OVERRIDE    : 'override'        ;   // @Override
BREAK       : 'chega'           ;   // break
CONTINUE    : 'pula'            ;   // continue
RETURN      : 'manda'           ;   // return
THROW       : 'taca'            ;   // throw
THIS        : 'nessaBomba'      ;   // this
NULL_REF    : 'deuErro'         ;   // null (referência de objeto)
IF          : 'sePa'            ;   // if
ELSE        : 'ouSeDeusQuiser'  ;   // else / else if
SWITCH      : 'dependendo'      ;   // switch
CASE        : 'nesseCaso'       ;   // case
DEFAULT     : 'naDuvida'        ;   // default
WHILE       : 'ateDarCerto'     ;   // while
DO          : 'vaiNaFe'         ;   // do
FOR         : 'vaiVolta'        ;   // for
IN          : 'laEle'           ;   // : (for-each)
TRY         : 'gambiarra'       ;   // try
CATCH       : 'deuPau'          ;   // catch
FINALLY     : 'fitaIsolante'    ;   // finally
PRINT       : 'whatsapp'        ;   // System.out.println
NEW         : 'meteUm'          ;   // new
TRUE        : 'confia'          ;   // true
FALSE       : 'fakeNews'        ;   // false
NULL        : 'oco'             ;   // null (literal)
INT_TYPE    : 'naoFracionado'   ;   // int
FLOAT_TYPE  : 'fracionado'      ;   // float
DOUBLE_TYPE : 'fracionadao'     ;   // double
CHAR_TYPE   : 'letrinha'        ;   // char
BOOL_TYPE   : 'bipolar'         ;   // boolean
STRING_TYPE : 'testao'          ;   // String
VOID_TYPE   : 'rouba'           ;   // void
VAR_TYPE    : 'mutante'         ;   // var  (tipo inferido)
DYNAMIC_TYPE: 'adivinha'        ;   // dynamic / Object

// ------------------------------------------------------------
// Operadores
// ------------------------------------------------------------
OR      : '||'  ;
AND     : '&&'  ;
EQ      : '=='  ;
NEQ     : '!='  ;
LE      : '<='  ;
GE      : '>='  ;
LT      : '<'   ;
GT      : '>'   ;
INC     : '++'  ;
DEC     : '--'  ;
PLUS    : '+'   ;
MINUS   : '-'   ;
STAR    : '*'   ;
SLASH   : '/'   ;
PERCENT : '%'   ;
NOT     : '!'   ;

// ------------------------------------------------------------
// Pontuação
// ------------------------------------------------------------
SEMI    : ';'   ;
COMMA   : ','   ;
DOT     : '.'   ;
COLON   : ':'   ;
LPAREN  : '('   ;
RPAREN  : ')'   ;
LBRACE  : '{'   ;
RBRACE  : '}'   ;
LBRACK  : '['   ;
RBRACK  : ']'   ;

// ------------------------------------------------------------
// Literais numéricos
// (declarados do mais específico para o mais genérico)
// ------------------------------------------------------------
FLOAT  : DIGIT+ ('.' DIGIT+)? 'f' ;   // ex: 3.14f
DOUBLE : DIGIT+ '.' DIGIT+         ;   // ex: 3.14
INT    : DIGIT+                     ;   // ex: 42

// ------------------------------------------------------------
// Literais de texto
// ------------------------------------------------------------
STRING : '"'  (~["\\\r\n] | '\\' .)* '"'  ;  // ex: "ola mundo"
CHAR   : '\'' (~['\\\r\n] | '\\' .) '\''  ;  // ex: 'a'

// ------------------------------------------------------------
// Identificadores
// ------------------------------------------------------------
ID : LETTER (LETTER | DIGIT | '_')* ;

// ------------------------------------------------------------
// Espaços em branco e comentários (descartados)
// ------------------------------------------------------------
BLOCK_COMMENT : '/*' .*? '*/'  -> skip ;  // /* ... */
LINE_COMMENT  : '//' ~[\r\n]*  -> skip ;  // // ...
WS            : [ \t\r\n]+     -> skip ;

// ------------------------------------------------------------
// Fragmentos (blocos reutilizáveis — não geram tokens)
// ------------------------------------------------------------
fragment DIGIT  : [0-9]          ;
fragment LETTER : [a-zA-Z_]      ;
