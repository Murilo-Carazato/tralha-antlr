import 'package:antlr4/antlr4.dart';
import '../lib/src/generated/grammar/TralhaLexer.dart';
import '../lib/src/generated/grammar/TralhaParser.dart';
import '../lib/src/visitor/tralha_visitor.dart';

void main() async {
  const inputCode = r'''
trazPraca br.cafe.Sobrevivencia

// -- INTERFACE (alvo do bota) --
todo politico TREM Convocavel {
    todo politico rouba aparecer()
    todo politico bipolar vaiBater()
}

// -- CLASSE ABSTRATA (alvo do mamata) --
todo politico TREM Brasileiro {
    nepotismo testao nome
    sou baiano naoFracionado total receba 215000000
    todo Brasileiro(testao n) { nessaBomba.nome receba n }
    nepotismo testao getNome() { manda nessaBomba.nome }
    todo politico rouba reagir()
}

// -- CLASSE CONCRETA (herda mamata, cumpre bota) --
todo TREM Cearense mamata Brasileiro bota Convocavel {
    sou bipolar comeuCafe
    sou teimoso testao GRITO receba "Oxe!"
    sou baiano cravado naoFracionado LIMITE receba 9
    sou mutante humor
    sou fracionado ml

    todo Cearense(testao n) {
        deuErro(n)
        nessaBomba.comeuCafe receba fakeNews
        nessaBomba.humor    receba oco
        nessaBomba.ml       receba 0.0f
    }

    override todo rouba reagir()       { whatsapp(getNome() + ": " + GRITO) }
    override todo bipolar vaiBater()   { manda comeuCafe }
    override todo rouba aparecer() {
        sePa (!comeuCafe) { whatsapp("Chegou. Não fale.") }
        ouSeDeusQuiser  { whatsapp("Chegou animado. Dura 10min.") }
    }
    todo rouba beberCafe(fracionado dose) {
        ml receba ml + dose
        sePa (ml >= 200.0f) { comeuCafe receba confia; humor receba "vivo" }
        ouSeDeusQuiser   { humor receba "resistindo" }
    }
}

// -- MAIN --
todo TREM SegundaFeira {
    todo baiano rouba main(testao[] args) {
        naoFracionado tentativas receba 0
        fracionadao   chance     receba 0.99
        letrinha      turno      receba 'S'
        adivinha      situacao   receba "caótica"
        bipolar       vivo       receba fakeNews

        Cearense ze receba meteUm Cearense("Zé Catingueiro")

        dependendo (turno) {
            nesseCaso 'S': whatsapp("Segunda. Modo zumbi."); chega
            nesseCaso 'F': whatsapp("Sexta! Vai embora logo."); chega
            naDuvida:       whatsapp("Dia neutro. Segue.")
        }

        ateDarCerto (!ze.vaiBater() && tentativas < 3) {
            tentativas receba tentativas + 1
            sePa (tentativas >= 2) { ze.beberCafe(200.0f) }
        }

        vaiNaFe { ze.aparecer(); vivo receba confia } ateDarCerto (!vivo)

        testao[] tarefas receba ["standup", "2 reuniões", "trabalho de verdade"]
        vaiVolta (testao t laEle tarefas) {
            sePa (t == "2 reuniões") { whatsapp("Pula reunião."); pula }
            whatsapp("Fazendo: " + t)
        }

        vaiVolta (naoFracionado c receba 1; c <= 5; c++) {
            sePa (c == 4) { whatsapp("Chega de café. Coração em Morse."); chega }
        }

        gambiarra {
            ze.reagir()
            sePa (chance > 0.5) { taca meteUm Exception("Segunda ruim. Claro.") }
        } deuPau (Exception e) {
            whatsapp("Pegou: " + e.mensagem); situacao receba "tragicamente normal"
        } fitaIsolante {
            whatsapp("fitaIsolante. Mais 4 dias iguais.")
        }

        whatsapp("Humor: " + ze.humor + " | Tentativas: " + tentativas)
        whatsapp("Brasileiros sofrendo junto: " + Brasileiro.total)
    }
}
''';

  final input = InputStream.fromString(inputCode);
  final lexer = TralhaLexer(input);
  final tokens = CommonTokenStream(lexer);
  final parser = TralhaParser(tokens);

  final tree = parser.programa();

  final visitor = TralhaVisitor();
  final ast = visitor.visit(tree);

  print(ast);
}
