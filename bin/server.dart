import 'dart:convert';
import 'dart:io';
import 'package:antlr4/antlr4.dart';
import 'package:antlr/src/generated/grammar/TralhaLexer.dart';
import 'package:antlr/src/generated/grammar/TralhaParser.dart';

class CustomErrorListener extends BaseErrorListener {
  final List<String> errors = [];

  @override
  void syntaxError(
    Recognizer recognizer,
    Object? offendingSymbol,
    int? line,
    int? charPositionInLine,
    String msg,
    RecognitionException? e,
  ) {
    errors.add('Linha $line:$charPositionInLine -> $msg');
  }
}

Map<String, dynamic> buildTreeData(Tree node, Parser parser) {
  final label = Trees.getNodeText(node, recog: parser);
  final terminal = node is TerminalNode ? node : null;
  final ruleContext = node is ParserRuleContext ? node : null;
  final startToken = terminal?.symbol ?? ruleContext?.start;
  final stopToken = terminal?.symbol ?? ruleContext?.stop;
  final List<Map<String, dynamic>> children = [];
  final count = node.childCount;
  for (int i = 0; i < count; i++) {
    final child = node.getChild(i);
    if (child != null) {
      children.add(buildTreeData(child, parser));
    }
  }
  return {
    'label': label,
    'isTerminal': count == 0,
    if (startToken != null && startToken.startIndex >= 0)
      'startIndex': startToken.startIndex,
    if (stopToken != null && stopToken.stopIndex >= 0)
      'stopIndex': stopToken.stopIndex,
    if (children.isNotEmpty) 'children': children,
  };
}

// ----------------------------------------------------
// Analisador Bottom-Up para a API
// ----------------------------------------------------
enum TokenType { ID, NUM, ASSIGN, SEMI, PLUS, STAR, LPAREN, RPAREN, EOF, UNKNOWN }

class TokenSLR {
  final TokenType type;
  final String value;
  TokenSLR(this.type, this.value);
}

List<TokenSLR> lexerSLR(String input) {
  List<TokenSLR> tokens = [];
  int i = 0;
  while (i < input.length) {
    if (input[i].trim().isEmpty) {
      i++;
      continue;
    }
    if (input.startsWith('receba', i)) { tokens.add(TokenSLR(TokenType.ASSIGN, 'receba')); i += 6; }
    else if (input[i] == ';') { tokens.add(TokenSLR(TokenType.SEMI, ';')); i++; }
    else if (input[i] == '+') { tokens.add(TokenSLR(TokenType.PLUS, '+')); i++; }
    else if (input[i] == '*') { tokens.add(TokenSLR(TokenType.STAR, '*')); i++; }
    else if (input[i] == '(') { tokens.add(TokenSLR(TokenType.LPAREN, '(')); i++; }
    else if (input[i] == ')') { tokens.add(TokenSLR(TokenType.RPAREN, ')')); i++; }
    else if (RegExp(r'[a-zA-Z_]').hasMatch(input[i])) {
      String id = '';
      while (i < input.length && RegExp(r'[a-zA-Z0-9_]').hasMatch(input[i])) {
        id += input[i];
        i++;
      }
      if (id == 'receba') {
        tokens.add(TokenSLR(TokenType.ASSIGN, 'receba'));
      } else {
        tokens.add(TokenSLR(TokenType.ID, id));
      }
    }
    else if (RegExp(r'[0-9]').hasMatch(input[i])) {
      String num = '';
      while (i < input.length && RegExp(r'[0-9]').hasMatch(input[i])) {
        num += input[i];
        i++;
      }
      tokens.add(TokenSLR(TokenType.NUM, num));
    } else {
      tokens.add(TokenSLR(TokenType.UNKNOWN, input[i]));
      i++;
    }
  }
  tokens.add(TokenSLR(TokenType.EOF, '\$'));
  return tokens;
}

class Rule {
  final String lhs;
  final int rhsLength;
  Rule(this.lhs, this.rhsLength);
}

final List<Rule> rules = [
  Rule('S_prime', 1), Rule('S', 1), Rule('lista', 2), Rule('lista', 1),
  Rule('comando', 4), Rule('expr', 3), Rule('expr', 1), Rule('termo', 3),
  Rule('termo', 1), Rule('fator', 3), Rule('fator', 1), Rule('fator', 1),
];

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

Map<String, dynamic> runBottomUp(String code) {
  final tokens = lexerSLR(code);
  List<Map<String, dynamic>> steps = [];
  List<int> stateStack = [0];
  List<String> symbolStack = [];
  int cursor = 0;

  while (true) {
    int state = stateStack.last;
    TokenSLR token = tokens[cursor];
    String action = actionTable[state]?[token.type] ?? 'erro';

    steps.add({
      'stateStack': stateStack.join(' '),
      'symbolStack': symbolStack.join(' '),
      'token': token.type.toString().split('.').last,
      'tokenVal': token.value,
      'action': action,
    });

    if (action.startsWith('s')) {
      int nextState = int.parse(action.substring(1));
      stateStack.add(nextState);
      symbolStack.add(token.type.toString().split('.').last);
      cursor++;
    } else if (action.startsWith('r')) {
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
        return {
          'success': false,
          'error': 'Erro de transição GOTO após a regra $ruleIndex.',
          'steps': steps,
        };
      }
      stateStack.add(nextState);
    } else if (action == 'acc') {
      return {
        'success': true,
        'message': 'Entrada válida aceita pelo autômato SLR(1)!',
        'steps': steps,
      };
    } else {
      return {
        'success': false,
        'error': "Erro Sintático! Token inesperado '${token.value}' no estado $state.",
        'steps': steps,
      };
    }
  }
}

void main() async {
  final port = 8080;
  HttpServer server;
  try {
    server = await HttpServer.bind(InternetAddress.anyIPv4, port);
  } on SocketException catch (_) {
    print('==================================================================');
    print('O SERVIDOR JÁ ESTÁ ATIVO E RODANDO NA PORTA $port!');
    print('Basta abrir o navegador e acessar: http://localhost:$port');
    print('==================================================================');
    return;
  }
  print('==================================================================');
  print('DASHBOARD DO COMPILADOR TRALHA');
  print('Acesse no seu navegador: http://localhost:$port');
  print('==================================================================');

  await for (HttpRequest request in server) {
    // CORS headers
    request.response.headers.add('Access-Control-Allow-Origin', '*');
    request.response.headers.add('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    request.response.headers.add('Access-Control-Allow-Headers', 'Content-Type');

    if (request.method == 'OPTIONS') {
      request.response.statusCode = HttpStatus.ok;
      await request.response.close();
      continue;
    }

    final path = request.uri.path;

    if (path == '/' || path == '/index.html') {
      final file = File('web/index.html');
      if (await file.exists()) {
        request.response.headers.contentType = ContentType.html;
        await file.openRead().pipe(request.response);
      } else {
        request.response.statusCode = HttpStatus.notFound;
        request.response.write('web/index.html não encontrado');
        await request.response.close();
      }
    } else if (path == '/mermaid.min.js') {
      final file = File('web/mermaid.min.js');
      if (await file.exists()) {
        request.response.headers.contentType = ContentType('application', 'javascript', charset: 'utf-8');
        await file.openRead().pipe(request.response);
      } else {
        request.response.statusCode = HttpStatus.notFound;
        await request.response.close();
      }
    } else if (path == '/api/analyze' && request.method == 'POST') {
      try {
        final bodyStr = await utf8.decoder.bind(request).join();
        final jsonBody = jsonDecode(bodyStr);
        final code = jsonBody['code'] as String? ?? '';

        final input = InputStream.fromString(code);

        // 1. Lexer
        final lexErrorListener = CustomErrorListener();
        final lexer = TralhaLexer(input);
        lexer.removeErrorListeners();
        lexer.addErrorListener(lexErrorListener);

        final tokens = CommonTokenStream(lexer);
        tokens.fill();

        List<Map<String, dynamic>> tokenList = [];
        for (final t in tokens.tokens) {
          if (t.type == Token.EOF) continue;
          final tokenName = TralhaLexer.VOCABULARY.getSymbolicName(t.type) ?? 'DESCONHECIDO';
          tokenList.add({
            'line': t.line,
            'col': t.charPositionInLine,
            'name': tokenName,
            'lexeme': t.text,
          });
        }

        // 2. Parser
        tokens.seek(0);
        final parser = TralhaParser(tokens);
        final parseErrorListener = CustomErrorListener();
        parser.removeErrorListeners();
        parser.addErrorListener(parseErrorListener);

        final tree = parser.program();

        final treeData = buildTreeData(tree, parser);

        final responseJson = {
          'lexical': {
            'success': lexErrorListener.errors.isEmpty,
            'errors': lexErrorListener.errors,
            'tokens': tokenList,
          },
          'syntax': {
            'success': parseErrorListener.errors.isEmpty,
            'errors': parseErrorListener.errors,
            'tree': treeData,
            'treeLisp': tree.toStringTree(parser: parser),
          }
        };

        request.response.headers.contentType = ContentType.json;
        request.response.write(jsonEncode(responseJson));
        await request.response.close();
      } catch (e, stack) {
        request.response.statusCode = HttpStatus.internalServerError;
        request.response.headers.contentType = ContentType.json;
        request.response.write(jsonEncode({'error': e.toString(), 'stack': stack.toString()}));
        await request.response.close();
      }
    } else if (path == '/api/bottomup' && request.method == 'POST') {
      try {
        final bodyStr = await utf8.decoder.bind(request).join();
        final jsonBody = jsonDecode(bodyStr);
        final code = jsonBody['code'] as String? ?? '';

        final result = runBottomUp(code);
        request.response.headers.contentType = ContentType.json;
        request.response.write(jsonEncode(result));
        await request.response.close();
      } catch (e) {
        request.response.statusCode = HttpStatus.internalServerError;
        request.response.headers.contentType = ContentType.json;
        request.response.write(jsonEncode({'error': e.toString()}));
        await request.response.close();
      }
    } else {
      request.response.statusCode = HttpStatus.notFound;
      request.response.write('404 Not Found');
      await request.response.close();
    }
  }
}
