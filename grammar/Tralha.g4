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
///     trazPraca qualifiedName ;?
importDeclaration
    : 'trazPraca' qualifiedName ';'?
    ;

/// qualifiedName :
///     ID ( . ID )*
qualifiedName
    : ID ('.' ID)*
    ;

// ------------------------------------------------------------
// Declaração de Classe
// ------------------------------------------------------------

/// classDeclaration :
///     modifier* TREM ClassName extendsClause? implementsClause? { memberDeclaration* }
classDeclaration
    : modifier* 'TREM' ID extendsClause? implementsClause? '{' memberDeclaration* '}'
    ;

/// extendsClause :
///     mamata ClassName      (herança — equivale a extends)
extendsClause
    : 'mamata' ID
    ;

/// implementsClause :
///     bota Interface (, Interface)*   (equivale a implements)
implementsClause
    : 'bota' ID (',' ID)*
    ;

/// memberDeclaration :
///     modifier* ( methodDeclaration | fieldDeclaration | constructorDeclaration )
memberDeclaration
    : modifier* (methodDeclaration | fieldDeclaration | constructorDeclaration)
    ;

/// fieldDeclaration :
///     type name receba value? ;?
fieldDeclaration
    : type ID ('receba' expression)? ';'?
    ;

/// methodDeclaration :
///     type? name ( params? ) block       (método concreto)
///     type? name ( params? ) ;           (método abstrato)
methodDeclaration
    : type? ID '(' parameterList? ')' (block | ';'?)
    ;

/// constructorDeclaration :
///     ClassName ( params? ) block
constructorDeclaration
    : ID '(' parameterList? ')' block
    ;

// ------------------------------------------------------------
// Modificadores
// ------------------------------------------------------------

/// modifier : todo | sou | nepotismo | baiano | teimoso | cravado | politico | override
modifier
    : 'todo'        // public
    | 'sou'         // private
    | 'nepotismo'   // protected
    | 'baiano'      // static
    | 'teimoso'     // final
    | 'cravado'     // const
    | 'politico'    // abstract
    | 'override'    // @Override
    ;

// ------------------------------------------------------------
// Parâmetros
// ------------------------------------------------------------

/// parameterList :
///     parameter (, parameter)*
parameterList
    : parameter (',' parameter)*
    ;

/// parameter :
///     type name
parameter
    : type ID
    ;

// ------------------------------------------------------------
// Bloco e Comandos
// ------------------------------------------------------------

/// block :
///     { statement* }
block
    : '{' statement* '}'
    ;

/// statement :
///     variableDeclaration                  declaração de variável local
///     assignment                           atribuição
///     methodCall                           chamada de método como comando
///     ifStatement                          if / else if / else
///     switchStatement                      switch / case / default
///     whileStatement                       while
///     doWhileStatement                     do-while
///     forStatement                         for clássico
///     forEachStatement                     for-each
///     tryStatement                         try / catch / finally
///     printStatement                       saída (whatsapp)
///     break / continue / return / throw
///     block                                bloco aninhado
statement
    : variableDeclaration ';'?
    | assignment ';'?
    | methodCall ';'?
    | ifStatement
    | switchStatement
    | whileStatement
    | doWhileStatement
    | forStatement
    | forEachStatement
    | tryStatement
    | printStatement ';'?
    | 'chega' ';'?            // break
    | 'pula' ';'?             // continue
    | 'manda' expression? ';' // return
    | 'taca' expression ';'?  // throw
    | block
    ;

// ------------------------------------------------------------
// Declaração e Atribuição
// ------------------------------------------------------------

/// variableDeclaration :
///     type name ( receba expression )?
variableDeclaration
    : type ID ('receba' expression)?
    ;

/// assignment :
///     assignable receba expression
///     assignable ++  |  assignable --
///     ++ assignable  |  -- assignable
assignment
    : assignable 'receba' expression
    | assignable ('++' | '--')
    | ('++' | '--') assignable
    ;

/// assignable :
///     variável simples | acesso encadeado | this.campo
///     (lado esquerdo de uma atribuição)
assignable
    : ID
    | memberAccess
    | 'nessaBomba' '.' ID
    ;

// ------------------------------------------------------------
// Acesso a membros e Chamada de método
// ------------------------------------------------------------

/// memberAccess :
///     target ( .campo | [indice] )+      (acesso encadeado)
memberAccess
    : (ID | 'nessaBomba' | 'deuErro') ('.' ID | '[' expression ']')+
    ;

/// methodCall :
///     target ( args? )
methodCall
    : (ID | memberAccess | 'nessaBomba' | 'deuErro') '(' argumentList? ')'
    ;

/// argumentList :
///     expression (, expression)*
argumentList
    : expression (',' expression)*
    ;

// ------------------------------------------------------------
// Estruturas de Controle
// ------------------------------------------------------------

/// ifStatement :
///     sePa ( cond ) stmt
///     ( ouSeDeusQuiser sePa ( cond ) stmt )*
///     ( ouSeDeusQuiser stmt )?
ifStatement
    : 'sePa' '(' expression ')' statement
      ('ouSeDeusQuiser' 'sePa' '(' expression ')' statement)*
      ('ouSeDeusQuiser' statement)?
    ;

/// switchStatement :
///     dependendo ( expr ) { switchCase* defaultCase? }
switchStatement
    : 'dependendo' '(' expression ')' '{' switchCase* defaultCase? '}'
    ;

/// switchCase :
///     nesseCaso value : statement*
switchCase
    : 'nesseCaso' expression ':' statement*
    ;

/// defaultCase :
///     naDuvida : statement*
defaultCase
    : 'naDuvida' ':' statement*
    ;

/// whileStatement :
///     ateDarCerto ( cond ) stmt
whileStatement
    : 'ateDarCerto' '(' expression ')' statement
    ;

/// doWhileStatement :
///     vaiNaFe block ateDarCerto ( cond ) ;?
doWhileStatement
    : 'vaiNaFe' block 'ateDarCerto' '(' expression ')' ';'?
    ;

/// forStatement :
///     vaiVolta ( init? ; cond? ; update? ) stmt
forStatement
    : 'vaiVolta' '(' variableDeclaration? ';' expression? ';' assignment? ')' statement
    ;

/// forEachStatement :
///     vaiVolta ( type name laEle collection ) stmt
forEachStatement
    : 'vaiVolta' '(' type ID 'laEle' expression ')' statement
    ;

/// tryStatement :
///     gambiarra block deuPau ( type name ) block ( fitaIsolante block )?
tryStatement
    : 'gambiarra' block 'deuPau' '(' type ID ')' block ('fitaIsolante' block)?
    ;

/// printStatement :
///     whatsapp ( expr )       (equivalente a System.out.println)
printStatement
    : 'whatsapp' '(' expression ')'
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
    : expression '||' expression                        // ou lógico
    | expression '&&' expression                        // e lógico
    | expression ('==' | '!=') expression               // igualdade
    | expression ('<' | '<=' | '>' | '>=') expression   // relacional
    | expression ('+' | '-') expression                 // adição
    | expression ('*' | '/' | '%') expression           // multiplicação
    | ('+' | '-' | '!') expression                      // unário
    | expression '[' expression ']'                     // índice de array
    | expression '.' ID                                 // acesso a membro
    | expression '(' argumentList? ')'                  // chamada
    | atom                                              // valor primário
    ;

/// atom :
///     unidade mínima de uma expressão
///     literal | variável | this | null | new | array | ( expr )
atom
    : literal
    | ID
    | 'nessaBomba'                              // this
    | 'deuErro'                                 // null
    | 'meteUm' ID '(' argumentList? ')'         // new Objeto(args)
    | arrayLiteral
    | '(' expression ')'
    ;

/// arrayLiteral :
///     [ argumentList? ]
arrayLiteral
    : '[' argumentList? ']'
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
    | 'confia'      // true
    | 'fakeNews'    // false
    | 'oco'         // null
    ;

// ------------------------------------------------------------
// Tipos
// ------------------------------------------------------------

/// type :
///     baseType ( [] )*      suporte a arrays: int[], String[][], etc.
type
    : baseType ('[' ']')*
    ;

/// baseType :
///     tipos primitivos | void | var | nome de classe (ID)
baseType
    : 'naoFracionado'   // int
    | 'fracionado'      // float
    | 'fracionadao'     // double
    | 'letrinha'        // char
    | 'bipolar'         // boolean
    | 'testao'          // String
    | 'rouba'           // void
    | 'mutante'         // var  (tipo inferido)
    | 'adivinha'        // dynamic / Object
    | ID                // nome de classe definida pelo usuário
    ;

// ============================================================
// LEXER — tokens (UPPER_SNAKE_CASE)
// ============================================================

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
