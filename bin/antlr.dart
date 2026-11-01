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

void main(List<String> args) async {
  if (args.isEmpty) {
    print("Uso: dart run bin/antlr.dart <caminho_do_arquivo>");
    return;
  }

  final arquivo = args[0];
  if (!File(arquivo).existsSync()) {
    print("Erro: O arquivo '$arquivo' não foi encontrado na pasta!");
    return;
  }

  print("==================================================");
  print(" COMPILADOR TRALHA");
  print(" Arquivo analisado: $arquivo");
  print("==================================================\n");

  // 1. Lê o arquivo
  final input = await InputStream.fromPath(arquivo);

  // --------------------------------------------------
  // ETAPA 1: ANÁLISE LÉXICA
  // --------------------------------------------------
  print("--- [1º PASSO: ANÁLISE LÉXICA] ---");
  final lexErrorListener = CustomErrorListener();
  final lexer = TralhaLexer(input);
  lexer.removeErrorListeners();
  lexer.addErrorListener(lexErrorListener);

  final tokens = CommonTokenStream(lexer);
  tokens.fill();

  print("Tabela de Tokens Gerados:");
  print("----------------------------------------------------------------------");
  print(" ${'Posição'.padRight(10)} | ${'Token'.padRight(22)} | Lexema");
  print("----------------------------------------------------------------------");
  for (final t in tokens.tokens) {
    if (t.type == Token.EOF) continue;
    final tokenName = TralhaLexer.VOCABULARY.getSymbolicName(t.type) ?? 'DESCONHECIDO';
    final pos = "${t.line}:${t.charPositionInLine}".padRight(10);
    final tokStr = tokenName.padRight(22);
    final lexema = t.text?.replaceAll("\n", "\\n").replaceAll("\r", "") ?? '';
    print(" $pos | $tokStr | '$lexema'");
  }
  print("----------------------------------------------------------------------");

  if (lexErrorListener.errors.isNotEmpty) {
    print("\nErros Léxicos encontrados:");
    for (final err in lexErrorListener.errors) {
      print("   -> $err");
    }
  } else {
    print("Análise Léxica: Todos os tokens foram reconhecidos com sucesso!\n");
  }

  // --------------------------------------------------
  // ETAPA 2: ANÁLISE SINTÁTICA
  // --------------------------------------------------
  print("--- [2º PASSO: ANÁLISE SINTÁTICA] ---");
  tokens.seek(0);
  final parser = TralhaParser(tokens);
  final parseErrorListener = CustomErrorListener();
  parser.removeErrorListeners();
  parser.addErrorListener(parseErrorListener);

  // Captura a árvore sintática
  final tree = parser.program();

  if (parseErrorListener.errors.isNotEmpty) {
    print("\nANÁLISE SINTÁTICA FALHOU: A entrada foi REJEITADA pela gramática.");
    print("Erros detectados:");
    for (final err in parseErrorListener.errors) {
      print("   -> $err");
    }
  } else {
    print("\nANÁLISE SINTÁTICA BEM-SUCEDIDA: A entrada foi ACEITA pela gramática!");
    print("\nÁrvore de Derivação Sintática (Hierárquica):");
    printAsciiTree(tree, parser);
  }
}

void printAsciiTree(Tree node, Parser parser, [String prefix = '', bool isLast = true]) {
  final label = Trees.getNodeText(node, recog: parser);
  print('$prefix${isLast ? "└── " : "├── "}$label');
  final childPrefix = prefix + (isLast ? "    " : "│   ");
  final count = node.childCount;
  for (int i = 0; i < count; i++) {
    final child = node.getChild(i);
    if (child != null) {
      printAsciiTree(child, parser, childPrefix, i == count - 1);
    }
  }
}
