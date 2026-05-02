// Generated from grammar/Tralha.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'TralhaVisitor.dart';
import 'TralhaBaseVisitor.dart';
const int RULE_programa = 0, RULE_import_decl = 1, RULE_qualified_id = 2, 
          RULE_class_decl = 3, RULE_mamata_clause = 4, RULE_bota_clause = 5, 
          RULE_membro = 6, RULE_campo_decl = 7, RULE_metodo_decl = 8, RULE_construtor_decl = 9, 
          RULE_parametros = 10, RULE_parametro = 11, RULE_modificadores = 12, 
          RULE_modificador = 13, RULE_bloco = 14, RULE_comando = 15, RULE_declaracao = 16, 
          RULE_atribuicao = 17, RULE_lvalue = 18, RULE_acesso = 19, RULE_chamada_metodo = 20, 
          RULE_lista_expressoes = 21, RULE_condicional = 22, RULE_caso = 23, 
          RULE_padrao = 24, RULE_repeticao = 25, RULE_excessao = 26, RULE_comando_io = 27, 
          RULE_expressao = 28, RULE_primary = 29, RULE_array_literal = 30, 
          RULE_literal = 31, RULE_tipo = 32, RULE_tipo_base = 33;
class TralhaParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.2', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_T__10 = 11, TOKEN_T__11 = 12, 
                   TOKEN_T__12 = 13, TOKEN_T__13 = 14, TOKEN_T__14 = 15, 
                   TOKEN_T__15 = 16, TOKEN_T__16 = 17, TOKEN_T__17 = 18, 
                   TOKEN_T__18 = 19, TOKEN_T__19 = 20, TOKEN_T__20 = 21, 
                   TOKEN_T__21 = 22, TOKEN_T__22 = 23, TOKEN_T__23 = 24, 
                   TOKEN_T__24 = 25, TOKEN_T__25 = 26, TOKEN_T__26 = 27, 
                   TOKEN_T__27 = 28, TOKEN_T__28 = 29, TOKEN_T__29 = 30, 
                   TOKEN_T__30 = 31, TOKEN_T__31 = 32, TOKEN_T__32 = 33, 
                   TOKEN_T__33 = 34, TOKEN_T__34 = 35, TOKEN_T__35 = 36, 
                   TOKEN_T__36 = 37, TOKEN_T__37 = 38, TOKEN_T__38 = 39, 
                   TOKEN_T__39 = 40, TOKEN_T__40 = 41, TOKEN_T__41 = 42, 
                   TOKEN_T__42 = 43, TOKEN_T__43 = 44, TOKEN_T__44 = 45, 
                   TOKEN_T__45 = 46, TOKEN_T__46 = 47, TOKEN_T__47 = 48, 
                   TOKEN_T__48 = 49, TOKEN_T__49 = 50, TOKEN_T__50 = 51, 
                   TOKEN_T__51 = 52, TOKEN_T__52 = 53, TOKEN_T__53 = 54, 
                   TOKEN_T__54 = 55, TOKEN_T__55 = 56, TOKEN_T__56 = 57, 
                   TOKEN_T__57 = 58, TOKEN_T__58 = 59, TOKEN_T__59 = 60, 
                   TOKEN_T__60 = 61, TOKEN_T__61 = 62, TOKEN_T__62 = 63, 
                   TOKEN_T__63 = 64, TOKEN_T__64 = 65, TOKEN_T__65 = 66, 
                   TOKEN_T__66 = 67, TOKEN_T__67 = 68, TOKEN_T__68 = 69, 
                   TOKEN_T__69 = 70, TOKEN_T__70 = 71, TOKEN_FLOAT_LITERAL = 72, 
                   TOKEN_DOUBLE_LITERAL = 73, TOKEN_INT_LITERAL = 74, TOKEN_STRING_LITERAL = 75, 
                   TOKEN_CHAR_LITERAL = 76, TOKEN_ID = 77, TOKEN_WS = 78, 
                   TOKEN_LINE_COMMENT = 79, TOKEN_BLOCK_COMMENT = 80;

  @override
  final List<String> ruleNames = [
    'programa', 'import_decl', 'qualified_id', 'class_decl', 'mamata_clause', 
    'bota_clause', 'membro', 'campo_decl', 'metodo_decl', 'construtor_decl', 
    'parametros', 'parametro', 'modificadores', 'modificador', 'bloco', 
    'comando', 'declaracao', 'atribuicao', 'lvalue', 'acesso', 'chamada_metodo', 
    'lista_expressoes', 'condicional', 'caso', 'padrao', 'repeticao', 'excessao', 
    'comando_io', 'expressao', 'primary', 'array_literal', 'literal', 'tipo', 
    'tipo_base'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'trazPraca'", "';'", "'.'", "'TREM'", "'{'", "'}'", "'mamata'", 
      "'bota'", "','", "'receba'", "'('", "')'", "'todo'", "'sou'", "'nepotismo'", 
      "'baiano'", "'teimoso'", "'cravado'", "'politico'", "'override'", 
      "'chega'", "'pula'", "'manda'", "'taca'", "'++'", "'--'", "'nessaBomba'", 
      "'deuErro'", "'['", "']'", "'sePa'", "'ouSeDeusQuiser'", "'dependendo'", 
      "'nesseCaso'", "':'", "'naDuvida'", "'ateDarCerto'", "'vaiNaFe'", 
      "'vaiVolta'", "'laEle'", "'gambiarra'", "'deuPau'", "'fitaIsolante'", 
      "'whatsapp'", "'+'", "'-'", "'!'", "'*'", "'/'", "'%'", "'<'", "'<='", 
      "'>'", "'>='", "'=='", "'!='", "'&&'", "'||'", "'meteUm'", "'confia'", 
      "'fakeNews'", "'oco'", "'naoFracionado'", "'fracionado'", "'fracionadao'", 
      "'letrinha'", "'bipolar'", "'testao'", "'rouba'", "'mutante'", "'adivinha'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, "FLOAT_LITERAL", "DOUBLE_LITERAL", 
      "INT_LITERAL", "STRING_LITERAL", "CHAR_LITERAL", "ID", "WS", "LINE_COMMENT", 
      "BLOCK_COMMENT"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'Tralha.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  TralhaParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ProgramaContext programa() {
    dynamic _localctx = ProgramaContext(context, state);
    enterRule(_localctx, 0, RULE_programa);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 73;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & -576439987210295246) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & 16383) != 0)) {
        state = 71;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__0:
          state = 68;
          import_decl();
          break;
        case TOKEN_T__3:
        case TOKEN_T__12:
        case TOKEN_T__13:
        case TOKEN_T__14:
        case TOKEN_T__15:
        case TOKEN_T__16:
        case TOKEN_T__17:
        case TOKEN_T__18:
        case TOKEN_T__19:
          state = 69;
          class_decl();
          break;
        case TOKEN_T__4:
        case TOKEN_T__10:
        case TOKEN_T__20:
        case TOKEN_T__21:
        case TOKEN_T__22:
        case TOKEN_T__23:
        case TOKEN_T__24:
        case TOKEN_T__25:
        case TOKEN_T__26:
        case TOKEN_T__27:
        case TOKEN_T__28:
        case TOKEN_T__30:
        case TOKEN_T__32:
        case TOKEN_T__36:
        case TOKEN_T__37:
        case TOKEN_T__38:
        case TOKEN_T__40:
        case TOKEN_T__43:
        case TOKEN_T__58:
        case TOKEN_T__59:
        case TOKEN_T__60:
        case TOKEN_T__61:
        case TOKEN_T__62:
        case TOKEN_T__63:
        case TOKEN_T__64:
        case TOKEN_T__65:
        case TOKEN_T__66:
        case TOKEN_T__67:
        case TOKEN_T__68:
        case TOKEN_T__69:
        case TOKEN_T__70:
        case TOKEN_FLOAT_LITERAL:
        case TOKEN_DOUBLE_LITERAL:
        case TOKEN_INT_LITERAL:
        case TOKEN_STRING_LITERAL:
        case TOKEN_CHAR_LITERAL:
        case TOKEN_ID:
          state = 70;
          comando();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 75;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 76;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Import_declContext import_decl() {
    dynamic _localctx = Import_declContext(context, state);
    enterRule(_localctx, 2, RULE_import_decl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 78;
      match(TOKEN_T__0);
      state = 79;
      qualified_id();
      state = 81;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__1) {
        state = 80;
        match(TOKEN_T__1);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Qualified_idContext qualified_id() {
    dynamic _localctx = Qualified_idContext(context, state);
    enterRule(_localctx, 4, RULE_qualified_id);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 83;
      match(TOKEN_ID);
      state = 88;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__2) {
        state = 84;
        match(TOKEN_T__2);
        state = 85;
        match(TOKEN_ID);
        state = 90;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Class_declContext class_decl() {
    dynamic _localctx = Class_declContext(context, state);
    enterRule(_localctx, 6, RULE_class_decl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 92;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 2088960) != 0)) {
        state = 91;
        modificadores();
      }

      state = 94;
      match(TOKEN_T__3);
      state = 95;
      match(TOKEN_ID);
      state = 97;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__6) {
        state = 96;
        mamata_clause();
      }

      state = 100;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__7) {
        state = 99;
        bota_clause();
      }

      state = 102;
      match(TOKEN_T__4);
      state = 106;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & -9223372036852686848) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & 8447) != 0)) {
        state = 103;
        membro();
        state = 108;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 109;
      match(TOKEN_T__5);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Mamata_clauseContext mamata_clause() {
    dynamic _localctx = Mamata_clauseContext(context, state);
    enterRule(_localctx, 8, RULE_mamata_clause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 111;
      match(TOKEN_T__6);
      state = 112;
      match(TOKEN_ID);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Bota_clauseContext bota_clause() {
    dynamic _localctx = Bota_clauseContext(context, state);
    enterRule(_localctx, 10, RULE_bota_clause);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 114;
      match(TOKEN_T__7);
      state = 115;
      match(TOKEN_ID);
      state = 120;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__8) {
        state = 116;
        match(TOKEN_T__8);
        state = 117;
        match(TOKEN_ID);
        state = 122;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MembroContext membro() {
    dynamic _localctx = MembroContext(context, state);
    enterRule(_localctx, 12, RULE_membro);
    int _la;
    try {
      state = 134;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 11, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 124;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 2088960) != 0)) {
          state = 123;
          modificadores();
        }

        state = 129;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 10, context)) {
        case 1:
          state = 126;
          metodo_decl();
          break;
        case 2:
          state = 127;
          campo_decl();
          break;
        case 3:
          state = 128;
          construtor_decl();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 131;
        metodo_decl();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 132;
        campo_decl();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 133;
        construtor_decl();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Campo_declContext campo_decl() {
    dynamic _localctx = Campo_declContext(context, state);
    enterRule(_localctx, 14, RULE_campo_decl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 136;
      tipo();
      state = 137;
      match(TOKEN_ID);
      state = 140;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__9) {
        state = 138;
        match(TOKEN_T__9);
        state = 139;
        expressao(0);
      }

      state = 143;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__1) {
        state = 142;
        match(TOKEN_T__1);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Metodo_declContext metodo_decl() {
    dynamic _localctx = Metodo_declContext(context, state);
    enterRule(_localctx, 16, RULE_metodo_decl);
    int _la;
    try {
      state = 167;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 19, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 146;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 14, context)) {
        case 1:
          state = 145;
          tipo();
          break;
        }
        state = 148;
        match(TOKEN_ID);
        state = 149;
        match(TOKEN_T__10);
        state = 151;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((((_la - 63)) & ~0x3f) == 0 && ((1 << (_la - 63)) & 16895) != 0)) {
          state = 150;
          parametros();
        }

        state = 153;
        match(TOKEN_T__11);
        state = 156;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__4:
          state = 154;
          bloco();
          break;
        case TOKEN_T__1:
          state = 155;
          match(TOKEN_T__1);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 159;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 17, context)) {
        case 1:
          state = 158;
          tipo();
          break;
        }
        state = 161;
        match(TOKEN_ID);
        state = 162;
        match(TOKEN_T__10);
        state = 164;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((((_la - 63)) & ~0x3f) == 0 && ((1 << (_la - 63)) & 16895) != 0)) {
          state = 163;
          parametros();
        }

        state = 166;
        match(TOKEN_T__11);
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Construtor_declContext construtor_decl() {
    dynamic _localctx = Construtor_declContext(context, state);
    enterRule(_localctx, 18, RULE_construtor_decl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 169;
      match(TOKEN_ID);
      state = 170;
      match(TOKEN_T__10);
      state = 172;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((((_la - 63)) & ~0x3f) == 0 && ((1 << (_la - 63)) & 16895) != 0)) {
        state = 171;
        parametros();
      }

      state = 174;
      match(TOKEN_T__11);
      state = 175;
      bloco();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParametrosContext parametros() {
    dynamic _localctx = ParametrosContext(context, state);
    enterRule(_localctx, 20, RULE_parametros);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 177;
      parametro();
      state = 182;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__8) {
        state = 178;
        match(TOKEN_T__8);
        state = 179;
        parametro();
        state = 184;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParametroContext parametro() {
    dynamic _localctx = ParametroContext(context, state);
    enterRule(_localctx, 22, RULE_parametro);
    try {
      enterOuterAlt(_localctx, 1);
      state = 185;
      tipo();
      state = 186;
      match(TOKEN_ID);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ModificadoresContext modificadores() {
    dynamic _localctx = ModificadoresContext(context, state);
    enterRule(_localctx, 24, RULE_modificadores);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 189; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 188;
        modificador();
        state = 191; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 2088960) != 0));
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ModificadorContext modificador() {
    dynamic _localctx = ModificadorContext(context, state);
    enterRule(_localctx, 26, RULE_modificador);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 193;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2088960) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlocoContext bloco() {
    dynamic _localctx = BlocoContext(context, state);
    enterRule(_localctx, 28, RULE_bloco);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 195;
      match(TOKEN_T__4);
      state = 199;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & -576439987212384224) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & 16383) != 0)) {
        state = 196;
        comando();
        state = 201;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 202;
      match(TOKEN_T__5);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ComandoContext comando() {
    dynamic _localctx = ComandoContext(context, state);
    enterRule(_localctx, 30, RULE_comando);
    int _la;
    try {
      state = 244;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 33, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 204;
        declaracao();
        state = 206;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__1) {
          state = 205;
          match(TOKEN_T__1);
        }

        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 208;
        atribuicao();
        state = 210;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__1) {
          state = 209;
          match(TOKEN_T__1);
        }

        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 212;
        chamada_metodo();
        state = 214;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__1) {
          state = 213;
          match(TOKEN_T__1);
        }

        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 216;
        condicional();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 217;
        repeticao();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 218;
        excessao();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 219;
        comando_io();
        state = 221;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__1) {
          state = 220;
          match(TOKEN_T__1);
        }

        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 223;
        match(TOKEN_T__20);
        state = 225;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__1) {
          state = 224;
          match(TOKEN_T__1);
        }

        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 227;
        match(TOKEN_T__21);
        state = 229;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__1) {
          state = 228;
          match(TOKEN_T__1);
        }

        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 231;
        match(TOKEN_T__22);
        state = 233;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 30, context)) {
        case 1:
          state = 232;
          expressao(0);
          break;
        }
        state = 236;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__1) {
          state = 235;
          match(TOKEN_T__1);
        }

        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 238;
        match(TOKEN_T__23);
        state = 239;
        expressao(0);
        state = 241;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__1) {
          state = 240;
          match(TOKEN_T__1);
        }

        break;
      case 12:
        enterOuterAlt(_localctx, 12);
        state = 243;
        bloco();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DeclaracaoContext declaracao() {
    dynamic _localctx = DeclaracaoContext(context, state);
    enterRule(_localctx, 32, RULE_declaracao);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 246;
      tipo();
      state = 247;
      match(TOKEN_ID);
      state = 250;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__9) {
        state = 248;
        match(TOKEN_T__9);
        state = 249;
        expressao(0);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AtribuicaoContext atribuicao() {
    dynamic _localctx = AtribuicaoContext(context, state);
    enterRule(_localctx, 34, RULE_atribuicao);
    int _la;
    try {
      state = 261;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 35, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 252;
        lvalue();
        state = 253;
        match(TOKEN_T__9);
        state = 254;
        expressao(0);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 256;
        lvalue();
        state = 257;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__24 || _la == TOKEN_T__25)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 259;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__24 || _la == TOKEN_T__25)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 260;
        lvalue();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LvalueContext lvalue() {
    dynamic _localctx = LvalueContext(context, state);
    enterRule(_localctx, 36, RULE_lvalue);
    try {
      state = 268;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 36, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 263;
        match(TOKEN_ID);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 264;
        acesso();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 265;
        match(TOKEN_T__26);
        state = 266;
        match(TOKEN_T__2);
        state = 267;
        match(TOKEN_ID);
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AcessoContext acesso() {
    dynamic _localctx = AcessoContext(context, state);
    enterRule(_localctx, 38, RULE_acesso);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 270;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 27)) & ~0x3f) == 0 && ((1 << (_la - 27)) & 1125899906842627) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 277; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 277;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__2:
            state = 271;
            match(TOKEN_T__2);
            state = 272;
            match(TOKEN_ID);
            break;
          case TOKEN_T__28:
            state = 273;
            match(TOKEN_T__28);
            state = 274;
            expressao(0);
            state = 275;
            match(TOKEN_T__29);
            break;
          default:
            throw NoViableAltException(this);
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 279; 
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 38, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Chamada_metodoContext chamada_metodo() {
    dynamic _localctx = Chamada_metodoContext(context, state);
    enterRule(_localctx, 40, RULE_chamada_metodo);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 286;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 39, context)) {
      case 1:
        state = 281;
        match(TOKEN_ID);
        break;
      case 2:
        state = 282;
        acesso();
        break;
      case 3:
        state = 283;
        match(TOKEN_T__26);
        break;
      case 4:
        state = 284;
        match(TOKEN_T__27);
        break;
      case 5:
        state = 285;
        primary();
        break;
      }
      state = 288;
      match(TOKEN_T__10);
      state = 290;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8647157576095500288) != 0) || ((((_la - 72)) & ~0x3f) == 0 && ((1 << (_la - 72)) & 63) != 0)) {
        state = 289;
        lista_expressoes();
      }

      state = 292;
      match(TOKEN_T__11);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Lista_expressoesContext lista_expressoes() {
    dynamic _localctx = Lista_expressoesContext(context, state);
    enterRule(_localctx, 42, RULE_lista_expressoes);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 294;
      expressao(0);
      state = 299;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__8) {
        state = 295;
        match(TOKEN_T__8);
        state = 296;
        expressao(0);
        state = 301;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CondicionalContext condicional() {
    dynamic _localctx = CondicionalContext(context, state);
    enterRule(_localctx, 44, RULE_condicional);
    int _la;
    try {
      int _alt;
      state = 339;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__30:
        enterOuterAlt(_localctx, 1);
        state = 302;
        match(TOKEN_T__30);
        state = 303;
        match(TOKEN_T__10);
        state = 304;
        expressao(0);
        state = 305;
        match(TOKEN_T__11);
        state = 306;
        comando();
        state = 316;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 42, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 307;
            match(TOKEN_T__31);
            state = 308;
            match(TOKEN_T__30);
            state = 309;
            match(TOKEN_T__10);
            state = 310;
            expressao(0);
            state = 311;
            match(TOKEN_T__11);
            state = 312;
            comando(); 
          }
          state = 318;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 42, context);
        }
        state = 321;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 43, context)) {
        case 1:
          state = 319;
          match(TOKEN_T__31);
          state = 320;
          comando();
          break;
        }
        break;
      case TOKEN_T__32:
        enterOuterAlt(_localctx, 2);
        state = 323;
        match(TOKEN_T__32);
        state = 324;
        match(TOKEN_T__10);
        state = 325;
        expressao(0);
        state = 326;
        match(TOKEN_T__11);
        state = 327;
        match(TOKEN_T__4);
        state = 331;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__33) {
          state = 328;
          caso();
          state = 333;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 335;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__35) {
          state = 334;
          padrao();
        }

        state = 337;
        match(TOKEN_T__5);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CasoContext caso() {
    dynamic _localctx = CasoContext(context, state);
    enterRule(_localctx, 46, RULE_caso);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 341;
      match(TOKEN_T__33);
      state = 342;
      expressao(0);
      state = 343;
      match(TOKEN_T__34);
      state = 347;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & -576439987212384224) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & 16383) != 0)) {
        state = 344;
        comando();
        state = 349;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PadraoContext padrao() {
    dynamic _localctx = PadraoContext(context, state);
    enterRule(_localctx, 48, RULE_padrao);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 350;
      match(TOKEN_T__35);
      state = 351;
      match(TOKEN_T__34);
      state = 355;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & -576439987212384224) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & 16383) != 0)) {
        state = 352;
        comando();
        state = 357;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  RepeticaoContext repeticao() {
    dynamic _localctx = RepeticaoContext(context, state);
    enterRule(_localctx, 50, RULE_repeticao);
    int _la;
    try {
      state = 397;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 53, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 358;
        match(TOKEN_T__36);
        state = 359;
        match(TOKEN_T__10);
        state = 360;
        expressao(0);
        state = 361;
        match(TOKEN_T__11);
        state = 362;
        comando();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 364;
        match(TOKEN_T__37);
        state = 365;
        bloco();
        state = 366;
        match(TOKEN_T__36);
        state = 367;
        match(TOKEN_T__10);
        state = 368;
        expressao(0);
        state = 369;
        match(TOKEN_T__11);
        state = 371;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__1) {
          state = 370;
          match(TOKEN_T__1);
        }

        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 373;
        match(TOKEN_T__38);
        state = 374;
        match(TOKEN_T__10);
        state = 376;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((((_la - 63)) & ~0x3f) == 0 && ((1 << (_la - 63)) & 16895) != 0)) {
          state = 375;
          declaracao();
        }

        state = 378;
        match(TOKEN_T__1);
        state = 380;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8647157576095500288) != 0) || ((((_la - 72)) & ~0x3f) == 0 && ((1 << (_la - 72)) & 63) != 0)) {
          state = 379;
          expressao(0);
        }

        state = 382;
        match(TOKEN_T__1);
        state = 384;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((((_la - 25)) & ~0x3f) == 0 && ((1 << (_la - 25)) & 4503599627370511) != 0)) {
          state = 383;
          atribuicao();
        }

        state = 386;
        match(TOKEN_T__11);
        state = 387;
        comando();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 388;
        match(TOKEN_T__38);
        state = 389;
        match(TOKEN_T__10);
        state = 390;
        tipo();
        state = 391;
        match(TOKEN_ID);
        state = 392;
        match(TOKEN_T__39);
        state = 393;
        expressao(0);
        state = 394;
        match(TOKEN_T__11);
        state = 395;
        comando();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExcessaoContext excessao() {
    dynamic _localctx = ExcessaoContext(context, state);
    enterRule(_localctx, 52, RULE_excessao);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 399;
      match(TOKEN_T__40);
      state = 400;
      bloco();
      state = 401;
      match(TOKEN_T__41);
      state = 402;
      match(TOKEN_T__10);
      state = 403;
      tipo();
      state = 404;
      match(TOKEN_ID);
      state = 405;
      match(TOKEN_T__11);
      state = 406;
      bloco();
      state = 409;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__42) {
        state = 407;
        match(TOKEN_T__42);
        state = 408;
        bloco();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Comando_ioContext comando_io() {
    dynamic _localctx = Comando_ioContext(context, state);
    enterRule(_localctx, 54, RULE_comando_io);
    try {
      enterOuterAlt(_localctx, 1);
      state = 411;
      match(TOKEN_T__43);
      state = 412;
      match(TOKEN_T__10);
      state = 413;
      expressao(0);
      state = 414;
      match(TOKEN_T__11);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressaoContext expressao([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressaoContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 56;
    enterRecursionRule(_localctx, 56, RULE_expressao, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 420;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__10:
      case TOKEN_T__26:
      case TOKEN_T__27:
      case TOKEN_T__28:
      case TOKEN_T__58:
      case TOKEN_T__59:
      case TOKEN_T__60:
      case TOKEN_T__61:
      case TOKEN_FLOAT_LITERAL:
      case TOKEN_DOUBLE_LITERAL:
      case TOKEN_INT_LITERAL:
      case TOKEN_STRING_LITERAL:
      case TOKEN_CHAR_LITERAL:
      case TOKEN_ID:
        state = 417;
        primary();
        break;
      case TOKEN_T__44:
      case TOKEN_T__45:
      case TOKEN_T__46:
        state = 418;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 246290604621824) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 419;
        expressao(7);
        break;
      default:
        throw NoViableAltException(this);
      }
      context!.stop = tokenStream.LT(-1);
      state = 456;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 58, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 454;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 57, context)) {
          case 1:
            _localctx = ExpressaoContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expressao);
            state = 422;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }
            state = 423;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 1970324836974592) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 424;
            expressao(7);
            break;
          case 2:
            _localctx = ExpressaoContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expressao);
            state = 425;
            if (!(precpred(context, 5))) {
              throw FailedPredicateException(this, "precpred(context, 5)");
            }
            state = 426;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__44 || _la == TOKEN_T__45)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 427;
            expressao(6);
            break;
          case 3:
            _localctx = ExpressaoContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expressao);
            state = 428;
            if (!(precpred(context, 4))) {
              throw FailedPredicateException(this, "precpred(context, 4)");
            }
            state = 429;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 33776997205278720) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 430;
            expressao(5);
            break;
          case 4:
            _localctx = ExpressaoContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expressao);
            state = 431;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 432;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__54 || _la == TOKEN_T__55)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 433;
            expressao(4);
            break;
          case 5:
            _localctx = ExpressaoContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expressao);
            state = 434;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 435;
            match(TOKEN_T__56);
            state = 436;
            expressao(3);
            break;
          case 6:
            _localctx = ExpressaoContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expressao);
            state = 437;
            if (!(precpred(context, 1))) {
              throw FailedPredicateException(this, "precpred(context, 1)");
            }
            state = 438;
            match(TOKEN_T__57);
            state = 439;
            expressao(2);
            break;
          case 7:
            _localctx = ExpressaoContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expressao);
            state = 440;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 441;
            match(TOKEN_T__2);
            state = 442;
            match(TOKEN_ID);
            break;
          case 8:
            _localctx = ExpressaoContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expressao);
            state = 443;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 444;
            match(TOKEN_T__28);
            state = 445;
            expressao(0);
            state = 446;
            match(TOKEN_T__29);
            break;
          case 9:
            _localctx = ExpressaoContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expressao);
            state = 448;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 449;
            match(TOKEN_T__10);
            state = 451;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8647157576095500288) != 0) || ((((_la - 72)) & ~0x3f) == 0 && ((1 << (_la - 72)) & 63) != 0)) {
              state = 450;
              lista_expressoes();
            }

            state = 453;
            match(TOKEN_T__11);
            break;
          } 
        }
        state = 458;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 58, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  PrimaryContext primary() {
    dynamic _localctx = PrimaryContext(context, state);
    enterRule(_localctx, 58, RULE_primary);
    int _la;
    try {
      state = 475;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_ID:
        enterOuterAlt(_localctx, 1);
        state = 459;
        match(TOKEN_ID);
        break;
      case TOKEN_T__26:
        enterOuterAlt(_localctx, 2);
        state = 460;
        match(TOKEN_T__26);
        break;
      case TOKEN_T__27:
        enterOuterAlt(_localctx, 3);
        state = 461;
        match(TOKEN_T__27);
        break;
      case TOKEN_T__58:
        enterOuterAlt(_localctx, 4);
        state = 462;
        match(TOKEN_T__58);
        state = 463;
        match(TOKEN_ID);
        state = 464;
        match(TOKEN_T__10);
        state = 466;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8647157576095500288) != 0) || ((((_la - 72)) & ~0x3f) == 0 && ((1 << (_la - 72)) & 63) != 0)) {
          state = 465;
          lista_expressoes();
        }

        state = 468;
        match(TOKEN_T__11);
        break;
      case TOKEN_T__28:
        enterOuterAlt(_localctx, 5);
        state = 469;
        array_literal();
        break;
      case TOKEN_T__59:
      case TOKEN_T__60:
      case TOKEN_T__61:
      case TOKEN_FLOAT_LITERAL:
      case TOKEN_DOUBLE_LITERAL:
      case TOKEN_INT_LITERAL:
      case TOKEN_STRING_LITERAL:
      case TOKEN_CHAR_LITERAL:
        enterOuterAlt(_localctx, 6);
        state = 470;
        literal();
        break;
      case TOKEN_T__10:
        enterOuterAlt(_localctx, 7);
        state = 471;
        match(TOKEN_T__10);
        state = 472;
        expressao(0);
        state = 473;
        match(TOKEN_T__11);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Array_literalContext array_literal() {
    dynamic _localctx = Array_literalContext(context, state);
    enterRule(_localctx, 60, RULE_array_literal);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 477;
      match(TOKEN_T__28);
      state = 479;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8647157576095500288) != 0) || ((((_la - 72)) & ~0x3f) == 0 && ((1 << (_la - 72)) & 63) != 0)) {
        state = 478;
        lista_expressoes();
      }

      state = 481;
      match(TOKEN_T__29);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LiteralContext literal() {
    dynamic _localctx = LiteralContext(context, state);
    enterRule(_localctx, 62, RULE_literal);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 483;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 60)) & ~0x3f) == 0 && ((1 << (_la - 60)) & 126983) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TipoContext tipo() {
    dynamic _localctx = TipoContext(context, state);
    enterRule(_localctx, 64, RULE_tipo);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 485;
      tipo_base();
      state = 490;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_T__28) {
        state = 486;
        match(TOKEN_T__28);
        state = 487;
        match(TOKEN_T__29);
        state = 492;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  Tipo_baseContext tipo_base() {
    dynamic _localctx = Tipo_baseContext(context, state);
    enterRule(_localctx, 66, RULE_tipo_base);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 493;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 63)) & ~0x3f) == 0 && ((1 << (_la - 63)) & 16895) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  @override
  bool sempred(RuleContext? _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
    case 28:
      return _expressao_sempred(_localctx as ExpressaoContext?, predIndex);
    }
    return true;
  }
  bool _expressao_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 6);
      case 1: return precpred(context, 5);
      case 2: return precpred(context, 4);
      case 3: return precpred(context, 3);
      case 4: return precpred(context, 2);
      case 5: return precpred(context, 1);
      case 6: return precpred(context, 10);
      case 7: return precpred(context, 9);
      case 8: return precpred(context, 8);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,80,496,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,
      27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,1,0,
      1,0,1,0,5,0,72,8,0,10,0,12,0,75,9,0,1,0,1,0,1,1,1,1,1,1,3,1,82,8,1,
      1,2,1,2,1,2,5,2,87,8,2,10,2,12,2,90,9,2,1,3,3,3,93,8,3,1,3,1,3,1,3,
      3,3,98,8,3,1,3,3,3,101,8,3,1,3,1,3,5,3,105,8,3,10,3,12,3,108,9,3,1,
      3,1,3,1,4,1,4,1,4,1,5,1,5,1,5,1,5,5,5,119,8,5,10,5,12,5,122,9,5,1,
      6,3,6,125,8,6,1,6,1,6,1,6,3,6,130,8,6,1,6,1,6,1,6,3,6,135,8,6,1,7,
      1,7,1,7,1,7,3,7,141,8,7,1,7,3,7,144,8,7,1,8,3,8,147,8,8,1,8,1,8,1,
      8,3,8,152,8,8,1,8,1,8,1,8,3,8,157,8,8,1,8,3,8,160,8,8,1,8,1,8,1,8,
      3,8,165,8,8,1,8,3,8,168,8,8,1,9,1,9,1,9,3,9,173,8,9,1,9,1,9,1,9,1,
      10,1,10,1,10,5,10,181,8,10,10,10,12,10,184,9,10,1,11,1,11,1,11,1,12,
      4,12,190,8,12,11,12,12,12,191,1,13,1,13,1,14,1,14,5,14,198,8,14,10,
      14,12,14,201,9,14,1,14,1,14,1,15,1,15,3,15,207,8,15,1,15,1,15,3,15,
      211,8,15,1,15,1,15,3,15,215,8,15,1,15,1,15,1,15,1,15,1,15,3,15,222,
      8,15,1,15,1,15,3,15,226,8,15,1,15,1,15,3,15,230,8,15,1,15,1,15,3,15,
      234,8,15,1,15,3,15,237,8,15,1,15,1,15,1,15,3,15,242,8,15,1,15,3,15,
      245,8,15,1,16,1,16,1,16,1,16,3,16,251,8,16,1,17,1,17,1,17,1,17,1,17,
      1,17,1,17,1,17,1,17,3,17,262,8,17,1,18,1,18,1,18,1,18,1,18,3,18,269,
      8,18,1,19,1,19,1,19,1,19,1,19,1,19,1,19,4,19,278,8,19,11,19,12,19,
      279,1,20,1,20,1,20,1,20,1,20,3,20,287,8,20,1,20,1,20,3,20,291,8,20,
      1,20,1,20,1,21,1,21,1,21,5,21,298,8,21,10,21,12,21,301,9,21,1,22,1,
      22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,5,22,315,8,22,
      10,22,12,22,318,9,22,1,22,1,22,3,22,322,8,22,1,22,1,22,1,22,1,22,1,
      22,1,22,5,22,330,8,22,10,22,12,22,333,9,22,1,22,3,22,336,8,22,1,22,
      1,22,3,22,340,8,22,1,23,1,23,1,23,1,23,5,23,346,8,23,10,23,12,23,349,
      9,23,1,24,1,24,1,24,5,24,354,8,24,10,24,12,24,357,9,24,1,25,1,25,1,
      25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,3,25,372,8,25,
      1,25,1,25,1,25,3,25,377,8,25,1,25,1,25,3,25,381,8,25,1,25,1,25,3,25,
      385,8,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,3,
      25,398,8,25,1,26,1,26,1,26,1,26,1,26,1,26,1,26,1,26,1,26,1,26,3,26,
      410,8,26,1,27,1,27,1,27,1,27,1,27,1,28,1,28,1,28,1,28,3,28,421,8,28,
      1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,
      28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,
      1,28,1,28,3,28,452,8,28,1,28,5,28,455,8,28,10,28,12,28,458,9,28,1,
      29,1,29,1,29,1,29,1,29,1,29,1,29,3,29,467,8,29,1,29,1,29,1,29,1,29,
      1,29,1,29,1,29,3,29,476,8,29,1,30,1,30,3,30,480,8,30,1,30,1,30,1,31,
      1,31,1,32,1,32,1,32,5,32,489,8,32,10,32,12,32,492,9,32,1,33,1,33,1,
      33,0,1,56,34,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,
      40,42,44,46,48,50,52,54,56,58,60,62,64,66,0,10,1,0,13,20,1,0,25,26,
      2,0,27,28,77,77,1,0,45,47,1,0,48,50,1,0,45,46,1,0,51,54,1,0,55,56,
      2,0,60,62,72,76,2,0,63,71,77,77,557,0,73,1,0,0,0,2,78,1,0,0,0,4,83,
      1,0,0,0,6,92,1,0,0,0,8,111,1,0,0,0,10,114,1,0,0,0,12,134,1,0,0,0,14,
      136,1,0,0,0,16,167,1,0,0,0,18,169,1,0,0,0,20,177,1,0,0,0,22,185,1,
      0,0,0,24,189,1,0,0,0,26,193,1,0,0,0,28,195,1,0,0,0,30,244,1,0,0,0,
      32,246,1,0,0,0,34,261,1,0,0,0,36,268,1,0,0,0,38,270,1,0,0,0,40,286,
      1,0,0,0,42,294,1,0,0,0,44,339,1,0,0,0,46,341,1,0,0,0,48,350,1,0,0,
      0,50,397,1,0,0,0,52,399,1,0,0,0,54,411,1,0,0,0,56,420,1,0,0,0,58,475,
      1,0,0,0,60,477,1,0,0,0,62,483,1,0,0,0,64,485,1,0,0,0,66,493,1,0,0,
      0,68,72,3,2,1,0,69,72,3,6,3,0,70,72,3,30,15,0,71,68,1,0,0,0,71,69,
      1,0,0,0,71,70,1,0,0,0,72,75,1,0,0,0,73,71,1,0,0,0,73,74,1,0,0,0,74,
      76,1,0,0,0,75,73,1,0,0,0,76,77,5,0,0,1,77,1,1,0,0,0,78,79,5,1,0,0,
      79,81,3,4,2,0,80,82,5,2,0,0,81,80,1,0,0,0,81,82,1,0,0,0,82,3,1,0,0,
      0,83,88,5,77,0,0,84,85,5,3,0,0,85,87,5,77,0,0,86,84,1,0,0,0,87,90,
      1,0,0,0,88,86,1,0,0,0,88,89,1,0,0,0,89,5,1,0,0,0,90,88,1,0,0,0,91,
      93,3,24,12,0,92,91,1,0,0,0,92,93,1,0,0,0,93,94,1,0,0,0,94,95,5,4,0,
      0,95,97,5,77,0,0,96,98,3,8,4,0,97,96,1,0,0,0,97,98,1,0,0,0,98,100,
      1,0,0,0,99,101,3,10,5,0,100,99,1,0,0,0,100,101,1,0,0,0,101,102,1,0,
      0,0,102,106,5,5,0,0,103,105,3,12,6,0,104,103,1,0,0,0,105,108,1,0,0,
      0,106,104,1,0,0,0,106,107,1,0,0,0,107,109,1,0,0,0,108,106,1,0,0,0,
      109,110,5,6,0,0,110,7,1,0,0,0,111,112,5,7,0,0,112,113,5,77,0,0,113,
      9,1,0,0,0,114,115,5,8,0,0,115,120,5,77,0,0,116,117,5,9,0,0,117,119,
      5,77,0,0,118,116,1,0,0,0,119,122,1,0,0,0,120,118,1,0,0,0,120,121,1,
      0,0,0,121,11,1,0,0,0,122,120,1,0,0,0,123,125,3,24,12,0,124,123,1,0,
      0,0,124,125,1,0,0,0,125,129,1,0,0,0,126,130,3,16,8,0,127,130,3,14,
      7,0,128,130,3,18,9,0,129,126,1,0,0,0,129,127,1,0,0,0,129,128,1,0,0,
      0,130,135,1,0,0,0,131,135,3,16,8,0,132,135,3,14,7,0,133,135,3,18,9,
      0,134,124,1,0,0,0,134,131,1,0,0,0,134,132,1,0,0,0,134,133,1,0,0,0,
      135,13,1,0,0,0,136,137,3,64,32,0,137,140,5,77,0,0,138,139,5,10,0,0,
      139,141,3,56,28,0,140,138,1,0,0,0,140,141,1,0,0,0,141,143,1,0,0,0,
      142,144,5,2,0,0,143,142,1,0,0,0,143,144,1,0,0,0,144,15,1,0,0,0,145,
      147,3,64,32,0,146,145,1,0,0,0,146,147,1,0,0,0,147,148,1,0,0,0,148,
      149,5,77,0,0,149,151,5,11,0,0,150,152,3,20,10,0,151,150,1,0,0,0,151,
      152,1,0,0,0,152,153,1,0,0,0,153,156,5,12,0,0,154,157,3,28,14,0,155,
      157,5,2,0,0,156,154,1,0,0,0,156,155,1,0,0,0,157,168,1,0,0,0,158,160,
      3,64,32,0,159,158,1,0,0,0,159,160,1,0,0,0,160,161,1,0,0,0,161,162,
      5,77,0,0,162,164,5,11,0,0,163,165,3,20,10,0,164,163,1,0,0,0,164,165,
      1,0,0,0,165,166,1,0,0,0,166,168,5,12,0,0,167,146,1,0,0,0,167,159,1,
      0,0,0,168,17,1,0,0,0,169,170,5,77,0,0,170,172,5,11,0,0,171,173,3,20,
      10,0,172,171,1,0,0,0,172,173,1,0,0,0,173,174,1,0,0,0,174,175,5,12,
      0,0,175,176,3,28,14,0,176,19,1,0,0,0,177,182,3,22,11,0,178,179,5,9,
      0,0,179,181,3,22,11,0,180,178,1,0,0,0,181,184,1,0,0,0,182,180,1,0,
      0,0,182,183,1,0,0,0,183,21,1,0,0,0,184,182,1,0,0,0,185,186,3,64,32,
      0,186,187,5,77,0,0,187,23,1,0,0,0,188,190,3,26,13,0,189,188,1,0,0,
      0,190,191,1,0,0,0,191,189,1,0,0,0,191,192,1,0,0,0,192,25,1,0,0,0,193,
      194,7,0,0,0,194,27,1,0,0,0,195,199,5,5,0,0,196,198,3,30,15,0,197,196,
      1,0,0,0,198,201,1,0,0,0,199,197,1,0,0,0,199,200,1,0,0,0,200,202,1,
      0,0,0,201,199,1,0,0,0,202,203,5,6,0,0,203,29,1,0,0,0,204,206,3,32,
      16,0,205,207,5,2,0,0,206,205,1,0,0,0,206,207,1,0,0,0,207,245,1,0,0,
      0,208,210,3,34,17,0,209,211,5,2,0,0,210,209,1,0,0,0,210,211,1,0,0,
      0,211,245,1,0,0,0,212,214,3,40,20,0,213,215,5,2,0,0,214,213,1,0,0,
      0,214,215,1,0,0,0,215,245,1,0,0,0,216,245,3,44,22,0,217,245,3,50,25,
      0,218,245,3,52,26,0,219,221,3,54,27,0,220,222,5,2,0,0,221,220,1,0,
      0,0,221,222,1,0,0,0,222,245,1,0,0,0,223,225,5,21,0,0,224,226,5,2,0,
      0,225,224,1,0,0,0,225,226,1,0,0,0,226,245,1,0,0,0,227,229,5,22,0,0,
      228,230,5,2,0,0,229,228,1,0,0,0,229,230,1,0,0,0,230,245,1,0,0,0,231,
      233,5,23,0,0,232,234,3,56,28,0,233,232,1,0,0,0,233,234,1,0,0,0,234,
      236,1,0,0,0,235,237,5,2,0,0,236,235,1,0,0,0,236,237,1,0,0,0,237,245,
      1,0,0,0,238,239,5,24,0,0,239,241,3,56,28,0,240,242,5,2,0,0,241,240,
      1,0,0,0,241,242,1,0,0,0,242,245,1,0,0,0,243,245,3,28,14,0,244,204,
      1,0,0,0,244,208,1,0,0,0,244,212,1,0,0,0,244,216,1,0,0,0,244,217,1,
      0,0,0,244,218,1,0,0,0,244,219,1,0,0,0,244,223,1,0,0,0,244,227,1,0,
      0,0,244,231,1,0,0,0,244,238,1,0,0,0,244,243,1,0,0,0,245,31,1,0,0,0,
      246,247,3,64,32,0,247,250,5,77,0,0,248,249,5,10,0,0,249,251,3,56,28,
      0,250,248,1,0,0,0,250,251,1,0,0,0,251,33,1,0,0,0,252,253,3,36,18,0,
      253,254,5,10,0,0,254,255,3,56,28,0,255,262,1,0,0,0,256,257,3,36,18,
      0,257,258,7,1,0,0,258,262,1,0,0,0,259,260,7,1,0,0,260,262,3,36,18,
      0,261,252,1,0,0,0,261,256,1,0,0,0,261,259,1,0,0,0,262,35,1,0,0,0,263,
      269,5,77,0,0,264,269,3,38,19,0,265,266,5,27,0,0,266,267,5,3,0,0,267,
      269,5,77,0,0,268,263,1,0,0,0,268,264,1,0,0,0,268,265,1,0,0,0,269,37,
      1,0,0,0,270,277,7,2,0,0,271,272,5,3,0,0,272,278,5,77,0,0,273,274,5,
      29,0,0,274,275,3,56,28,0,275,276,5,30,0,0,276,278,1,0,0,0,277,271,
      1,0,0,0,277,273,1,0,0,0,278,279,1,0,0,0,279,277,1,0,0,0,279,280,1,
      0,0,0,280,39,1,0,0,0,281,287,5,77,0,0,282,287,3,38,19,0,283,287,5,
      27,0,0,284,287,5,28,0,0,285,287,3,58,29,0,286,281,1,0,0,0,286,282,
      1,0,0,0,286,283,1,0,0,0,286,284,1,0,0,0,286,285,1,0,0,0,287,288,1,
      0,0,0,288,290,5,11,0,0,289,291,3,42,21,0,290,289,1,0,0,0,290,291,1,
      0,0,0,291,292,1,0,0,0,292,293,5,12,0,0,293,41,1,0,0,0,294,299,3,56,
      28,0,295,296,5,9,0,0,296,298,3,56,28,0,297,295,1,0,0,0,298,301,1,0,
      0,0,299,297,1,0,0,0,299,300,1,0,0,0,300,43,1,0,0,0,301,299,1,0,0,0,
      302,303,5,31,0,0,303,304,5,11,0,0,304,305,3,56,28,0,305,306,5,12,0,
      0,306,316,3,30,15,0,307,308,5,32,0,0,308,309,5,31,0,0,309,310,5,11,
      0,0,310,311,3,56,28,0,311,312,5,12,0,0,312,313,3,30,15,0,313,315,1,
      0,0,0,314,307,1,0,0,0,315,318,1,0,0,0,316,314,1,0,0,0,316,317,1,0,
      0,0,317,321,1,0,0,0,318,316,1,0,0,0,319,320,5,32,0,0,320,322,3,30,
      15,0,321,319,1,0,0,0,321,322,1,0,0,0,322,340,1,0,0,0,323,324,5,33,
      0,0,324,325,5,11,0,0,325,326,3,56,28,0,326,327,5,12,0,0,327,331,5,
      5,0,0,328,330,3,46,23,0,329,328,1,0,0,0,330,333,1,0,0,0,331,329,1,
      0,0,0,331,332,1,0,0,0,332,335,1,0,0,0,333,331,1,0,0,0,334,336,3,48,
      24,0,335,334,1,0,0,0,335,336,1,0,0,0,336,337,1,0,0,0,337,338,5,6,0,
      0,338,340,1,0,0,0,339,302,1,0,0,0,339,323,1,0,0,0,340,45,1,0,0,0,341,
      342,5,34,0,0,342,343,3,56,28,0,343,347,5,35,0,0,344,346,3,30,15,0,
      345,344,1,0,0,0,346,349,1,0,0,0,347,345,1,0,0,0,347,348,1,0,0,0,348,
      47,1,0,0,0,349,347,1,0,0,0,350,351,5,36,0,0,351,355,5,35,0,0,352,354,
      3,30,15,0,353,352,1,0,0,0,354,357,1,0,0,0,355,353,1,0,0,0,355,356,
      1,0,0,0,356,49,1,0,0,0,357,355,1,0,0,0,358,359,5,37,0,0,359,360,5,
      11,0,0,360,361,3,56,28,0,361,362,5,12,0,0,362,363,3,30,15,0,363,398,
      1,0,0,0,364,365,5,38,0,0,365,366,3,28,14,0,366,367,5,37,0,0,367,368,
      5,11,0,0,368,369,3,56,28,0,369,371,5,12,0,0,370,372,5,2,0,0,371,370,
      1,0,0,0,371,372,1,0,0,0,372,398,1,0,0,0,373,374,5,39,0,0,374,376,5,
      11,0,0,375,377,3,32,16,0,376,375,1,0,0,0,376,377,1,0,0,0,377,378,1,
      0,0,0,378,380,5,2,0,0,379,381,3,56,28,0,380,379,1,0,0,0,380,381,1,
      0,0,0,381,382,1,0,0,0,382,384,5,2,0,0,383,385,3,34,17,0,384,383,1,
      0,0,0,384,385,1,0,0,0,385,386,1,0,0,0,386,387,5,12,0,0,387,398,3,30,
      15,0,388,389,5,39,0,0,389,390,5,11,0,0,390,391,3,64,32,0,391,392,5,
      77,0,0,392,393,5,40,0,0,393,394,3,56,28,0,394,395,5,12,0,0,395,396,
      3,30,15,0,396,398,1,0,0,0,397,358,1,0,0,0,397,364,1,0,0,0,397,373,
      1,0,0,0,397,388,1,0,0,0,398,51,1,0,0,0,399,400,5,41,0,0,400,401,3,
      28,14,0,401,402,5,42,0,0,402,403,5,11,0,0,403,404,3,64,32,0,404,405,
      5,77,0,0,405,406,5,12,0,0,406,409,3,28,14,0,407,408,5,43,0,0,408,410,
      3,28,14,0,409,407,1,0,0,0,409,410,1,0,0,0,410,53,1,0,0,0,411,412,5,
      44,0,0,412,413,5,11,0,0,413,414,3,56,28,0,414,415,5,12,0,0,415,55,
      1,0,0,0,416,417,6,28,-1,0,417,421,3,58,29,0,418,419,7,3,0,0,419,421,
      3,56,28,7,420,416,1,0,0,0,420,418,1,0,0,0,421,456,1,0,0,0,422,423,
      10,6,0,0,423,424,7,4,0,0,424,455,3,56,28,7,425,426,10,5,0,0,426,427,
      7,5,0,0,427,455,3,56,28,6,428,429,10,4,0,0,429,430,7,6,0,0,430,455,
      3,56,28,5,431,432,10,3,0,0,432,433,7,7,0,0,433,455,3,56,28,4,434,435,
      10,2,0,0,435,436,5,57,0,0,436,455,3,56,28,3,437,438,10,1,0,0,438,439,
      5,58,0,0,439,455,3,56,28,2,440,441,10,10,0,0,441,442,5,3,0,0,442,455,
      5,77,0,0,443,444,10,9,0,0,444,445,5,29,0,0,445,446,3,56,28,0,446,447,
      5,30,0,0,447,455,1,0,0,0,448,449,10,8,0,0,449,451,5,11,0,0,450,452,
      3,42,21,0,451,450,1,0,0,0,451,452,1,0,0,0,452,453,1,0,0,0,453,455,
      5,12,0,0,454,422,1,0,0,0,454,425,1,0,0,0,454,428,1,0,0,0,454,431,1,
      0,0,0,454,434,1,0,0,0,454,437,1,0,0,0,454,440,1,0,0,0,454,443,1,0,
      0,0,454,448,1,0,0,0,455,458,1,0,0,0,456,454,1,0,0,0,456,457,1,0,0,
      0,457,57,1,0,0,0,458,456,1,0,0,0,459,476,5,77,0,0,460,476,5,27,0,0,
      461,476,5,28,0,0,462,463,5,59,0,0,463,464,5,77,0,0,464,466,5,11,0,
      0,465,467,3,42,21,0,466,465,1,0,0,0,466,467,1,0,0,0,467,468,1,0,0,
      0,468,476,5,12,0,0,469,476,3,60,30,0,470,476,3,62,31,0,471,472,5,11,
      0,0,472,473,3,56,28,0,473,474,5,12,0,0,474,476,1,0,0,0,475,459,1,0,
      0,0,475,460,1,0,0,0,475,461,1,0,0,0,475,462,1,0,0,0,475,469,1,0,0,
      0,475,470,1,0,0,0,475,471,1,0,0,0,476,59,1,0,0,0,477,479,5,29,0,0,
      478,480,3,42,21,0,479,478,1,0,0,0,479,480,1,0,0,0,480,481,1,0,0,0,
      481,482,5,30,0,0,482,61,1,0,0,0,483,484,7,8,0,0,484,63,1,0,0,0,485,
      490,3,66,33,0,486,487,5,29,0,0,487,489,5,30,0,0,488,486,1,0,0,0,489,
      492,1,0,0,0,490,488,1,0,0,0,490,491,1,0,0,0,491,65,1,0,0,0,492,490,
      1,0,0,0,493,494,7,9,0,0,494,67,1,0,0,0,63,71,73,81,88,92,97,100,106,
      120,124,129,134,140,143,146,151,156,159,164,167,172,182,191,199,206,
      210,214,221,225,229,233,236,241,244,250,261,268,277,279,286,290,299,
      316,321,331,335,339,347,355,371,376,380,384,397,409,420,451,454,456,
      466,475,479,490
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ProgramaContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(TralhaParser.TOKEN_EOF, 0);
  List<Import_declContext> import_decls() => getRuleContexts<Import_declContext>();
  Import_declContext? import_decl(int i) => getRuleContext<Import_declContext>(i);
  List<Class_declContext> class_decls() => getRuleContexts<Class_declContext>();
  Class_declContext? class_decl(int i) => getRuleContext<Class_declContext>(i);
  List<ComandoContext> comandos() => getRuleContexts<ComandoContext>();
  ComandoContext? comando(int i) => getRuleContext<ComandoContext>(i);
  ProgramaContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_programa;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitPrograma(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Import_declContext extends ParserRuleContext {
  Qualified_idContext? qualified_id() => getRuleContext<Qualified_idContext>(0);
  Import_declContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_import_decl;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitImport_decl(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Qualified_idContext extends ParserRuleContext {
  List<TerminalNode> IDs() => getTokens(TralhaParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(TralhaParser.TOKEN_ID, i);
  Qualified_idContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_qualified_id;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitQualified_id(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Class_declContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  ModificadoresContext? modificadores() => getRuleContext<ModificadoresContext>(0);
  Mamata_clauseContext? mamata_clause() => getRuleContext<Mamata_clauseContext>(0);
  Bota_clauseContext? bota_clause() => getRuleContext<Bota_clauseContext>(0);
  List<MembroContext> membros() => getRuleContexts<MembroContext>();
  MembroContext? membro(int i) => getRuleContext<MembroContext>(i);
  Class_declContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_class_decl;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitClass_decl(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Mamata_clauseContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  Mamata_clauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mamata_clause;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitMamata_clause(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Bota_clauseContext extends ParserRuleContext {
  List<TerminalNode> IDs() => getTokens(TralhaParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(TralhaParser.TOKEN_ID, i);
  Bota_clauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_bota_clause;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitBota_clause(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class MembroContext extends ParserRuleContext {
  Metodo_declContext? metodo_decl() => getRuleContext<Metodo_declContext>(0);
  Campo_declContext? campo_decl() => getRuleContext<Campo_declContext>(0);
  Construtor_declContext? construtor_decl() => getRuleContext<Construtor_declContext>(0);
  ModificadoresContext? modificadores() => getRuleContext<ModificadoresContext>(0);
  MembroContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_membro;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitMembro(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Campo_declContext extends ParserRuleContext {
  TipoContext? tipo() => getRuleContext<TipoContext>(0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  ExpressaoContext? expressao() => getRuleContext<ExpressaoContext>(0);
  Campo_declContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_campo_decl;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitCampo_decl(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Metodo_declContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  BlocoContext? bloco() => getRuleContext<BlocoContext>(0);
  TipoContext? tipo() => getRuleContext<TipoContext>(0);
  ParametrosContext? parametros() => getRuleContext<ParametrosContext>(0);
  Metodo_declContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_metodo_decl;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitMetodo_decl(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Construtor_declContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  BlocoContext? bloco() => getRuleContext<BlocoContext>(0);
  ParametrosContext? parametros() => getRuleContext<ParametrosContext>(0);
  Construtor_declContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_construtor_decl;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitConstrutor_decl(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ParametrosContext extends ParserRuleContext {
  List<ParametroContext> parametros() => getRuleContexts<ParametroContext>();
  ParametroContext? parametro(int i) => getRuleContext<ParametroContext>(i);
  ParametrosContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parametros;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitParametros(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ParametroContext extends ParserRuleContext {
  TipoContext? tipo() => getRuleContext<TipoContext>(0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  ParametroContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parametro;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitParametro(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ModificadoresContext extends ParserRuleContext {
  List<ModificadorContext> modificadors() => getRuleContexts<ModificadorContext>();
  ModificadorContext? modificador(int i) => getRuleContext<ModificadorContext>(i);
  ModificadoresContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_modificadores;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitModificadores(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ModificadorContext extends ParserRuleContext {
  ModificadorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_modificador;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitModificador(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class BlocoContext extends ParserRuleContext {
  List<ComandoContext> comandos() => getRuleContexts<ComandoContext>();
  ComandoContext? comando(int i) => getRuleContext<ComandoContext>(i);
  BlocoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_bloco;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitBloco(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ComandoContext extends ParserRuleContext {
  DeclaracaoContext? declaracao() => getRuleContext<DeclaracaoContext>(0);
  AtribuicaoContext? atribuicao() => getRuleContext<AtribuicaoContext>(0);
  Chamada_metodoContext? chamada_metodo() => getRuleContext<Chamada_metodoContext>(0);
  CondicionalContext? condicional() => getRuleContext<CondicionalContext>(0);
  RepeticaoContext? repeticao() => getRuleContext<RepeticaoContext>(0);
  ExcessaoContext? excessao() => getRuleContext<ExcessaoContext>(0);
  Comando_ioContext? comando_io() => getRuleContext<Comando_ioContext>(0);
  ExpressaoContext? expressao() => getRuleContext<ExpressaoContext>(0);
  BlocoContext? bloco() => getRuleContext<BlocoContext>(0);
  ComandoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_comando;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitComando(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class DeclaracaoContext extends ParserRuleContext {
  TipoContext? tipo() => getRuleContext<TipoContext>(0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  ExpressaoContext? expressao() => getRuleContext<ExpressaoContext>(0);
  DeclaracaoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_declaracao;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitDeclaracao(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AtribuicaoContext extends ParserRuleContext {
  LvalueContext? lvalue() => getRuleContext<LvalueContext>(0);
  ExpressaoContext? expressao() => getRuleContext<ExpressaoContext>(0);
  AtribuicaoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_atribuicao;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitAtribuicao(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class LvalueContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  AcessoContext? acesso() => getRuleContext<AcessoContext>(0);
  LvalueContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_lvalue;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitLvalue(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AcessoContext extends ParserRuleContext {
  List<TerminalNode> IDs() => getTokens(TralhaParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(TralhaParser.TOKEN_ID, i);
  List<ExpressaoContext> expressaos() => getRuleContexts<ExpressaoContext>();
  ExpressaoContext? expressao(int i) => getRuleContext<ExpressaoContext>(i);
  AcessoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_acesso;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitAcesso(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Chamada_metodoContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  AcessoContext? acesso() => getRuleContext<AcessoContext>(0);
  PrimaryContext? primary() => getRuleContext<PrimaryContext>(0);
  Lista_expressoesContext? lista_expressoes() => getRuleContext<Lista_expressoesContext>(0);
  Chamada_metodoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_chamada_metodo;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitChamada_metodo(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Lista_expressoesContext extends ParserRuleContext {
  List<ExpressaoContext> expressaos() => getRuleContexts<ExpressaoContext>();
  ExpressaoContext? expressao(int i) => getRuleContext<ExpressaoContext>(i);
  Lista_expressoesContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_lista_expressoes;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitLista_expressoes(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class CondicionalContext extends ParserRuleContext {
  List<ExpressaoContext> expressaos() => getRuleContexts<ExpressaoContext>();
  ExpressaoContext? expressao(int i) => getRuleContext<ExpressaoContext>(i);
  List<ComandoContext> comandos() => getRuleContexts<ComandoContext>();
  ComandoContext? comando(int i) => getRuleContext<ComandoContext>(i);
  List<CasoContext> casos() => getRuleContexts<CasoContext>();
  CasoContext? caso(int i) => getRuleContext<CasoContext>(i);
  PadraoContext? padrao() => getRuleContext<PadraoContext>(0);
  CondicionalContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_condicional;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitCondicional(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class CasoContext extends ParserRuleContext {
  ExpressaoContext? expressao() => getRuleContext<ExpressaoContext>(0);
  List<ComandoContext> comandos() => getRuleContexts<ComandoContext>();
  ComandoContext? comando(int i) => getRuleContext<ComandoContext>(i);
  CasoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_caso;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitCaso(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PadraoContext extends ParserRuleContext {
  List<ComandoContext> comandos() => getRuleContexts<ComandoContext>();
  ComandoContext? comando(int i) => getRuleContext<ComandoContext>(i);
  PadraoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_padrao;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitPadrao(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class RepeticaoContext extends ParserRuleContext {
  ExpressaoContext? expressao() => getRuleContext<ExpressaoContext>(0);
  ComandoContext? comando() => getRuleContext<ComandoContext>(0);
  BlocoContext? bloco() => getRuleContext<BlocoContext>(0);
  DeclaracaoContext? declaracao() => getRuleContext<DeclaracaoContext>(0);
  AtribuicaoContext? atribuicao() => getRuleContext<AtribuicaoContext>(0);
  TipoContext? tipo() => getRuleContext<TipoContext>(0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  RepeticaoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_repeticao;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitRepeticao(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ExcessaoContext extends ParserRuleContext {
  List<BlocoContext> blocos() => getRuleContexts<BlocoContext>();
  BlocoContext? bloco(int i) => getRuleContext<BlocoContext>(i);
  TipoContext? tipo() => getRuleContext<TipoContext>(0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  ExcessaoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_excessao;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitExcessao(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Comando_ioContext extends ParserRuleContext {
  ExpressaoContext? expressao() => getRuleContext<ExpressaoContext>(0);
  Comando_ioContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_comando_io;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitComando_io(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ExpressaoContext extends ParserRuleContext {
  PrimaryContext? primary() => getRuleContext<PrimaryContext>(0);
  List<ExpressaoContext> expressaos() => getRuleContexts<ExpressaoContext>();
  ExpressaoContext? expressao(int i) => getRuleContext<ExpressaoContext>(i);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  Lista_expressoesContext? lista_expressoes() => getRuleContext<Lista_expressoesContext>(0);
  ExpressaoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expressao;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitExpressao(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PrimaryContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  Lista_expressoesContext? lista_expressoes() => getRuleContext<Lista_expressoesContext>(0);
  Array_literalContext? array_literal() => getRuleContext<Array_literalContext>(0);
  LiteralContext? literal() => getRuleContext<LiteralContext>(0);
  ExpressaoContext? expressao() => getRuleContext<ExpressaoContext>(0);
  PrimaryContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_primary;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitPrimary(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Array_literalContext extends ParserRuleContext {
  Lista_expressoesContext? lista_expressoes() => getRuleContext<Lista_expressoesContext>(0);
  Array_literalContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_array_literal;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitArray_literal(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class LiteralContext extends ParserRuleContext {
  TerminalNode? STRING_LITERAL() => getToken(TralhaParser.TOKEN_STRING_LITERAL, 0);
  TerminalNode? INT_LITERAL() => getToken(TralhaParser.TOKEN_INT_LITERAL, 0);
  TerminalNode? FLOAT_LITERAL() => getToken(TralhaParser.TOKEN_FLOAT_LITERAL, 0);
  TerminalNode? DOUBLE_LITERAL() => getToken(TralhaParser.TOKEN_DOUBLE_LITERAL, 0);
  TerminalNode? CHAR_LITERAL() => getToken(TralhaParser.TOKEN_CHAR_LITERAL, 0);
  LiteralContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_literal;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitLiteral(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class TipoContext extends ParserRuleContext {
  Tipo_baseContext? tipo_base() => getRuleContext<Tipo_baseContext>(0);
  TipoContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_tipo;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitTipo(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class Tipo_baseContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  Tipo_baseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_tipo_base;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitTipo_base(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

