
watch -n 1 "dart run bin/antlr.dart codigo_errado.txt"


# 🚀 Tutorial: Criando o Compilador TRALHA do Zero (ANTLR4 + Dart)

Este é o guia definitivo passo a passo para você replicar toda a esteira do compilador que acabamos de construir, partindo de uma pasta completamente vazia até a execução da Árvore de Sintaxe Abstrata (AST).

---

## 🛠️ Pré-requisitos
Antes de começar, garanta que seu computador possui:
1. **Dart SDK** (Para rodar o projeto e o gerenciador de pacotes `pub`).
2. **Java JRE/JDK** (Necessário para rodar o gerador `.jar` do ANTLR4).

---

## Passo 1: Inicialização do Projeto Dart

Abra o seu terminal na pasta onde deseja criar o projeto e rode os seguintes comandos para gerar a estrutura base e instalar a biblioteca do ANTLR para Dart:

```bash
# 1. Cria um projeto Dart de console vazio
dart create -t console tralha_compiler --force

# 2. Entra na pasta do projeto
cd tralha_compiler

# 3. Adiciona a dependência do runtime do ANTLR4
dart pub add antlr4

# 4. Cria as pastas que vamos precisar
mkdir -p grammar lib/src/generated lib/src/models lib/src/visitor
```

---

## Passo 2: O Contrato da Linguagem (A Gramática)

Agora você precisa definir as regras léxicas e sintáticas da linguagem.
Crie um arquivo chamado **`Tralha.g4`** dentro da pasta `grammar/`. 

*(Você pode copiar o conteúdo exato do arquivo `Tralha.g4` que construímos juntos e colar lá dentro. O essencial é garantir que a opção `language = Dart;` esteja no topo do arquivo).*

---

## Passo 3: Geração do Código (O Motor do ANTLR)

O ANTLR precisa ler o seu arquivo `.g4` e gerar as classes em Dart. Faremos isso baixando a ferramenta oficial em Java:

```bash
# 1. Baixe o executável do ANTLR4 para a raiz do seu projeto
wget https://www.antlr.org/download/antlr-4.13.2-complete.jar -O antlr.jar

# 2. Execute o gerador apontando para o seu arquivo .g4
# Isso vai gerar o Lexer, Parser e os Visitors na pasta lib/src/generated/
java -jar antlr.jar -Dlanguage=Dart grammar/Tralha.g4 -visitor -no-listener -o lib/src/generated
```

> [!NOTE]
> Se você listar a pasta `lib/src/generated/grammar/` agora, verá vários arquivos `.dart` gerados magicamente (Lexer e Parser). **Nunca edite esses arquivos manualmente!** Se a linguagem mudar, edite o `.g4` e rode o comando do Java novamente.

---

## Passo 4: Criando as Regras de Negócio (Modelos e Visitor)

Agora que temos as "engrenagens", precisamos convertê-las para a nossa Árvore de Sintaxe Abstrata. Crie os dois arquivos a seguir:

**1. A Árvore (Modelos)**
Crie o arquivo `lib/src/models/tralha_ast.dart`. Aqui você define as classes de estrutura de dados (ex: `TralhaDeclaracao`, `TralhaCondicional`).

**2. O Tradutor (Visitor)**
Crie o arquivo `lib/src/visitor/tralha_visitor.dart`.
Este arquivo deve **herdar** de `TralhaBaseVisitor<TralhaNode?>` (que foi gerado no Passo 3). Aqui você sobrescreve métodos como `visitDeclaracao` para pegar o que o Parser achou e preencher as suas classes do Passo 4.1.

*(Copie o código desses arquivos que geramos na nossa sessão).*

---

## Passo 5: O Ponto de Entrada (Testando!)

Abra o arquivo principal gerado pelo Dart, que geralmente fica em `bin/tralha_compiler.dart` (ou `bin/antlr.dart` no nosso caso), e construa a "esteira" do compilador:

```dart
import 'package:antlr4/antlr4.dart';
// Importe os arquivos gerados no Passo 3
import '../lib/src/generated/grammar/TralhaLexer.dart';
import '../lib/src/generated/grammar/TralhaParser.dart';
// Importe o seu Visitor criado no Passo 4
import '../lib/src/visitor/tralha_visitor.dart';

void main() async {
  const inputCode = '''
    naoFracionado idade receba 18;
  ''';

  // 1. Converte a string em um fluxo de entrada
  final input = InputStream.fromString(inputCode);

  // 2. O Lexer quebra o texto em "Tokens" (palavras isoladas)
  final lexer = TralhaLexer(input);
  final tokens = CommonTokenStream(lexer);

  // 3. O Parser junta os tokens checando as regras sintáticas
  final parser = TralhaParser(tokens);
  final tree = parser.programa();

  // 4. O Visitor passeia pela árvore extraindo a lógica limpa
  final visitor = TralhaVisitor();
  final ast = visitor.visit(tree);

  print(ast);
}
```

---

## Passo 6: Execução 🎉

Finalmente, no terminal na raiz do projeto, rode:

```bash
dart run
```

Pronto! Se tudo estiver configurado, você verá a sua AST (Árvore de Sintaxe Abstrata) impressa no console, validando que a sua linguagem TRALHA agora é compreendida pelo computador.

===


murilo-carazato@murilo-carazato-IdeaPad-3-15ALC6:~/Documentos/aula/diomara/antlr$ tree
.
├── antlr.jar // Ferramenta (Java) que gera as classes Dart a partir do .g4.
├── bin
│   └── antlr.dart //é o script que rodamos com dart run e ele manda para a biblioteca com o código já gerado, compilar a linhagem tralha
├── grammar
│   └── Tralha.g4 //contratro da linguagem. usamos a sintaxe do ANTLR4 para definir: Lexer(keywords, ex: TREM, sePa, números, strings), Parser(regras da linguagem, ex: como montar uma classe ou um loop)
├── lib
│   ├── antlr.dart //?* innutil
│   └── src
│       ├── generated //gerado pelo ANTLR (jar montou, usando o TRALHA.g4)
│       │   └── grammar
│       │       ├── TralhaBaseVisitor.dart  // Base pronta para criar nosso Visitor customizado.
│       │       ├── TralhaLexer.dart    //converte texto em tokens
│       │       ├── TralhaParser.dart   //pega os tokens dados pelo TralhaLexer.dart, e tenta criar a Árvore de Sintaxe Concreta (CST)
│       │       └── TralhaVisitor.dart  //A Interface que define como navegar na arvore que o TralhaParser.dart fez
│       ├── models
│       │   └── tralha_ast.dart //molde de dados limpo (AST) que usamos o resultado da geração (a Árvore de Sintaxe Concreta do TralhaParser.dar) e transformamos em AST (Abstract Syntax Tree) via tralha_visitor.dart.
│       └── visitor
│           └── tralha_visitor.dart //'tradutor', visitamos a Árvore de Sintaxe Concreta (CST) do TralhaParser.dar e transformamos em AST (Abstract Syntax Tree) usando o modelo do tralha_ast.dart.
├── pubspec.yaml //importa o pacote antlr4