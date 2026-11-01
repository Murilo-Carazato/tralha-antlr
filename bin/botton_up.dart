import 'dart:io';

// Tokens
enum TokenType { ID, NUM, ASSIGN, SEMI, PLUS, STAR, LPAREN, RPAREN, EOF, UNKNOWN }

class Token {
  final TokenType type;
  final String value;
  Token(this.type, this.value);
  @override
  String toString() => 'Token($type, "$value")';
}

// Analisador Léxico Simples para o parser Bottom-Up
List<Token> lexer(String input) {
  List<Token> tokens = [];
  int i = 0;
  while (i < input.length) {
    if (input[i].trim().isEmpty) {
      i++;
      continue;
    }
    
    if (input.startsWith('receba', i)) { tokens.add(Token(TokenType.ASSIGN, 'receba')); i += 6; }
    else if (input[i] == ';') { tokens.add(Token(TokenType.SEMI, ';')); i++; }
    else if (input[i] == '+') { tokens.add(Token(TokenType.PLUS, '+')); i++; }
    else if (input[i] == '*') { tokens.add(Token(TokenType.STAR, '*')); i++; }
    else if (input[i] == '(') { tokens.add(Token(TokenType.LPAREN, '(')); i++; }
    else if (input[i] == ')') { tokens.add(Token(TokenType.RPAREN, ')')); i++; }
    else if (RegExp(r'[a-zA-Z_]').hasMatch(input[i])) {
      String id = '';
      while (i < input.length && RegExp(r'[a-zA-Z0-9_]').hasMatch(input[i])) {
        id += input[i];
        i++;
      }
      if (id == 'receba') {
        tokens.add(Token(TokenType.ASSIGN, 'receba'));
      } else {
        tokens.add(Token(TokenType.ID, id));
      }
    }
    else if (RegExp(r'[0-9]').hasMatch(input[i])) {
      String num = '';
      while (i < input.length && RegExp(r'[0-9]').hasMatch(input[i])) {
        num += input[i];
        i++;
      }
      tokens.add(Token(TokenType.NUM, num));
    } else {
      tokens.add(Token(TokenType.UNKNOWN, input[i]));
      i++;
    }
  }
  tokens.add(Token(TokenType.EOF, '\$'));
  return tokens;
}

// Gramática adaptada para a linguagem Tralha
// 1. S -> lista
// 2. lista -> lista comando
// 3. lista -> comando
// 4. comando -> ID receba expr ;
// 5. expr -> expr + termo
// 6. expr -> termo
// 7. termo -> termo * fator
// 8. termo -> fator
// 9. fator -> ( expr )
// 10. fator -> NUM
// 11. fator -> ID

class Rule {
  final String lhs;
  final int rhsLength;
  Rule(this.lhs, this.rhsLength);
}

final List<Rule> rules = [
  Rule('S_prime', 1), // 0
  Rule('S', 1),       // 1
  Rule('lista', 2),   // 2
  Rule('lista', 1),   // 3
  Rule('comando', 4), // 4
  Rule('expr', 3),    // 5
  Rule('expr', 1),    // 6
  Rule('termo', 3),   // 7
  Rule('termo', 1),   // 8
  Rule('fator', 3),   // 9
  Rule('fator', 1),   // 10
  Rule('fator', 1),   // 11
];

// Tabela Action e Goto (SLR(1))
final Map<int, Map<TokenType, String>> actionTable = {
  0: { TokenType.ID: 's4' },
  1: { TokenType.EOF: 'acc' },
  2: { TokenType.ID: 's4', TokenType.EOF: 'r1' },
  3: { TokenType.ID: 'r3', TokenType.EOF: 'r3' },
  4: { TokenType.ASSIGN: 's6' },
  5: { TokenType.ID: 'r2', TokenType.EOF: 'r2' },
  6: { TokenType.ID: 's12', TokenType.NUM: 's11', TokenType.LPAREN: 's10' },
  7: { TokenType.SEMI: 's13', TokenType.PLUS: 's14' },
  8: { TokenType.SEMI: 'r6', TokenType.PLUS: 'r6', TokenType.STAR: 's15', TokenType.RPAREN: 'r6' },
  9: { TokenType.SEMI: 'r8', TokenType.PLUS: 'r8', TokenType.STAR: 'r8', TokenType.RPAREN: 'r8' },
  10: { TokenType.ID: 's12', TokenType.NUM: 's11', TokenType.LPAREN: 's10' },
  11: { TokenType.SEMI: 'r10', TokenType.PLUS: 'r10', TokenType.STAR: 'r10', TokenType.RPAREN: 'r10' },
  12: { TokenType.SEMI: 'r11', TokenType.PLUS: 'r11', TokenType.STAR: 'r11', TokenType.RPAREN: 'r11' },
  13: { TokenType.ID: 'r4', TokenType.EOF: 'r4' },
  14: { TokenType.ID: 's12', TokenType.NUM: 's11', TokenType.LPAREN: 's10' },
  15: { TokenType.ID: 's12', TokenType.NUM: 's11', TokenType.LPAREN: 's10' },
  16: { TokenType.RPAREN: 's19', TokenType.PLUS: 's14' },
  17: { TokenType.SEMI: 'r5', TokenType.PLUS: 'r5', TokenType.STAR: 's15', TokenType.RPAREN: 'r5' },
  18: { TokenType.SEMI: 'r7', TokenType.PLUS: 'r7', TokenType.STAR: 'r7', TokenType.RPAREN: 'r7' },
  19: { TokenType.SEMI: 'r9', TokenType.PLUS: 'r9', TokenType.STAR: 'r9', TokenType.RPAREN: 'r9' },
};

final Map<int, Map<String, int>> gotoTable = {
  0: { 'S': 1, 'lista': 2, 'comando': 3 },
  2: { 'comando': 5 },
  6: { 'expr': 7, 'termo': 8, 'fator': 9 },
  10: { 'expr': 16, 'termo': 8, 'fator': 9 },
  14: { 'termo': 17, 'fator': 9 },
  15: { 'fator': 18 },
};

bool parse(List<Token> tokens, {bool passoAPasso = false}) {
  List<int> stateStack = [0];
  List<String> symbolStack = [];
  int cursor = 0;

  print(String.fromCharCodes(List.filled(80, '-'.codeUnitAt(0))));
  print(" ${'Pilha de Estados'.padRight(20)} | ${'Pilha de Símbolos'.padRight(25)} | ${'Token'.padRight(11)} | Ação ");
  print(String.fromCharCodes(List.filled(80, '-'.codeUnitAt(0))));

  while (true) {
    int state = stateStack.last;
    Token token = tokens[cursor];
    
    String stateStr = stateStack.join(' ');
    String symbolStr = symbolStack.join(' ');
    
    String action = actionTable[state]?[token.type] ?? 'erro';
    
    print(" ${stateStr.padRight(20)} | ${symbolStr.padRight(25)} | ${token.type.toString().split('.').last.padRight(11)} | $action");

    if (passoAPasso) {
      stdout.write("Pressione [ENTER] para o próximo passo...");
      stdin.readLineSync();
    }

    if (action.startsWith('s')) {
      // Shift
      int nextState = int.parse(action.substring(1));
      stateStack.add(nextState);
      symbolStack.add(token.type.toString().split('.').last);
      cursor++;
    } else if (action.startsWith('r')) {
      // Reduce
      int ruleIndex = int.parse(action.substring(1));
      Rule rule = rules[ruleIndex];
      
      for (int i = 0; i < rule.rhsLength; i++) {
        stateStack.removeLast();
        symbolStack.removeLast();
      }
      
      int topState = stateStack.last;
      symbolStack.add(rule.lhs);
      
      int? nextState = gotoTable[topState]?[rule.lhs];
      if (nextState == null) {
        print("\nErro de transição GOTO após a redução da regra $ruleIndex.");
        return false;
      }
      stateStack.add(nextState);
    } else if (action == 'acc') {
      print("\nAnálise Sintática Concluída com Sucesso! O código é válido.");
      return true;
    } else {
      print("\nErro Sintático! Token inesperado '${token.value}' no estado $state.");
      return false;
    }
  }
}

void main() {
  print("==================================================");
  print("Analisador Sintático Botton Up Interativo");
  print("==================================================");
  
  while (true) {
    stdout.write("\nDigite uma expressão (ex: a receba 10 + 20 * 3;) ou 'sair':\n> ");
    String? input = stdin.readLineSync();
    
    if (input == null || input.trim().toLowerCase() == 'sair') {
      print("Saindo...");
      break;
    }
    
    if (input.trim().isEmpty) continue;

    stdout.write("Deseja ver a análise passo a passo? (s/n): ");
    String? passo = stdin.readLineSync();
    bool passoAPasso = passo?.toLowerCase() == 's';

    List<Token> tokens = lexer(input);
    print("\nIniciando análise para: $input\n");
    parse(tokens, passoAPasso: passoAPasso);
  }
}
