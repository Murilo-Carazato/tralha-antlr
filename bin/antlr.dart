import 'dart:io';
import 'package:antlr4/antlr4.dart';
import '../lib/src/generated/grammar/TralhaLexer.dart';
import '../lib/src/generated/grammar/TralhaParser.dart';
import '../lib/src/visitor/tralha_visitor.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    print("Erro: Você precisa passar o nome do arquivo texto como argumento!");
    print("Exemplo de uso: dart run bin/antlr.dart codigo_certo.txt");
    return;
  }

  final arquivo = args[0];
  if (!File(arquivo).existsSync()) {
    print("❌ Erro: O arquivo '$arquivo' não foi encontrado na pasta!");
    return;
  }

  print("==================================================");
  print("Analisando o código TRALHA do arquivo: $arquivo");
  print("==================================================\n");

  // 1. Lê o arquivo
  final input = await InputStream.fromPath(arquivo);

  // 2. O Lexer quebra o texto em Tokens
  final lexer = TralhaLexer(input);
  final tokens = CommonTokenStream(lexer);

  // 3. O Parser tenta montar a árvore com os Tokens
  final parser = TralhaParser(tokens);
  
  // Captura a árvore
  final tree = parser.programa();

  // 4. Verifica se o Parser encontrou erros de sintaxe
  if (parser.numberOfSyntaxErrors > 0) {
    print("\nANÁLISE FALHOU: O código contém erros de sintaxe.");
    print("O TRALHA não entendeu o que você escreveu.");
  } else {
    print("\nANÁLISE BEM-SUCEDIDA: O código TRALHA é totalmente válido!\n");
    // print("Imprimindo a Árvore de Sintaxe Abstrata (AST) extraída:\n");
    
    // 5. O Visitor limpa a árvore
    final visitor = TralhaVisitor();
    final ast = visitor.visit(tree);
    // print(ast);
  }
}
