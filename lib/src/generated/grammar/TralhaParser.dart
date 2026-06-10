// Generated from Tralha.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'TralhaListener.dart';
import 'TralhaBaseListener.dart';
import 'TralhaVisitor.dart';
import 'TralhaBaseVisitor.dart';
const int RULE_program = 0, RULE_importDeclaration = 1, RULE_qualifiedName = 2, 
          RULE_classDeclaration = 3, RULE_extendsClause = 4, RULE_implementsClause = 5, 
          RULE_memberDeclaration = 6, RULE_fieldDeclaration = 7, RULE_methodDeclaration = 8, 
          RULE_constructorDeclaration = 9, RULE_modifier = 10, RULE_parameterList = 11, 
          RULE_parameter = 12, RULE_block = 13, RULE_statement = 14, RULE_variableDeclaration = 15, 
          RULE_assignment = 16, RULE_assignable = 17, RULE_memberAccess = 18, 
          RULE_methodCall = 19, RULE_argumentList = 20, RULE_ifStatement = 21, 
          RULE_switchStatement = 22, RULE_switchCase = 23, RULE_defaultCase = 24, 
          RULE_whileStatement = 25, RULE_doWhileStatement = 26, RULE_forStatement = 27, 
          RULE_forEachStatement = 28, RULE_tryStatement = 29, RULE_printStatement = 30, 
          RULE_expression = 31, RULE_atom = 32, RULE_arrayLiteral = 33, 
          RULE_literal = 34, RULE_type = 35, RULE_baseType = 36;
class TralhaParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.2', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_IMPORT = 1, TOKEN_CLASS = 2, TOKEN_EXTENDS = 3, 
                   TOKEN_IMPLEMENTS = 4, TOKEN_ASSIGN = 5, TOKEN_PUBLIC = 6, 
                   TOKEN_PRIVATE = 7, TOKEN_PROTECTED = 8, TOKEN_STATIC = 9, 
                   TOKEN_FINAL = 10, TOKEN_CONST = 11, TOKEN_ABSTRACT = 12, 
                   TOKEN_OVERRIDE = 13, TOKEN_BREAK = 14, TOKEN_CONTINUE = 15, 
                   TOKEN_RETURN = 16, TOKEN_THROW = 17, TOKEN_THIS = 18, 
                   TOKEN_NULL_REF = 19, TOKEN_IF = 20, TOKEN_ELSE = 21, 
                   TOKEN_SWITCH = 22, TOKEN_CASE = 23, TOKEN_DEFAULT = 24, 
                   TOKEN_WHILE = 25, TOKEN_DO = 26, TOKEN_FOR = 27, TOKEN_IN = 28, 
                   TOKEN_TRY = 29, TOKEN_CATCH = 30, TOKEN_FINALLY = 31, 
                   TOKEN_PRINT = 32, TOKEN_NEW = 33, TOKEN_TRUE = 34, TOKEN_FALSE = 35, 
                   TOKEN_NULL = 36, TOKEN_INT_TYPE = 37, TOKEN_FLOAT_TYPE = 38, 
                   TOKEN_DOUBLE_TYPE = 39, TOKEN_CHAR_TYPE = 40, TOKEN_BOOL_TYPE = 41, 
                   TOKEN_STRING_TYPE = 42, TOKEN_VOID_TYPE = 43, TOKEN_VAR_TYPE = 44, 
                   TOKEN_DYNAMIC_TYPE = 45, TOKEN_OR = 46, TOKEN_AND = 47, 
                   TOKEN_EQ = 48, TOKEN_NEQ = 49, TOKEN_LE = 50, TOKEN_GE = 51, 
                   TOKEN_LT = 52, TOKEN_GT = 53, TOKEN_INC = 54, TOKEN_DEC = 55, 
                   TOKEN_PLUS = 56, TOKEN_MINUS = 57, TOKEN_STAR = 58, TOKEN_SLASH = 59, 
                   TOKEN_PERCENT = 60, TOKEN_NOT = 61, TOKEN_SEMI = 62, 
                   TOKEN_COMMA = 63, TOKEN_DOT = 64, TOKEN_COLON = 65, TOKEN_LPAREN = 66, 
                   TOKEN_RPAREN = 67, TOKEN_LBRACE = 68, TOKEN_RBRACE = 69, 
                   TOKEN_LBRACK = 70, TOKEN_RBRACK = 71, TOKEN_FLOAT = 72, 
                   TOKEN_DOUBLE = 73, TOKEN_INT = 74, TOKEN_STRING = 75, 
                   TOKEN_CHAR = 76, TOKEN_ID = 77, TOKEN_BLOCK_COMMENT = 78, 
                   TOKEN_LINE_COMMENT = 79, TOKEN_WS = 80;

  @override
  final List<String> ruleNames = [
    'program', 'importDeclaration', 'qualifiedName', 'classDeclaration', 
    'extendsClause', 'implementsClause', 'memberDeclaration', 'fieldDeclaration', 
    'methodDeclaration', 'constructorDeclaration', 'modifier', 'parameterList', 
    'parameter', 'block', 'statement', 'variableDeclaration', 'assignment', 
    'assignable', 'memberAccess', 'methodCall', 'argumentList', 'ifStatement', 
    'switchStatement', 'switchCase', 'defaultCase', 'whileStatement', 'doWhileStatement', 
    'forStatement', 'forEachStatement', 'tryStatement', 'printStatement', 
    'expression', 'atom', 'arrayLiteral', 'literal', 'type', 'baseType'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'trazPraca'", "'TREM'", "'mamata'", "'bota'", "'receba'", "'todo'", 
      "'sou'", "'nepotismo'", "'baiano'", "'teimoso'", "'cravado'", "'politico'", 
      "'override'", "'chega'", "'pula'", "'manda'", "'taca'", "'nessaBomba'", 
      "'deuErro'", "'sePa'", "'ouSeDeusQuiser'", "'dependendo'", "'nesseCaso'", 
      "'naDuvida'", "'ateDarCerto'", "'vaiNaFe'", "'vaiVolta'", "'laEle'", 
      "'gambiarra'", "'deuPau'", "'fitaIsolante'", "'whatsapp'", "'meteUm'", 
      "'confia'", "'fakeNews'", "'oco'", "'naoFracionado'", "'fracionado'", 
      "'fracionadao'", "'letrinha'", "'bipolar'", "'testao'", "'rouba'", 
      "'mutante'", "'adivinha'", "'||'", "'&&'", "'=='", "'!='", "'<='", 
      "'>='", "'<'", "'>'", "'++'", "'--'", "'+'", "'-'", "'*'", "'/'", 
      "'%'", "'!'", "';'", "','", "'.'", "':'", "'('", "')'", "'{'", "'}'", 
      "'['", "']'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "IMPORT", "CLASS", "EXTENDS", "IMPLEMENTS", "ASSIGN", "PUBLIC", 
      "PRIVATE", "PROTECTED", "STATIC", "FINAL", "CONST", "ABSTRACT", "OVERRIDE", 
      "BREAK", "CONTINUE", "RETURN", "THROW", "THIS", "NULL_REF", "IF", 
      "ELSE", "SWITCH", "CASE", "DEFAULT", "WHILE", "DO", "FOR", "IN", "TRY", 
      "CATCH", "FINALLY", "PRINT", "NEW", "TRUE", "FALSE", "NULL", "INT_TYPE", 
      "FLOAT_TYPE", "DOUBLE_TYPE", "CHAR_TYPE", "BOOL_TYPE", "STRING_TYPE", 
      "VOID_TYPE", "VAR_TYPE", "DYNAMIC_TYPE", "OR", "AND", "EQ", "NEQ", 
      "LE", "GE", "LT", "GT", "INC", "DEC", "PLUS", "MINUS", "STAR", "SLASH", 
      "PERCENT", "NOT", "SEMI", "COMMA", "DOT", "COLON", "LPAREN", "RPAREN", 
      "LBRACE", "RBRACE", "LBRACK", "RBRACK", "FLOAT", "DOUBLE", "INT", 
      "STRING", "CHAR", "ID", "BLOCK_COMMENT", "LINE_COMMENT", "WS"
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 0, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 79;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 54113431906680774) != 0) || _la == TOKEN_LBRACE || _la == TOKEN_ID) {
        state = 77;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_IMPORT:
          state = 74;
          importDeclaration();
          break;
        case TOKEN_CLASS:
        case TOKEN_PUBLIC:
        case TOKEN_PRIVATE:
        case TOKEN_PROTECTED:
        case TOKEN_STATIC:
        case TOKEN_FINAL:
        case TOKEN_CONST:
        case TOKEN_ABSTRACT:
        case TOKEN_OVERRIDE:
          state = 75;
          classDeclaration();
          break;
        case TOKEN_BREAK:
        case TOKEN_CONTINUE:
        case TOKEN_RETURN:
        case TOKEN_THROW:
        case TOKEN_THIS:
        case TOKEN_NULL_REF:
        case TOKEN_IF:
        case TOKEN_SWITCH:
        case TOKEN_WHILE:
        case TOKEN_DO:
        case TOKEN_FOR:
        case TOKEN_TRY:
        case TOKEN_PRINT:
        case TOKEN_INT_TYPE:
        case TOKEN_FLOAT_TYPE:
        case TOKEN_DOUBLE_TYPE:
        case TOKEN_CHAR_TYPE:
        case TOKEN_BOOL_TYPE:
        case TOKEN_STRING_TYPE:
        case TOKEN_VOID_TYPE:
        case TOKEN_VAR_TYPE:
        case TOKEN_DYNAMIC_TYPE:
        case TOKEN_INC:
        case TOKEN_DEC:
        case TOKEN_LBRACE:
        case TOKEN_ID:
          state = 76;
          statement();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 81;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 82;
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

  ImportDeclarationContext importDeclaration() {
    dynamic _localctx = ImportDeclarationContext(context, state);
    enterRule(_localctx, 2, RULE_importDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 84;
      match(TOKEN_IMPORT);
      state = 85;
      qualifiedName();
      state = 87;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_SEMI) {
        state = 86;
        match(TOKEN_SEMI);
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

  QualifiedNameContext qualifiedName() {
    dynamic _localctx = QualifiedNameContext(context, state);
    enterRule(_localctx, 4, RULE_qualifiedName);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 89;
      match(TOKEN_ID);
      state = 94;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_DOT) {
        state = 90;
        match(TOKEN_DOT);
        state = 91;
        match(TOKEN_ID);
        state = 96;
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

  ClassDeclarationContext classDeclaration() {
    dynamic _localctx = ClassDeclarationContext(context, state);
    enterRule(_localctx, 6, RULE_classDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 100;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 16320) != 0)) {
        state = 97;
        modifier();
        state = 102;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 103;
      match(TOKEN_CLASS);
      state = 104;
      match(TOKEN_ID);
      state = 106;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_EXTENDS) {
        state = 105;
        extendsClause();
      }

      state = 109;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_IMPLEMENTS) {
        state = 108;
        implementsClause();
      }

      state = 111;
      match(TOKEN_LBRACE);
      state = 115;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 70231305240512) != 0) || _la == TOKEN_ID) {
        state = 112;
        memberDeclaration();
        state = 117;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 118;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExtendsClauseContext extendsClause() {
    dynamic _localctx = ExtendsClauseContext(context, state);
    enterRule(_localctx, 8, RULE_extendsClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 120;
      match(TOKEN_EXTENDS);
      state = 121;
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

  ImplementsClauseContext implementsClause() {
    dynamic _localctx = ImplementsClauseContext(context, state);
    enterRule(_localctx, 10, RULE_implementsClause);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 123;
      match(TOKEN_IMPLEMENTS);
      state = 124;
      match(TOKEN_ID);
      state = 129;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 125;
        match(TOKEN_COMMA);
        state = 126;
        match(TOKEN_ID);
        state = 131;
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

  MemberDeclarationContext memberDeclaration() {
    dynamic _localctx = MemberDeclarationContext(context, state);
    enterRule(_localctx, 12, RULE_memberDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 135;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 16320) != 0)) {
        state = 132;
        modifier();
        state = 137;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 141;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 10, context)) {
      case 1:
        state = 138;
        methodDeclaration();
        break;
      case 2:
        state = 139;
        fieldDeclaration();
        break;
      case 3:
        state = 140;
        constructorDeclaration();
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

  FieldDeclarationContext fieldDeclaration() {
    dynamic _localctx = FieldDeclarationContext(context, state);
    enterRule(_localctx, 14, RULE_fieldDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 143;
      type();
      state = 144;
      match(TOKEN_ID);
      state = 147;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ASSIGN) {
        state = 145;
        match(TOKEN_ASSIGN);
        state = 146;
        expression(0);
      }

      state = 150;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_SEMI) {
        state = 149;
        match(TOKEN_SEMI);
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

  MethodDeclarationContext methodDeclaration() {
    dynamic _localctx = MethodDeclarationContext(context, state);
    enterRule(_localctx, 16, RULE_methodDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 153;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 13, context)) {
      case 1:
        state = 152;
        type();
        break;
      }
      state = 155;
      match(TOKEN_ID);
      state = 156;
      match(TOKEN_LPAREN);
      state = 158;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((((_la - 37)) & ~0x3f) == 0 && ((1 << (_la - 37)) & 1099511628287) != 0)) {
        state = 157;
        parameterList();
      }

      state = 160;
      match(TOKEN_RPAREN);
      state = 165;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_LBRACE:
        state = 161;
        block();
        break;
      case TOKEN_PUBLIC:
      case TOKEN_PRIVATE:
      case TOKEN_PROTECTED:
      case TOKEN_STATIC:
      case TOKEN_FINAL:
      case TOKEN_CONST:
      case TOKEN_ABSTRACT:
      case TOKEN_OVERRIDE:
      case TOKEN_INT_TYPE:
      case TOKEN_FLOAT_TYPE:
      case TOKEN_DOUBLE_TYPE:
      case TOKEN_CHAR_TYPE:
      case TOKEN_BOOL_TYPE:
      case TOKEN_STRING_TYPE:
      case TOKEN_VOID_TYPE:
      case TOKEN_VAR_TYPE:
      case TOKEN_DYNAMIC_TYPE:
      case TOKEN_SEMI:
      case TOKEN_RBRACE:
      case TOKEN_ID:
        state = 163;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SEMI) {
          state = 162;
          match(TOKEN_SEMI);
        }

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

  ConstructorDeclarationContext constructorDeclaration() {
    dynamic _localctx = ConstructorDeclarationContext(context, state);
    enterRule(_localctx, 18, RULE_constructorDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 167;
      match(TOKEN_ID);
      state = 168;
      match(TOKEN_LPAREN);
      state = 170;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((((_la - 37)) & ~0x3f) == 0 && ((1 << (_la - 37)) & 1099511628287) != 0)) {
        state = 169;
        parameterList();
      }

      state = 172;
      match(TOKEN_RPAREN);
      state = 173;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ModifierContext modifier() {
    dynamic _localctx = ModifierContext(context, state);
    enterRule(_localctx, 20, RULE_modifier);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 175;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 16320) != 0))) {
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

  ParameterListContext parameterList() {
    dynamic _localctx = ParameterListContext(context, state);
    enterRule(_localctx, 22, RULE_parameterList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 177;
      parameter();
      state = 182;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 178;
        match(TOKEN_COMMA);
        state = 179;
        parameter();
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

  ParameterContext parameter() {
    dynamic _localctx = ParameterContext(context, state);
    enterRule(_localctx, 24, RULE_parameter);
    try {
      enterOuterAlt(_localctx, 1);
      state = 185;
      type();
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

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 26, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 188;
      match(TOKEN_LBRACE);
      state = 192;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (((((_la - 14)) & ~0x3f) == 0 && ((1 << (_la - 14)) & -9205354335523522177) != 0)) {
        state = 189;
        statement();
        state = 194;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 195;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 28, RULE_statement);
    int _la;
    try {
      state = 239;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 28, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 197;
        variableDeclaration();
        state = 199;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SEMI) {
          state = 198;
          match(TOKEN_SEMI);
        }

        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 201;
        assignment();
        state = 203;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SEMI) {
          state = 202;
          match(TOKEN_SEMI);
        }

        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 205;
        methodCall();
        state = 207;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SEMI) {
          state = 206;
          match(TOKEN_SEMI);
        }

        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 209;
        ifStatement();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 210;
        switchStatement();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 211;
        whileStatement();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 212;
        doWhileStatement();
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 213;
        forStatement();
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 214;
        forEachStatement();
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 215;
        tryStatement();
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 216;
        printStatement();
        state = 218;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SEMI) {
          state = 217;
          match(TOKEN_SEMI);
        }

        break;
      case 12:
        enterOuterAlt(_localctx, 12);
        state = 220;
        match(TOKEN_BREAK);
        state = 222;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SEMI) {
          state = 221;
          match(TOKEN_SEMI);
        }

        break;
      case 13:
        enterOuterAlt(_localctx, 13);
        state = 224;
        match(TOKEN_CONTINUE);
        state = 226;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SEMI) {
          state = 225;
          match(TOKEN_SEMI);
        }

        break;
      case 14:
        enterOuterAlt(_localctx, 14);
        state = 228;
        match(TOKEN_RETURN);
        state = 230;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((((_la - 18)) & ~0x3f) == 0 && ((1 << (_la - 18)) & 1139701801428680707) != 0)) {
          state = 229;
          expression(0);
        }

        state = 232;
        match(TOKEN_SEMI);
        break;
      case 15:
        enterOuterAlt(_localctx, 15);
        state = 233;
        match(TOKEN_THROW);
        state = 234;
        expression(0);
        state = 236;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SEMI) {
          state = 235;
          match(TOKEN_SEMI);
        }

        break;
      case 16:
        enterOuterAlt(_localctx, 16);
        state = 238;
        block();
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

  VariableDeclarationContext variableDeclaration() {
    dynamic _localctx = VariableDeclarationContext(context, state);
    enterRule(_localctx, 30, RULE_variableDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 241;
      type();
      state = 242;
      match(TOKEN_ID);
      state = 245;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ASSIGN) {
        state = 243;
        match(TOKEN_ASSIGN);
        state = 244;
        expression(0);
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 32, RULE_assignment);
    int _la;
    try {
      state = 256;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 30, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 247;
        assignable();
        state = 248;
        match(TOKEN_ASSIGN);
        state = 249;
        expression(0);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 251;
        assignable();
        state = 252;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_INC || _la == TOKEN_DEC)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 254;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_INC || _la == TOKEN_DEC)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 255;
        assignable();
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

  AssignableContext assignable() {
    dynamic _localctx = AssignableContext(context, state);
    enterRule(_localctx, 34, RULE_assignable);
    try {
      state = 263;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 31, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 258;
        match(TOKEN_ID);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 259;
        memberAccess();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 260;
        match(TOKEN_THIS);
        state = 261;
        match(TOKEN_DOT);
        state = 262;
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

  MemberAccessContext memberAccess() {
    dynamic _localctx = MemberAccessContext(context, state);
    enterRule(_localctx, 36, RULE_memberAccess);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 265;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 18)) & ~0x3f) == 0 && ((1 << (_la - 18)) & 576460752303423491) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 272; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 272;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_DOT:
          state = 266;
          match(TOKEN_DOT);
          state = 267;
          match(TOKEN_ID);
          break;
        case TOKEN_LBRACK:
          state = 268;
          match(TOKEN_LBRACK);
          state = 269;
          expression(0);
          state = 270;
          match(TOKEN_RBRACK);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 274; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while (_la == TOKEN_DOT || _la == TOKEN_LBRACK);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MethodCallContext methodCall() {
    dynamic _localctx = MethodCallContext(context, state);
    enterRule(_localctx, 38, RULE_methodCall);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 280;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 34, context)) {
      case 1:
        state = 276;
        match(TOKEN_ID);
        break;
      case 2:
        state = 277;
        memberAccess();
        break;
      case 3:
        state = 278;
        match(TOKEN_THIS);
        break;
      case 4:
        state = 279;
        match(TOKEN_NULL_REF);
        break;
      }
      state = 282;
      match(TOKEN_LPAREN);
      state = 284;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((((_la - 18)) & ~0x3f) == 0 && ((1 << (_la - 18)) & 1139701801428680707) != 0)) {
        state = 283;
        argumentList();
      }

      state = 286;
      match(TOKEN_RPAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArgumentListContext argumentList() {
    dynamic _localctx = ArgumentListContext(context, state);
    enterRule(_localctx, 40, RULE_argumentList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 288;
      expression(0);
      state = 293;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 289;
        match(TOKEN_COMMA);
        state = 290;
        expression(0);
        state = 295;
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

  IfStatementContext ifStatement() {
    dynamic _localctx = IfStatementContext(context, state);
    enterRule(_localctx, 42, RULE_ifStatement);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 296;
      match(TOKEN_IF);
      state = 297;
      match(TOKEN_LPAREN);
      state = 298;
      expression(0);
      state = 299;
      match(TOKEN_RPAREN);
      state = 300;
      statement();
      state = 310;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 37, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 301;
          match(TOKEN_ELSE);
          state = 302;
          match(TOKEN_IF);
          state = 303;
          match(TOKEN_LPAREN);
          state = 304;
          expression(0);
          state = 305;
          match(TOKEN_RPAREN);
          state = 306;
          statement(); 
        }
        state = 312;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 37, context);
      }
      state = 315;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
      case 1:
        state = 313;
        match(TOKEN_ELSE);
        state = 314;
        statement();
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

  SwitchStatementContext switchStatement() {
    dynamic _localctx = SwitchStatementContext(context, state);
    enterRule(_localctx, 44, RULE_switchStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 317;
      match(TOKEN_SWITCH);
      state = 318;
      match(TOKEN_LPAREN);
      state = 319;
      expression(0);
      state = 320;
      match(TOKEN_RPAREN);
      state = 321;
      match(TOKEN_LBRACE);
      state = 325;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_CASE) {
        state = 322;
        switchCase();
        state = 327;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 329;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_DEFAULT) {
        state = 328;
        defaultCase();
      }

      state = 331;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SwitchCaseContext switchCase() {
    dynamic _localctx = SwitchCaseContext(context, state);
    enterRule(_localctx, 46, RULE_switchCase);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 333;
      match(TOKEN_CASE);
      state = 334;
      expression(0);
      state = 335;
      match(TOKEN_COLON);
      state = 339;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (((((_la - 14)) & ~0x3f) == 0 && ((1 << (_la - 14)) & -9205354335523522177) != 0)) {
        state = 336;
        statement();
        state = 341;
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

  DefaultCaseContext defaultCase() {
    dynamic _localctx = DefaultCaseContext(context, state);
    enterRule(_localctx, 48, RULE_defaultCase);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 342;
      match(TOKEN_DEFAULT);
      state = 343;
      match(TOKEN_COLON);
      state = 347;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (((((_la - 14)) & ~0x3f) == 0 && ((1 << (_la - 14)) & -9205354335523522177) != 0)) {
        state = 344;
        statement();
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

  WhileStatementContext whileStatement() {
    dynamic _localctx = WhileStatementContext(context, state);
    enterRule(_localctx, 50, RULE_whileStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 350;
      match(TOKEN_WHILE);
      state = 351;
      match(TOKEN_LPAREN);
      state = 352;
      expression(0);
      state = 353;
      match(TOKEN_RPAREN);
      state = 354;
      statement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DoWhileStatementContext doWhileStatement() {
    dynamic _localctx = DoWhileStatementContext(context, state);
    enterRule(_localctx, 52, RULE_doWhileStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 356;
      match(TOKEN_DO);
      state = 357;
      block();
      state = 358;
      match(TOKEN_WHILE);
      state = 359;
      match(TOKEN_LPAREN);
      state = 360;
      expression(0);
      state = 361;
      match(TOKEN_RPAREN);
      state = 363;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_SEMI) {
        state = 362;
        match(TOKEN_SEMI);
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

  ForStatementContext forStatement() {
    dynamic _localctx = ForStatementContext(context, state);
    enterRule(_localctx, 54, RULE_forStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 365;
      match(TOKEN_FOR);
      state = 366;
      match(TOKEN_LPAREN);
      state = 368;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((((_la - 37)) & ~0x3f) == 0 && ((1 << (_la - 37)) & 1099511628287) != 0)) {
        state = 367;
        variableDeclaration();
      }

      state = 370;
      match(TOKEN_SEMI);
      state = 372;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((((_la - 18)) & ~0x3f) == 0 && ((1 << (_la - 18)) & 1139701801428680707) != 0)) {
        state = 371;
        expression(0);
      }

      state = 374;
      match(TOKEN_SEMI);
      state = 376;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((((_la - 18)) & ~0x3f) == 0 && ((1 << (_la - 18)) & 576460958461853699) != 0)) {
        state = 375;
        assignment();
      }

      state = 378;
      match(TOKEN_RPAREN);
      state = 379;
      statement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ForEachStatementContext forEachStatement() {
    dynamic _localctx = ForEachStatementContext(context, state);
    enterRule(_localctx, 56, RULE_forEachStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 381;
      match(TOKEN_FOR);
      state = 382;
      match(TOKEN_LPAREN);
      state = 383;
      type();
      state = 384;
      match(TOKEN_ID);
      state = 385;
      match(TOKEN_IN);
      state = 386;
      expression(0);
      state = 387;
      match(TOKEN_RPAREN);
      state = 388;
      statement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TryStatementContext tryStatement() {
    dynamic _localctx = TryStatementContext(context, state);
    enterRule(_localctx, 58, RULE_tryStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 390;
      match(TOKEN_TRY);
      state = 391;
      block();
      state = 392;
      match(TOKEN_CATCH);
      state = 393;
      match(TOKEN_LPAREN);
      state = 394;
      type();
      state = 395;
      match(TOKEN_ID);
      state = 396;
      match(TOKEN_RPAREN);
      state = 397;
      block();
      state = 400;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_FINALLY) {
        state = 398;
        match(TOKEN_FINALLY);
        state = 399;
        block();
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

  PrintStatementContext printStatement() {
    dynamic _localctx = PrintStatementContext(context, state);
    enterRule(_localctx, 60, RULE_printStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 402;
      match(TOKEN_PRINT);
      state = 403;
      match(TOKEN_LPAREN);
      state = 404;
      expression(0);
      state = 405;
      match(TOKEN_RPAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionContext expression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 62;
    enterRecursionRule(_localctx, 62, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 411;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_PLUS:
      case TOKEN_MINUS:
      case TOKEN_NOT:
        state = 408;
        _la = tokenStream.LA(1)!;
        if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2522015791327477760) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 409;
        expression(5);
        break;
      case TOKEN_THIS:
      case TOKEN_NULL_REF:
      case TOKEN_NEW:
      case TOKEN_TRUE:
      case TOKEN_FALSE:
      case TOKEN_NULL:
      case TOKEN_LPAREN:
      case TOKEN_LBRACK:
      case TOKEN_FLOAT:
      case TOKEN_DOUBLE:
      case TOKEN_INT:
      case TOKEN_STRING:
      case TOKEN_CHAR:
      case TOKEN_ID:
        state = 410;
        atom();
        break;
      default:
        throw NoViableAltException(this);
      }
      context!.stop = tokenStream.LT(-1);
      state = 447;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 51, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 445;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 50, context)) {
          case 1:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 413;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 414;
            match(TOKEN_OR);
            state = 415;
            expression(12);
            break;
          case 2:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 416;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 417;
            match(TOKEN_AND);
            state = 418;
            expression(11);
            break;
          case 3:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 419;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 420;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_EQ || _la == TOKEN_NEQ)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 421;
            expression(10);
            break;
          case 4:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 422;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 423;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 16888498602639360) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 424;
            expression(9);
            break;
          case 5:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 425;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }
            state = 426;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_PLUS || _la == TOKEN_MINUS)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 427;
            expression(8);
            break;
          case 6:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 428;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }
            state = 429;
            _la = tokenStream.LA(1)!;
            if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2017612633061982208) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 430;
            expression(7);
            break;
          case 7:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 431;
            if (!(precpred(context, 4))) {
              throw FailedPredicateException(this, "precpred(context, 4)");
            }
            state = 432;
            match(TOKEN_LBRACK);
            state = 433;
            expression(0);
            state = 434;
            match(TOKEN_RBRACK);
            break;
          case 8:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 436;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 437;
            match(TOKEN_DOT);
            state = 438;
            match(TOKEN_ID);
            break;
          case 9:
            _localctx = ExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 439;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 440;
            match(TOKEN_LPAREN);
            state = 442;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (((((_la - 18)) & ~0x3f) == 0 && ((1 << (_la - 18)) & 1139701801428680707) != 0)) {
              state = 441;
              argumentList();
            }

            state = 444;
            match(TOKEN_RPAREN);
            break;
          } 
        }
        state = 449;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 51, context);
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

  AtomContext atom() {
    dynamic _localctx = AtomContext(context, state);
    enterRule(_localctx, 64, RULE_atom);
    int _la;
    try {
      state = 466;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_TRUE:
      case TOKEN_FALSE:
      case TOKEN_NULL:
      case TOKEN_FLOAT:
      case TOKEN_DOUBLE:
      case TOKEN_INT:
      case TOKEN_STRING:
      case TOKEN_CHAR:
        enterOuterAlt(_localctx, 1);
        state = 450;
        literal();
        break;
      case TOKEN_ID:
        enterOuterAlt(_localctx, 2);
        state = 451;
        match(TOKEN_ID);
        break;
      case TOKEN_THIS:
        enterOuterAlt(_localctx, 3);
        state = 452;
        match(TOKEN_THIS);
        break;
      case TOKEN_NULL_REF:
        enterOuterAlt(_localctx, 4);
        state = 453;
        match(TOKEN_NULL_REF);
        break;
      case TOKEN_NEW:
        enterOuterAlt(_localctx, 5);
        state = 454;
        match(TOKEN_NEW);
        state = 455;
        match(TOKEN_ID);
        state = 456;
        match(TOKEN_LPAREN);
        state = 458;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((((_la - 18)) & ~0x3f) == 0 && ((1 << (_la - 18)) & 1139701801428680707) != 0)) {
          state = 457;
          argumentList();
        }

        state = 460;
        match(TOKEN_RPAREN);
        break;
      case TOKEN_LBRACK:
        enterOuterAlt(_localctx, 6);
        state = 461;
        arrayLiteral();
        break;
      case TOKEN_LPAREN:
        enterOuterAlt(_localctx, 7);
        state = 462;
        match(TOKEN_LPAREN);
        state = 463;
        expression(0);
        state = 464;
        match(TOKEN_RPAREN);
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

  ArrayLiteralContext arrayLiteral() {
    dynamic _localctx = ArrayLiteralContext(context, state);
    enterRule(_localctx, 66, RULE_arrayLiteral);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 468;
      match(TOKEN_LBRACK);
      state = 470;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((((_la - 18)) & ~0x3f) == 0 && ((1 << (_la - 18)) & 1139701801428680707) != 0)) {
        state = 469;
        argumentList();
      }

      state = 472;
      match(TOKEN_RBRACK);
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
    enterRule(_localctx, 68, RULE_literal);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 474;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 34)) & ~0x3f) == 0 && ((1 << (_la - 34)) & 8521215115271) != 0))) {
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 70, RULE_type);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 476;
      baseType();
      state = 481;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_LBRACK) {
        state = 477;
        match(TOKEN_LBRACK);
        state = 478;
        match(TOKEN_RBRACK);
        state = 483;
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

  BaseTypeContext baseType() {
    dynamic _localctx = BaseTypeContext(context, state);
    enterRule(_localctx, 72, RULE_baseType);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 484;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 37)) & ~0x3f) == 0 && ((1 << (_la - 37)) & 1099511628287) != 0))) {
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
    case 31:
      return _expression_sempred(_localctx as ExpressionContext?, predIndex);
    }
    return true;
  }
  bool _expression_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 11);
      case 1: return precpred(context, 10);
      case 2: return precpred(context, 9);
      case 3: return precpred(context, 8);
      case 4: return precpred(context, 7);
      case 5: return precpred(context, 6);
      case 6: return precpred(context, 4);
      case 7: return precpred(context, 3);
      case 8: return precpred(context, 2);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,80,487,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,
      27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,
      7,34,2,35,7,35,2,36,7,36,1,0,1,0,1,0,5,0,78,8,0,10,0,12,0,81,9,0,1,
      0,1,0,1,1,1,1,1,1,3,1,88,8,1,1,2,1,2,1,2,5,2,93,8,2,10,2,12,2,96,9,
      2,1,3,5,3,99,8,3,10,3,12,3,102,9,3,1,3,1,3,1,3,3,3,107,8,3,1,3,3,3,
      110,8,3,1,3,1,3,5,3,114,8,3,10,3,12,3,117,9,3,1,3,1,3,1,4,1,4,1,4,
      1,5,1,5,1,5,1,5,5,5,128,8,5,10,5,12,5,131,9,5,1,6,5,6,134,8,6,10,6,
      12,6,137,9,6,1,6,1,6,1,6,3,6,142,8,6,1,7,1,7,1,7,1,7,3,7,148,8,7,1,
      7,3,7,151,8,7,1,8,3,8,154,8,8,1,8,1,8,1,8,3,8,159,8,8,1,8,1,8,1,8,
      3,8,164,8,8,3,8,166,8,8,1,9,1,9,1,9,3,9,171,8,9,1,9,1,9,1,9,1,10,1,
      10,1,11,1,11,1,11,5,11,181,8,11,10,11,12,11,184,9,11,1,12,1,12,1,12,
      1,13,1,13,5,13,191,8,13,10,13,12,13,194,9,13,1,13,1,13,1,14,1,14,3,
      14,200,8,14,1,14,1,14,3,14,204,8,14,1,14,1,14,3,14,208,8,14,1,14,1,
      14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,3,14,219,8,14,1,14,1,14,3,14,
      223,8,14,1,14,1,14,3,14,227,8,14,1,14,1,14,3,14,231,8,14,1,14,1,14,
      1,14,1,14,3,14,237,8,14,1,14,3,14,240,8,14,1,15,1,15,1,15,1,15,3,15,
      246,8,15,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,3,16,257,8,16,
      1,17,1,17,1,17,1,17,1,17,3,17,264,8,17,1,18,1,18,1,18,1,18,1,18,1,
      18,1,18,4,18,273,8,18,11,18,12,18,274,1,19,1,19,1,19,1,19,3,19,281,
      8,19,1,19,1,19,3,19,285,8,19,1,19,1,19,1,20,1,20,1,20,5,20,292,8,20,
      10,20,12,20,295,9,20,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,
      1,21,1,21,1,21,5,21,309,8,21,10,21,12,21,312,9,21,1,21,1,21,3,21,316,
      8,21,1,22,1,22,1,22,1,22,1,22,1,22,5,22,324,8,22,10,22,12,22,327,9,
      22,1,22,3,22,330,8,22,1,22,1,22,1,23,1,23,1,23,1,23,5,23,338,8,23,
      10,23,12,23,341,9,23,1,24,1,24,1,24,5,24,346,8,24,10,24,12,24,349,
      9,24,1,25,1,25,1,25,1,25,1,25,1,25,1,26,1,26,1,26,1,26,1,26,1,26,1,
      26,3,26,364,8,26,1,27,1,27,1,27,3,27,369,8,27,1,27,1,27,3,27,373,8,
      27,1,27,1,27,3,27,377,8,27,1,27,1,27,1,27,1,28,1,28,1,28,1,28,1,28,
      1,28,1,28,1,28,1,28,1,29,1,29,1,29,1,29,1,29,1,29,1,29,1,29,1,29,1,
      29,3,29,401,8,29,1,30,1,30,1,30,1,30,1,30,1,31,1,31,1,31,1,31,3,31,
      412,8,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,
      31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,
      1,31,1,31,1,31,1,31,3,31,443,8,31,1,31,5,31,446,8,31,10,31,12,31,449,
      9,31,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,3,32,459,8,32,1,32,1,
      32,1,32,1,32,1,32,1,32,3,32,467,8,32,1,33,1,33,3,33,471,8,33,1,33,
      1,33,1,34,1,34,1,35,1,35,1,35,5,35,480,8,35,10,35,12,35,483,9,35,1,
      36,1,36,1,36,0,1,62,37,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,
      32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,0,10,
      1,0,6,13,1,0,54,55,2,0,18,19,77,77,2,0,56,57,61,61,1,0,48,49,1,0,50,
      53,1,0,56,57,1,0,58,60,2,0,34,36,72,76,2,0,37,45,77,77,537,0,79,1,
      0,0,0,2,84,1,0,0,0,4,89,1,0,0,0,6,100,1,0,0,0,8,120,1,0,0,0,10,123,
      1,0,0,0,12,135,1,0,0,0,14,143,1,0,0,0,16,153,1,0,0,0,18,167,1,0,0,
      0,20,175,1,0,0,0,22,177,1,0,0,0,24,185,1,0,0,0,26,188,1,0,0,0,28,239,
      1,0,0,0,30,241,1,0,0,0,32,256,1,0,0,0,34,263,1,0,0,0,36,265,1,0,0,
      0,38,280,1,0,0,0,40,288,1,0,0,0,42,296,1,0,0,0,44,317,1,0,0,0,46,333,
      1,0,0,0,48,342,1,0,0,0,50,350,1,0,0,0,52,356,1,0,0,0,54,365,1,0,0,
      0,56,381,1,0,0,0,58,390,1,0,0,0,60,402,1,0,0,0,62,411,1,0,0,0,64,466,
      1,0,0,0,66,468,1,0,0,0,68,474,1,0,0,0,70,476,1,0,0,0,72,484,1,0,0,
      0,74,78,3,2,1,0,75,78,3,6,3,0,76,78,3,28,14,0,77,74,1,0,0,0,77,75,
      1,0,0,0,77,76,1,0,0,0,78,81,1,0,0,0,79,77,1,0,0,0,79,80,1,0,0,0,80,
      82,1,0,0,0,81,79,1,0,0,0,82,83,5,0,0,1,83,1,1,0,0,0,84,85,5,1,0,0,
      85,87,3,4,2,0,86,88,5,62,0,0,87,86,1,0,0,0,87,88,1,0,0,0,88,3,1,0,
      0,0,89,94,5,77,0,0,90,91,5,64,0,0,91,93,5,77,0,0,92,90,1,0,0,0,93,
      96,1,0,0,0,94,92,1,0,0,0,94,95,1,0,0,0,95,5,1,0,0,0,96,94,1,0,0,0,
      97,99,3,20,10,0,98,97,1,0,0,0,99,102,1,0,0,0,100,98,1,0,0,0,100,101,
      1,0,0,0,101,103,1,0,0,0,102,100,1,0,0,0,103,104,5,2,0,0,104,106,5,
      77,0,0,105,107,3,8,4,0,106,105,1,0,0,0,106,107,1,0,0,0,107,109,1,0,
      0,0,108,110,3,10,5,0,109,108,1,0,0,0,109,110,1,0,0,0,110,111,1,0,0,
      0,111,115,5,68,0,0,112,114,3,12,6,0,113,112,1,0,0,0,114,117,1,0,0,
      0,115,113,1,0,0,0,115,116,1,0,0,0,116,118,1,0,0,0,117,115,1,0,0,0,
      118,119,5,69,0,0,119,7,1,0,0,0,120,121,5,3,0,0,121,122,5,77,0,0,122,
      9,1,0,0,0,123,124,5,4,0,0,124,129,5,77,0,0,125,126,5,63,0,0,126,128,
      5,77,0,0,127,125,1,0,0,0,128,131,1,0,0,0,129,127,1,0,0,0,129,130,1,
      0,0,0,130,11,1,0,0,0,131,129,1,0,0,0,132,134,3,20,10,0,133,132,1,0,
      0,0,134,137,1,0,0,0,135,133,1,0,0,0,135,136,1,0,0,0,136,141,1,0,0,
      0,137,135,1,0,0,0,138,142,3,16,8,0,139,142,3,14,7,0,140,142,3,18,9,
      0,141,138,1,0,0,0,141,139,1,0,0,0,141,140,1,0,0,0,142,13,1,0,0,0,143,
      144,3,70,35,0,144,147,5,77,0,0,145,146,5,5,0,0,146,148,3,62,31,0,147,
      145,1,0,0,0,147,148,1,0,0,0,148,150,1,0,0,0,149,151,5,62,0,0,150,149,
      1,0,0,0,150,151,1,0,0,0,151,15,1,0,0,0,152,154,3,70,35,0,153,152,1,
      0,0,0,153,154,1,0,0,0,154,155,1,0,0,0,155,156,5,77,0,0,156,158,5,66,
      0,0,157,159,3,22,11,0,158,157,1,0,0,0,158,159,1,0,0,0,159,160,1,0,
      0,0,160,165,5,67,0,0,161,166,3,26,13,0,162,164,5,62,0,0,163,162,1,
      0,0,0,163,164,1,0,0,0,164,166,1,0,0,0,165,161,1,0,0,0,165,163,1,0,
      0,0,166,17,1,0,0,0,167,168,5,77,0,0,168,170,5,66,0,0,169,171,3,22,
      11,0,170,169,1,0,0,0,170,171,1,0,0,0,171,172,1,0,0,0,172,173,5,67,
      0,0,173,174,3,26,13,0,174,19,1,0,0,0,175,176,7,0,0,0,176,21,1,0,0,
      0,177,182,3,24,12,0,178,179,5,63,0,0,179,181,3,24,12,0,180,178,1,0,
      0,0,181,184,1,0,0,0,182,180,1,0,0,0,182,183,1,0,0,0,183,23,1,0,0,0,
      184,182,1,0,0,0,185,186,3,70,35,0,186,187,5,77,0,0,187,25,1,0,0,0,
      188,192,5,68,0,0,189,191,3,28,14,0,190,189,1,0,0,0,191,194,1,0,0,0,
      192,190,1,0,0,0,192,193,1,0,0,0,193,195,1,0,0,0,194,192,1,0,0,0,195,
      196,5,69,0,0,196,27,1,0,0,0,197,199,3,30,15,0,198,200,5,62,0,0,199,
      198,1,0,0,0,199,200,1,0,0,0,200,240,1,0,0,0,201,203,3,32,16,0,202,
      204,5,62,0,0,203,202,1,0,0,0,203,204,1,0,0,0,204,240,1,0,0,0,205,207,
      3,38,19,0,206,208,5,62,0,0,207,206,1,0,0,0,207,208,1,0,0,0,208,240,
      1,0,0,0,209,240,3,42,21,0,210,240,3,44,22,0,211,240,3,50,25,0,212,
      240,3,52,26,0,213,240,3,54,27,0,214,240,3,56,28,0,215,240,3,58,29,
      0,216,218,3,60,30,0,217,219,5,62,0,0,218,217,1,0,0,0,218,219,1,0,0,
      0,219,240,1,0,0,0,220,222,5,14,0,0,221,223,5,62,0,0,222,221,1,0,0,
      0,222,223,1,0,0,0,223,240,1,0,0,0,224,226,5,15,0,0,225,227,5,62,0,
      0,226,225,1,0,0,0,226,227,1,0,0,0,227,240,1,0,0,0,228,230,5,16,0,0,
      229,231,3,62,31,0,230,229,1,0,0,0,230,231,1,0,0,0,231,232,1,0,0,0,
      232,240,5,62,0,0,233,234,5,17,0,0,234,236,3,62,31,0,235,237,5,62,0,
      0,236,235,1,0,0,0,236,237,1,0,0,0,237,240,1,0,0,0,238,240,3,26,13,
      0,239,197,1,0,0,0,239,201,1,0,0,0,239,205,1,0,0,0,239,209,1,0,0,0,
      239,210,1,0,0,0,239,211,1,0,0,0,239,212,1,0,0,0,239,213,1,0,0,0,239,
      214,1,0,0,0,239,215,1,0,0,0,239,216,1,0,0,0,239,220,1,0,0,0,239,224,
      1,0,0,0,239,228,1,0,0,0,239,233,1,0,0,0,239,238,1,0,0,0,240,29,1,0,
      0,0,241,242,3,70,35,0,242,245,5,77,0,0,243,244,5,5,0,0,244,246,3,62,
      31,0,245,243,1,0,0,0,245,246,1,0,0,0,246,31,1,0,0,0,247,248,3,34,17,
      0,248,249,5,5,0,0,249,250,3,62,31,0,250,257,1,0,0,0,251,252,3,34,17,
      0,252,253,7,1,0,0,253,257,1,0,0,0,254,255,7,1,0,0,255,257,3,34,17,
      0,256,247,1,0,0,0,256,251,1,0,0,0,256,254,1,0,0,0,257,33,1,0,0,0,258,
      264,5,77,0,0,259,264,3,36,18,0,260,261,5,18,0,0,261,262,5,64,0,0,262,
      264,5,77,0,0,263,258,1,0,0,0,263,259,1,0,0,0,263,260,1,0,0,0,264,35,
      1,0,0,0,265,272,7,2,0,0,266,267,5,64,0,0,267,273,5,77,0,0,268,269,
      5,70,0,0,269,270,3,62,31,0,270,271,5,71,0,0,271,273,1,0,0,0,272,266,
      1,0,0,0,272,268,1,0,0,0,273,274,1,0,0,0,274,272,1,0,0,0,274,275,1,
      0,0,0,275,37,1,0,0,0,276,281,5,77,0,0,277,281,3,36,18,0,278,281,5,
      18,0,0,279,281,5,19,0,0,280,276,1,0,0,0,280,277,1,0,0,0,280,278,1,
      0,0,0,280,279,1,0,0,0,281,282,1,0,0,0,282,284,5,66,0,0,283,285,3,40,
      20,0,284,283,1,0,0,0,284,285,1,0,0,0,285,286,1,0,0,0,286,287,5,67,
      0,0,287,39,1,0,0,0,288,293,3,62,31,0,289,290,5,63,0,0,290,292,3,62,
      31,0,291,289,1,0,0,0,292,295,1,0,0,0,293,291,1,0,0,0,293,294,1,0,0,
      0,294,41,1,0,0,0,295,293,1,0,0,0,296,297,5,20,0,0,297,298,5,66,0,0,
      298,299,3,62,31,0,299,300,5,67,0,0,300,310,3,28,14,0,301,302,5,21,
      0,0,302,303,5,20,0,0,303,304,5,66,0,0,304,305,3,62,31,0,305,306,5,
      67,0,0,306,307,3,28,14,0,307,309,1,0,0,0,308,301,1,0,0,0,309,312,1,
      0,0,0,310,308,1,0,0,0,310,311,1,0,0,0,311,315,1,0,0,0,312,310,1,0,
      0,0,313,314,5,21,0,0,314,316,3,28,14,0,315,313,1,0,0,0,315,316,1,0,
      0,0,316,43,1,0,0,0,317,318,5,22,0,0,318,319,5,66,0,0,319,320,3,62,
      31,0,320,321,5,67,0,0,321,325,5,68,0,0,322,324,3,46,23,0,323,322,1,
      0,0,0,324,327,1,0,0,0,325,323,1,0,0,0,325,326,1,0,0,0,326,329,1,0,
      0,0,327,325,1,0,0,0,328,330,3,48,24,0,329,328,1,0,0,0,329,330,1,0,
      0,0,330,331,1,0,0,0,331,332,5,69,0,0,332,45,1,0,0,0,333,334,5,23,0,
      0,334,335,3,62,31,0,335,339,5,65,0,0,336,338,3,28,14,0,337,336,1,0,
      0,0,338,341,1,0,0,0,339,337,1,0,0,0,339,340,1,0,0,0,340,47,1,0,0,0,
      341,339,1,0,0,0,342,343,5,24,0,0,343,347,5,65,0,0,344,346,3,28,14,
      0,345,344,1,0,0,0,346,349,1,0,0,0,347,345,1,0,0,0,347,348,1,0,0,0,
      348,49,1,0,0,0,349,347,1,0,0,0,350,351,5,25,0,0,351,352,5,66,0,0,352,
      353,3,62,31,0,353,354,5,67,0,0,354,355,3,28,14,0,355,51,1,0,0,0,356,
      357,5,26,0,0,357,358,3,26,13,0,358,359,5,25,0,0,359,360,5,66,0,0,360,
      361,3,62,31,0,361,363,5,67,0,0,362,364,5,62,0,0,363,362,1,0,0,0,363,
      364,1,0,0,0,364,53,1,0,0,0,365,366,5,27,0,0,366,368,5,66,0,0,367,369,
      3,30,15,0,368,367,1,0,0,0,368,369,1,0,0,0,369,370,1,0,0,0,370,372,
      5,62,0,0,371,373,3,62,31,0,372,371,1,0,0,0,372,373,1,0,0,0,373,374,
      1,0,0,0,374,376,5,62,0,0,375,377,3,32,16,0,376,375,1,0,0,0,376,377,
      1,0,0,0,377,378,1,0,0,0,378,379,5,67,0,0,379,380,3,28,14,0,380,55,
      1,0,0,0,381,382,5,27,0,0,382,383,5,66,0,0,383,384,3,70,35,0,384,385,
      5,77,0,0,385,386,5,28,0,0,386,387,3,62,31,0,387,388,5,67,0,0,388,389,
      3,28,14,0,389,57,1,0,0,0,390,391,5,29,0,0,391,392,3,26,13,0,392,393,
      5,30,0,0,393,394,5,66,0,0,394,395,3,70,35,0,395,396,5,77,0,0,396,397,
      5,67,0,0,397,400,3,26,13,0,398,399,5,31,0,0,399,401,3,26,13,0,400,
      398,1,0,0,0,400,401,1,0,0,0,401,59,1,0,0,0,402,403,5,32,0,0,403,404,
      5,66,0,0,404,405,3,62,31,0,405,406,5,67,0,0,406,61,1,0,0,0,407,408,
      6,31,-1,0,408,409,7,3,0,0,409,412,3,62,31,5,410,412,3,64,32,0,411,
      407,1,0,0,0,411,410,1,0,0,0,412,447,1,0,0,0,413,414,10,11,0,0,414,
      415,5,46,0,0,415,446,3,62,31,12,416,417,10,10,0,0,417,418,5,47,0,0,
      418,446,3,62,31,11,419,420,10,9,0,0,420,421,7,4,0,0,421,446,3,62,31,
      10,422,423,10,8,0,0,423,424,7,5,0,0,424,446,3,62,31,9,425,426,10,7,
      0,0,426,427,7,6,0,0,427,446,3,62,31,8,428,429,10,6,0,0,429,430,7,7,
      0,0,430,446,3,62,31,7,431,432,10,4,0,0,432,433,5,70,0,0,433,434,3,
      62,31,0,434,435,5,71,0,0,435,446,1,0,0,0,436,437,10,3,0,0,437,438,
      5,64,0,0,438,446,5,77,0,0,439,440,10,2,0,0,440,442,5,66,0,0,441,443,
      3,40,20,0,442,441,1,0,0,0,442,443,1,0,0,0,443,444,1,0,0,0,444,446,
      5,67,0,0,445,413,1,0,0,0,445,416,1,0,0,0,445,419,1,0,0,0,445,422,1,
      0,0,0,445,425,1,0,0,0,445,428,1,0,0,0,445,431,1,0,0,0,445,436,1,0,
      0,0,445,439,1,0,0,0,446,449,1,0,0,0,447,445,1,0,0,0,447,448,1,0,0,
      0,448,63,1,0,0,0,449,447,1,0,0,0,450,467,3,68,34,0,451,467,5,77,0,
      0,452,467,5,18,0,0,453,467,5,19,0,0,454,455,5,33,0,0,455,456,5,77,
      0,0,456,458,5,66,0,0,457,459,3,40,20,0,458,457,1,0,0,0,458,459,1,0,
      0,0,459,460,1,0,0,0,460,467,5,67,0,0,461,467,3,66,33,0,462,463,5,66,
      0,0,463,464,3,62,31,0,464,465,5,67,0,0,465,467,1,0,0,0,466,450,1,0,
      0,0,466,451,1,0,0,0,466,452,1,0,0,0,466,453,1,0,0,0,466,454,1,0,0,
      0,466,461,1,0,0,0,466,462,1,0,0,0,467,65,1,0,0,0,468,470,5,70,0,0,
      469,471,3,40,20,0,470,469,1,0,0,0,470,471,1,0,0,0,471,472,1,0,0,0,
      472,473,5,71,0,0,473,67,1,0,0,0,474,475,7,8,0,0,475,69,1,0,0,0,476,
      481,3,72,36,0,477,478,5,70,0,0,478,480,5,71,0,0,479,477,1,0,0,0,480,
      483,1,0,0,0,481,479,1,0,0,0,481,482,1,0,0,0,482,71,1,0,0,0,483,481,
      1,0,0,0,484,485,7,9,0,0,485,73,1,0,0,0,56,77,79,87,94,100,106,109,
      115,129,135,141,147,150,153,158,163,165,170,182,192,199,203,207,218,
      222,226,230,236,239,245,256,263,272,274,280,284,293,310,315,325,329,
      339,347,363,368,372,376,400,411,442,445,447,458,466,470,481
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ProgramContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(TralhaParser.TOKEN_EOF, 0);
  List<ImportDeclarationContext> importDeclarations() => getRuleContexts<ImportDeclarationContext>();
  ImportDeclarationContext? importDeclaration(int i) => getRuleContext<ImportDeclarationContext>(i);
  List<ClassDeclarationContext> classDeclarations() => getRuleContexts<ClassDeclarationContext>();
  ClassDeclarationContext? classDeclaration(int i) => getRuleContext<ClassDeclarationContext>(i);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  ProgramContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_program;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterProgram(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitProgram(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitProgram(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ImportDeclarationContext extends ParserRuleContext {
  TerminalNode? IMPORT() => getToken(TralhaParser.TOKEN_IMPORT, 0);
  QualifiedNameContext? qualifiedName() => getRuleContext<QualifiedNameContext>(0);
  TerminalNode? SEMI() => getToken(TralhaParser.TOKEN_SEMI, 0);
  ImportDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_importDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterImportDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitImportDeclaration(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitImportDeclaration(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class QualifiedNameContext extends ParserRuleContext {
  List<TerminalNode> IDs() => getTokens(TralhaParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(TralhaParser.TOKEN_ID, i);
  List<TerminalNode> DOTs() => getTokens(TralhaParser.TOKEN_DOT);
  TerminalNode? DOT(int i) => getToken(TralhaParser.TOKEN_DOT, i);
  QualifiedNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_qualifiedName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterQualifiedName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitQualifiedName(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitQualifiedName(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ClassDeclarationContext extends ParserRuleContext {
  TerminalNode? CLASS() => getToken(TralhaParser.TOKEN_CLASS, 0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  TerminalNode? LBRACE() => getToken(TralhaParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(TralhaParser.TOKEN_RBRACE, 0);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  ExtendsClauseContext? extendsClause() => getRuleContext<ExtendsClauseContext>(0);
  ImplementsClauseContext? implementsClause() => getRuleContext<ImplementsClauseContext>(0);
  List<MemberDeclarationContext> memberDeclarations() => getRuleContexts<MemberDeclarationContext>();
  MemberDeclarationContext? memberDeclaration(int i) => getRuleContext<MemberDeclarationContext>(i);
  ClassDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_classDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterClassDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitClassDeclaration(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitClassDeclaration(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ExtendsClauseContext extends ParserRuleContext {
  TerminalNode? EXTENDS() => getToken(TralhaParser.TOKEN_EXTENDS, 0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  ExtendsClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_extendsClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterExtendsClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitExtendsClause(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitExtendsClause(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ImplementsClauseContext extends ParserRuleContext {
  TerminalNode? IMPLEMENTS() => getToken(TralhaParser.TOKEN_IMPLEMENTS, 0);
  List<TerminalNode> IDs() => getTokens(TralhaParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(TralhaParser.TOKEN_ID, i);
  List<TerminalNode> COMMAs() => getTokens(TralhaParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(TralhaParser.TOKEN_COMMA, i);
  ImplementsClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_implementsClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterImplementsClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitImplementsClause(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitImplementsClause(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class MemberDeclarationContext extends ParserRuleContext {
  MethodDeclarationContext? methodDeclaration() => getRuleContext<MethodDeclarationContext>(0);
  FieldDeclarationContext? fieldDeclaration() => getRuleContext<FieldDeclarationContext>(0);
  ConstructorDeclarationContext? constructorDeclaration() => getRuleContext<ConstructorDeclarationContext>(0);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  MemberDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_memberDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterMemberDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitMemberDeclaration(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitMemberDeclaration(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class FieldDeclarationContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(TralhaParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMI() => getToken(TralhaParser.TOKEN_SEMI, 0);
  FieldDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterFieldDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitFieldDeclaration(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitFieldDeclaration(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class MethodDeclarationContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  ParameterListContext? parameterList() => getRuleContext<ParameterListContext>(0);
  TerminalNode? SEMI() => getToken(TralhaParser.TOKEN_SEMI, 0);
  MethodDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_methodDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterMethodDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitMethodDeclaration(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitMethodDeclaration(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ConstructorDeclarationContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ParameterListContext? parameterList() => getRuleContext<ParameterListContext>(0);
  ConstructorDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_constructorDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterConstructorDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitConstructorDeclaration(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitConstructorDeclaration(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ModifierContext extends ParserRuleContext {
  TerminalNode? PUBLIC() => getToken(TralhaParser.TOKEN_PUBLIC, 0);
  TerminalNode? PRIVATE() => getToken(TralhaParser.TOKEN_PRIVATE, 0);
  TerminalNode? PROTECTED() => getToken(TralhaParser.TOKEN_PROTECTED, 0);
  TerminalNode? STATIC() => getToken(TralhaParser.TOKEN_STATIC, 0);
  TerminalNode? FINAL() => getToken(TralhaParser.TOKEN_FINAL, 0);
  TerminalNode? CONST() => getToken(TralhaParser.TOKEN_CONST, 0);
  TerminalNode? ABSTRACT() => getToken(TralhaParser.TOKEN_ABSTRACT, 0);
  TerminalNode? OVERRIDE() => getToken(TralhaParser.TOKEN_OVERRIDE, 0);
  ModifierContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_modifier;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterModifier(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitModifier(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitModifier(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ParameterListContext extends ParserRuleContext {
  List<ParameterContext> parameters() => getRuleContexts<ParameterContext>();
  ParameterContext? parameter(int i) => getRuleContext<ParameterContext>(i);
  List<TerminalNode> COMMAs() => getTokens(TralhaParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(TralhaParser.TOKEN_COMMA, i);
  ParameterListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameterList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterParameterList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitParameterList(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitParameterList(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ParameterContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  ParameterContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameter;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterParameter(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitParameter(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitParameter(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class BlockContext extends ParserRuleContext {
  TerminalNode? LBRACE() => getToken(TralhaParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(TralhaParser.TOKEN_RBRACE, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  BlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_block;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitBlock(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitBlock(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class StatementContext extends ParserRuleContext {
  VariableDeclarationContext? variableDeclaration() => getRuleContext<VariableDeclarationContext>(0);
  TerminalNode? SEMI() => getToken(TralhaParser.TOKEN_SEMI, 0);
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  MethodCallContext? methodCall() => getRuleContext<MethodCallContext>(0);
  IfStatementContext? ifStatement() => getRuleContext<IfStatementContext>(0);
  SwitchStatementContext? switchStatement() => getRuleContext<SwitchStatementContext>(0);
  WhileStatementContext? whileStatement() => getRuleContext<WhileStatementContext>(0);
  DoWhileStatementContext? doWhileStatement() => getRuleContext<DoWhileStatementContext>(0);
  ForStatementContext? forStatement() => getRuleContext<ForStatementContext>(0);
  ForEachStatementContext? forEachStatement() => getRuleContext<ForEachStatementContext>(0);
  TryStatementContext? tryStatement() => getRuleContext<TryStatementContext>(0);
  PrintStatementContext? printStatement() => getRuleContext<PrintStatementContext>(0);
  TerminalNode? BREAK() => getToken(TralhaParser.TOKEN_BREAK, 0);
  TerminalNode? CONTINUE() => getToken(TralhaParser.TOKEN_CONTINUE, 0);
  TerminalNode? RETURN() => getToken(TralhaParser.TOKEN_RETURN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? THROW() => getToken(TralhaParser.TOKEN_THROW, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  StatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitStatement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class VariableDeclarationContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(TralhaParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  VariableDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_variableDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterVariableDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitVariableDeclaration(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitVariableDeclaration(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AssignmentContext extends ParserRuleContext {
  AssignableContext? assignable() => getRuleContext<AssignableContext>(0);
  TerminalNode? ASSIGN() => getToken(TralhaParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? INC() => getToken(TralhaParser.TOKEN_INC, 0);
  TerminalNode? DEC() => getToken(TralhaParser.TOKEN_DEC, 0);
  AssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitAssignment(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitAssignment(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AssignableContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  MemberAccessContext? memberAccess() => getRuleContext<MemberAccessContext>(0);
  TerminalNode? THIS() => getToken(TralhaParser.TOKEN_THIS, 0);
  TerminalNode? DOT() => getToken(TralhaParser.TOKEN_DOT, 0);
  AssignableContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignable;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterAssignable(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitAssignable(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitAssignable(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class MemberAccessContext extends ParserRuleContext {
  List<TerminalNode> IDs() => getTokens(TralhaParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(TralhaParser.TOKEN_ID, i);
  TerminalNode? THIS() => getToken(TralhaParser.TOKEN_THIS, 0);
  TerminalNode? NULL_REF() => getToken(TralhaParser.TOKEN_NULL_REF, 0);
  List<TerminalNode> DOTs() => getTokens(TralhaParser.TOKEN_DOT);
  TerminalNode? DOT(int i) => getToken(TralhaParser.TOKEN_DOT, i);
  List<TerminalNode> LBRACKs() => getTokens(TralhaParser.TOKEN_LBRACK);
  TerminalNode? LBRACK(int i) => getToken(TralhaParser.TOKEN_LBRACK, i);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> RBRACKs() => getTokens(TralhaParser.TOKEN_RBRACK);
  TerminalNode? RBRACK(int i) => getToken(TralhaParser.TOKEN_RBRACK, i);
  MemberAccessContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_memberAccess;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterMemberAccess(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitMemberAccess(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitMemberAccess(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class MethodCallContext extends ParserRuleContext {
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  MemberAccessContext? memberAccess() => getRuleContext<MemberAccessContext>(0);
  TerminalNode? THIS() => getToken(TralhaParser.TOKEN_THIS, 0);
  TerminalNode? NULL_REF() => getToken(TralhaParser.TOKEN_NULL_REF, 0);
  ArgumentListContext? argumentList() => getRuleContext<ArgumentListContext>(0);
  MethodCallContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_methodCall;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterMethodCall(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitMethodCall(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitMethodCall(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ArgumentListContext extends ParserRuleContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(TralhaParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(TralhaParser.TOKEN_COMMA, i);
  ArgumentListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_argumentList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterArgumentList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitArgumentList(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitArgumentList(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IfStatementContext extends ParserRuleContext {
  List<TerminalNode> IFs() => getTokens(TralhaParser.TOKEN_IF);
  TerminalNode? IF(int i) => getToken(TralhaParser.TOKEN_IF, i);
  List<TerminalNode> LPARENs() => getTokens(TralhaParser.TOKEN_LPAREN);
  TerminalNode? LPAREN(int i) => getToken(TralhaParser.TOKEN_LPAREN, i);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> RPARENs() => getTokens(TralhaParser.TOKEN_RPAREN);
  TerminalNode? RPAREN(int i) => getToken(TralhaParser.TOKEN_RPAREN, i);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  List<TerminalNode> ELSEs() => getTokens(TralhaParser.TOKEN_ELSE);
  TerminalNode? ELSE(int i) => getToken(TralhaParser.TOKEN_ELSE, i);
  IfStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterIfStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitIfStatement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitIfStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class SwitchStatementContext extends ParserRuleContext {
  TerminalNode? SWITCH() => getToken(TralhaParser.TOKEN_SWITCH, 0);
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  TerminalNode? LBRACE() => getToken(TralhaParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(TralhaParser.TOKEN_RBRACE, 0);
  List<SwitchCaseContext> switchCases() => getRuleContexts<SwitchCaseContext>();
  SwitchCaseContext? switchCase(int i) => getRuleContext<SwitchCaseContext>(i);
  DefaultCaseContext? defaultCase() => getRuleContext<DefaultCaseContext>(0);
  SwitchStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_switchStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterSwitchStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitSwitchStatement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitSwitchStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class SwitchCaseContext extends ParserRuleContext {
  TerminalNode? CASE() => getToken(TralhaParser.TOKEN_CASE, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? COLON() => getToken(TralhaParser.TOKEN_COLON, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  SwitchCaseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_switchCase;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterSwitchCase(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitSwitchCase(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitSwitchCase(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class DefaultCaseContext extends ParserRuleContext {
  TerminalNode? DEFAULT() => getToken(TralhaParser.TOKEN_DEFAULT, 0);
  TerminalNode? COLON() => getToken(TralhaParser.TOKEN_COLON, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  DefaultCaseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_defaultCase;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterDefaultCase(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitDefaultCase(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitDefaultCase(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class WhileStatementContext extends ParserRuleContext {
  TerminalNode? WHILE() => getToken(TralhaParser.TOKEN_WHILE, 0);
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  StatementContext? statement() => getRuleContext<StatementContext>(0);
  WhileStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_whileStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterWhileStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitWhileStatement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitWhileStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class DoWhileStatementContext extends ParserRuleContext {
  TerminalNode? DO() => getToken(TralhaParser.TOKEN_DO, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TerminalNode? WHILE() => getToken(TralhaParser.TOKEN_WHILE, 0);
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  TerminalNode? SEMI() => getToken(TralhaParser.TOKEN_SEMI, 0);
  DoWhileStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_doWhileStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterDoWhileStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitDoWhileStatement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitDoWhileStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ForStatementContext extends ParserRuleContext {
  TerminalNode? FOR() => getToken(TralhaParser.TOKEN_FOR, 0);
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  List<TerminalNode> SEMIs() => getTokens(TralhaParser.TOKEN_SEMI);
  TerminalNode? SEMI(int i) => getToken(TralhaParser.TOKEN_SEMI, i);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  StatementContext? statement() => getRuleContext<StatementContext>(0);
  VariableDeclarationContext? variableDeclaration() => getRuleContext<VariableDeclarationContext>(0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  ForStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterForStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitForStatement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitForStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ForEachStatementContext extends ParserRuleContext {
  TerminalNode? FOR() => getToken(TralhaParser.TOKEN_FOR, 0);
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  TerminalNode? IN() => getToken(TralhaParser.TOKEN_IN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  StatementContext? statement() => getRuleContext<StatementContext>(0);
  ForEachStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forEachStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterForEachStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitForEachStatement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitForEachStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class TryStatementContext extends ParserRuleContext {
  TerminalNode? TRY() => getToken(TralhaParser.TOKEN_TRY, 0);
  List<BlockContext> blocks() => getRuleContexts<BlockContext>();
  BlockContext? block(int i) => getRuleContext<BlockContext>(i);
  TerminalNode? CATCH() => getToken(TralhaParser.TOKEN_CATCH, 0);
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  TerminalNode? FINALLY() => getToken(TralhaParser.TOKEN_FINALLY, 0);
  TryStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_tryStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterTryStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitTryStatement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitTryStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PrintStatementContext extends ParserRuleContext {
  TerminalNode? PRINT() => getToken(TralhaParser.TOKEN_PRINT, 0);
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  PrintStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_printStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterPrintStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitPrintStatement(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitPrintStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ExpressionContext extends ParserRuleContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? PLUS() => getToken(TralhaParser.TOKEN_PLUS, 0);
  TerminalNode? MINUS() => getToken(TralhaParser.TOKEN_MINUS, 0);
  TerminalNode? NOT() => getToken(TralhaParser.TOKEN_NOT, 0);
  AtomContext? atom() => getRuleContext<AtomContext>(0);
  TerminalNode? OR() => getToken(TralhaParser.TOKEN_OR, 0);
  TerminalNode? AND() => getToken(TralhaParser.TOKEN_AND, 0);
  TerminalNode? EQ() => getToken(TralhaParser.TOKEN_EQ, 0);
  TerminalNode? NEQ() => getToken(TralhaParser.TOKEN_NEQ, 0);
  TerminalNode? LT() => getToken(TralhaParser.TOKEN_LT, 0);
  TerminalNode? LE() => getToken(TralhaParser.TOKEN_LE, 0);
  TerminalNode? GT() => getToken(TralhaParser.TOKEN_GT, 0);
  TerminalNode? GE() => getToken(TralhaParser.TOKEN_GE, 0);
  TerminalNode? STAR() => getToken(TralhaParser.TOKEN_STAR, 0);
  TerminalNode? SLASH() => getToken(TralhaParser.TOKEN_SLASH, 0);
  TerminalNode? PERCENT() => getToken(TralhaParser.TOKEN_PERCENT, 0);
  TerminalNode? LBRACK() => getToken(TralhaParser.TOKEN_LBRACK, 0);
  TerminalNode? RBRACK() => getToken(TralhaParser.TOKEN_RBRACK, 0);
  TerminalNode? DOT() => getToken(TralhaParser.TOKEN_DOT, 0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  ArgumentListContext? argumentList() => getRuleContext<ArgumentListContext>(0);
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitExpression(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AtomContext extends ParserRuleContext {
  LiteralContext? literal() => getRuleContext<LiteralContext>(0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  TerminalNode? THIS() => getToken(TralhaParser.TOKEN_THIS, 0);
  TerminalNode? NULL_REF() => getToken(TralhaParser.TOKEN_NULL_REF, 0);
  TerminalNode? NEW() => getToken(TralhaParser.TOKEN_NEW, 0);
  TerminalNode? LPAREN() => getToken(TralhaParser.TOKEN_LPAREN, 0);
  TerminalNode? RPAREN() => getToken(TralhaParser.TOKEN_RPAREN, 0);
  ArgumentListContext? argumentList() => getRuleContext<ArgumentListContext>(0);
  ArrayLiteralContext? arrayLiteral() => getRuleContext<ArrayLiteralContext>(0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  AtomContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_atom;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterAtom(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitAtom(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitAtom(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ArrayLiteralContext extends ParserRuleContext {
  TerminalNode? LBRACK() => getToken(TralhaParser.TOKEN_LBRACK, 0);
  TerminalNode? RBRACK() => getToken(TralhaParser.TOKEN_RBRACK, 0);
  ArgumentListContext? argumentList() => getRuleContext<ArgumentListContext>(0);
  ArrayLiteralContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayLiteral;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterArrayLiteral(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitArrayLiteral(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitArrayLiteral(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class LiteralContext extends ParserRuleContext {
  TerminalNode? INT() => getToken(TralhaParser.TOKEN_INT, 0);
  TerminalNode? FLOAT() => getToken(TralhaParser.TOKEN_FLOAT, 0);
  TerminalNode? DOUBLE() => getToken(TralhaParser.TOKEN_DOUBLE, 0);
  TerminalNode? STRING() => getToken(TralhaParser.TOKEN_STRING, 0);
  TerminalNode? CHAR() => getToken(TralhaParser.TOKEN_CHAR, 0);
  TerminalNode? TRUE() => getToken(TralhaParser.TOKEN_TRUE, 0);
  TerminalNode? FALSE() => getToken(TralhaParser.TOKEN_FALSE, 0);
  TerminalNode? NULL() => getToken(TralhaParser.TOKEN_NULL, 0);
  LiteralContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_literal;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterLiteral(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitLiteral(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitLiteral(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class TypeContext extends ParserRuleContext {
  BaseTypeContext? baseType() => getRuleContext<BaseTypeContext>(0);
  List<TerminalNode> LBRACKs() => getTokens(TralhaParser.TOKEN_LBRACK);
  TerminalNode? LBRACK(int i) => getToken(TralhaParser.TOKEN_LBRACK, i);
  List<TerminalNode> RBRACKs() => getTokens(TralhaParser.TOKEN_RBRACK);
  TerminalNode? RBRACK(int i) => getToken(TralhaParser.TOKEN_RBRACK, i);
  TypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_type;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitType(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitType(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class BaseTypeContext extends ParserRuleContext {
  TerminalNode? INT_TYPE() => getToken(TralhaParser.TOKEN_INT_TYPE, 0);
  TerminalNode? FLOAT_TYPE() => getToken(TralhaParser.TOKEN_FLOAT_TYPE, 0);
  TerminalNode? DOUBLE_TYPE() => getToken(TralhaParser.TOKEN_DOUBLE_TYPE, 0);
  TerminalNode? CHAR_TYPE() => getToken(TralhaParser.TOKEN_CHAR_TYPE, 0);
  TerminalNode? BOOL_TYPE() => getToken(TralhaParser.TOKEN_BOOL_TYPE, 0);
  TerminalNode? STRING_TYPE() => getToken(TralhaParser.TOKEN_STRING_TYPE, 0);
  TerminalNode? VOID_TYPE() => getToken(TralhaParser.TOKEN_VOID_TYPE, 0);
  TerminalNode? VAR_TYPE() => getToken(TralhaParser.TOKEN_VAR_TYPE, 0);
  TerminalNode? DYNAMIC_TYPE() => getToken(TralhaParser.TOKEN_DYNAMIC_TYPE, 0);
  TerminalNode? ID() => getToken(TralhaParser.TOKEN_ID, 0);
  BaseTypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_baseType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.enterBaseType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TralhaListener) listener.exitBaseType(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TralhaVisitor<T>) {
     return visitor.visitBaseType(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

