// Canonical LR(0) automaton and SLR(1) parser for the reduced TRALHA grammar.
// The grammar is the single source of truth for states, tables and execution.

class SlrToken {
  final String terminal;
  final String value;
  const SlrToken(this.terminal, this.value);
  Map<String, dynamic> toJson() => {'terminal': terminal, 'value': value};
}

class Production {
  final int number;
  final String lhs;
  final List<String> rhs;
  const Production(this.number, this.lhs, this.rhs);
  String get text => '$lhs -> ${rhs.join(' ')}';
  Map<String, dynamic> toJson() =>
      {'number': number, 'lhs': lhs, 'rhs': rhs, 'text': text};
}

class LrItem {
  final int production;
  final int dot;
  const LrItem(this.production, this.dot);
  String get key => '$production:$dot';
}

class LrState {
  final int id;
  final List<LrItem> items;
  const LrState(this.id, this.items);
}

class LrTransition {
  final int from;
  final int to;
  final String symbol;
  final bool terminal;
  const LrTransition(this.from, this.to, this.symbol, this.terminal);
  Map<String, dynamic> toJson() =>
      {'from': from, 'to': to, 'symbol': symbol, 'terminal': terminal};
}

class SlrModel {
  static const terminalOrder = [
    'ID',
    'NUM',
    'receba',
    ';',
    '+',
    '*',
    '(',
    ')',
    r'$'
  ];
  static const nonTerminalOrder = [
    "S'",
    'S',
    'lista',
    'comando',
    'expr',
    'termo',
    'fator'
  ];
  // Stable traversal preserves the state numbers used in the written report.
  static const transitionSymbolOrder = [
    'S',
    'lista',
    'comando',
    'receba',
    'expr',
    'termo',
    'fator',
    '(',
    'NUM',
    'ID',
    ';',
    '+',
    '*',
    ')'
  ];

  final List<Production> productions;
  final List<LrState> states;
  final List<LrTransition> transitions;
  final Map<String, Set<String>> first;
  final Map<String, Set<String>> follow;
  final Map<int, Map<String, String>> action;
  final Map<int, Map<String, int>> goTo;

  const SlrModel._(this.productions, this.states, this.transitions, this.first,
      this.follow, this.action, this.goTo);

  factory SlrModel.tralha() {
    const productions = <Production>[
      Production(0, "S'", ['S']),
      Production(1, 'S', ['lista']),
      Production(2, 'lista', ['lista', 'comando']),
      Production(3, 'lista', ['comando']),
      Production(4, 'comando', ['ID', 'receba', 'expr', ';']),
      Production(5, 'expr', ['expr', '+', 'termo']),
      Production(6, 'expr', ['termo']),
      Production(7, 'termo', ['termo', '*', 'fator']),
      Production(8, 'termo', ['fator']),
      Production(9, 'fator', ['(', 'expr', ')']),
      Production(10, 'fator', ['NUM']),
      Production(11, 'fator', ['ID']),
    ];
    final nonTerminals = productions.map((p) => p.lhs).toSet();

    // Fixed-point closure for the canonical collection of LR(0) items.
    List<LrItem> close(Iterable<LrItem> seed) {
      final result = <String, LrItem>{for (final item in seed) item.key: item};
      var added = true;
      while (added) {
        added = false;
        for (final item in List<LrItem>.from(result.values)) {
          final production = productions[item.production];
          if (item.dot >= production.rhs.length) continue;
          final symbol = production.rhs[item.dot];
          if (!nonTerminals.contains(symbol)) continue;
          for (final candidate in productions.where((p) => p.lhs == symbol)) {
            final next = LrItem(candidate.number, 0);
            if (!result.containsKey(next.key)) {
              result[next.key] = next;
              added = true;
            }
          }
        }
      }
      final items = result.values.toList()
        ..sort((a, b) => a.production != b.production
            ? a.production.compareTo(b.production)
            : a.dot.compareTo(b.dot));
      return items;
    }

    String stateKey(List<LrItem> items) => items.map((i) => i.key).join('|');
    List<LrItem> advance(Iterable<LrItem> items, String symbol) =>
        close(items.where((item) {
          final p = productions[item.production];
          return item.dot < p.rhs.length && p.rhs[item.dot] == symbol;
        }).map((item) => LrItem(item.production, item.dot + 1)));

    final states = <LrState>[];
    final transitions = <LrTransition>[];
    final ids = <String, int>{};
    final initial = close(const [LrItem(0, 0)]);
    states.add(LrState(0, initial));
    ids[stateKey(initial)] = 0;
    for (var cursor = 0; cursor < states.length; cursor++) {
      final state = states[cursor];
      final symbols = <String>{};
      for (final item in state.items) {
        final p = productions[item.production];
        if (item.dot < p.rhs.length) symbols.add(p.rhs[item.dot]);
      }
      final ordered = symbols.toList()
        ..sort((a, b) => transitionSymbolOrder
            .indexOf(a)
            .compareTo(transitionSymbolOrder.indexOf(b)));
      for (final symbol in ordered) {
        final targetItems = advance(state.items, symbol);
        final key = stateKey(targetItems);
        var target = ids[key];
        if (target == null) {
          target = states.length;
          ids[key] = target;
          states.add(LrState(target, targetItems));
        }
        transitions.add(LrTransition(
            state.id, target, symbol, !nonTerminals.contains(symbol)));
      }
    }

    final first = <String, Set<String>>{
      for (final n in nonTerminals) n: <String>{}
    };
    var changed = true;
    while (changed) {
      changed = false;
      for (final p in productions) {
        final symbol = p.rhs.first;
        final additions =
            nonTerminals.contains(symbol) ? first[symbol]! : {symbol};
        final before = first[p.lhs]!.length;
        first[p.lhs]!.addAll(additions);
        if (first[p.lhs]!.length != before) changed = true;
      }
    }

    final follow = <String, Set<String>>{
      for (final n in nonTerminals) n: <String>{}
    };
    follow['S']!.add(r'$');
    changed = true;
    while (changed) {
      changed = false;
      for (final p in productions) {
        for (var i = 0; i < p.rhs.length; i++) {
          final symbol = p.rhs[i];
          if (!nonTerminals.contains(symbol)) continue;
          final additions = i + 1 < p.rhs.length
              ? (nonTerminals.contains(p.rhs[i + 1])
                  ? first[p.rhs[i + 1]]!
                  : {p.rhs[i + 1]})
              : follow[p.lhs]!;
          final before = follow[symbol]!.length;
          follow[symbol]!.addAll(additions);
          if (follow[symbol]!.length != before) changed = true;
        }
      }
    }

    final action = <int, Map<String, String>>{};
    final goTo = <int, Map<String, int>>{};
    void putAction(int state, String symbol, String value) {
      final row = action.putIfAbsent(state, () => {});
      if (row[symbol] != null && row[symbol] != value) {
        throw StateError(
            'Conflito SLR em I$state/$symbol: ${row[symbol]} x $value');
      }
      row[symbol] = value;
    }

    for (final t in transitions) {
      if (t.terminal) {
        putAction(t.from, t.symbol, 's${t.to}');
      } else {
        goTo.putIfAbsent(t.from, () => {})[t.symbol] = t.to;
      }
    }
    for (final state in states) {
      for (final item in state.items) {
        final p = productions[item.production];
        if (item.dot != p.rhs.length) continue;
        if (p.number == 0) {
          putAction(state.id, r'$', 'acc');
        } else {
          for (final terminal in follow[p.lhs]!) {
            putAction(state.id, terminal, 'r${p.number}');
          }
        }
      }
    }
    return SlrModel._(
        productions, states, transitions, first, follow, action, goTo);
  }

  List<SlrToken> tokenize(String input) {
    final tokens = <SlrToken>[];
    var i = 0;
    while (i < input.length) {
      final c = input[i];
      if (c.trim().isEmpty) {
        i++;
      } else if (RegExp(r'[a-zA-Z_]').hasMatch(c)) {
        final start = i++;
        while (i < input.length && RegExp(r'[a-zA-Z0-9_]').hasMatch(input[i])) {
          i++;
        }
        final word = input.substring(start, i);
        tokens.add(SlrToken(word == 'receba' ? 'receba' : 'ID', word));
      } else if (RegExp(r'[0-9]').hasMatch(c)) {
        final start = i++;
        while (i < input.length && RegExp(r'[0-9]').hasMatch(input[i])) i++;
        tokens.add(SlrToken('NUM', input.substring(start, i)));
      } else {
        tokens.add(SlrToken(
            const {';', '+', '*', '(', ')'}.contains(c) ? c : 'UNKNOWN', c));
        i++;
      }
    }
    return [...tokens, const SlrToken(r'$', r'$')];
  }

  Map<String, dynamic> parse(String input) {
    final tokens = tokenize(input);
    final statesStack = <int>[0];
    final symbols = <String>[];
    final steps = <Map<String, dynamic>>[];
    var cursor = 0;
    for (var guard = 0; guard < 10000; guard++) {
      final state = statesStack.last;
      final token = tokens[cursor];
      final operation = action[state]?[token.terminal] ?? 'erro';
      final step = <String, dynamic>{
        'index': steps.length,
        'stateId': state,
        'stateStack': statesStack.join(' '),
        'states': List<int>.from(statesStack),
        'symbolStack': symbols.join(' '),
        'symbols': List<String>.from(symbols),
        'token': token.terminal,
        'tokenVal': token.value,
        'action': operation,
      };
      steps.add(step);
      if (operation.startsWith('s')) {
        final target = int.parse(operation.substring(1));
        step.addAll({
          'actionKind': 'shift',
          'transitionFromState': state,
          'targetState': target,
          'transitionSymbol': token.terminal
        });
        statesStack.add(target);
        symbols.add(token.terminal);
        cursor++;
      } else if (operation.startsWith('r')) {
        final rule = int.parse(operation.substring(1));
        final p = productions[rule];
        step.addAll({'actionKind': 'reduce', 'rule': rule, 'ruleText': p.text});
        for (var i = 0; i < p.rhs.length; i++) {
          statesStack.removeLast();
          symbols.removeLast();
        }
        final from = statesStack.last;
        final target = goTo[from]?[p.lhs];
        if (target == null)
          return _failure('Erro GOTO após a regra $rule.', tokens, steps);
        step.addAll({
          'transitionFromState': from,
          'targetState': target,
          'transitionSymbol': p.lhs
        });
        symbols.add(p.lhs);
        statesStack.add(target);
      } else if (operation == 'acc') {
        step['actionKind'] = 'accept';
        return {
          'success': true,
          'message': 'Entrada válida aceita pelo autômato SLR(1)!',
          'tokens': tokens.map((t) => t.toJson()).toList(),
          'steps': steps
        };
      } else {
        step['actionKind'] = 'error';
        final expected = action[state]?.keys.toList() ?? <String>[];
        return _failure(
            "Erro Sintático! Token inesperado '${token.value}' no estado $state.",
            tokens,
            steps,
            expected: expected);
      }
    }
    return _failure('A análise excedeu o limite de segurança.', tokens, steps);
  }

  Map<String, dynamic> _failure(
          String error, List<SlrToken> tokens, List<Map<String, dynamic>> steps,
          {List<String>? expected}) =>
      {
        'success': false,
        'error': error,
        if (expected != null) 'expected': expected,
        'tokens': tokens.map((t) => t.toJson()).toList(),
        'steps': steps,
      };

  String itemText(LrItem item) {
    final p = productions[item.production];
    final parts = <String>[];
    for (var i = 0; i <= p.rhs.length; i++) {
      if (i == item.dot) parts.add('•');
      if (i < p.rhs.length) parts.add(p.rhs[i]);
    }
    return '${p.lhs} -> ${parts.join(' ')}';
  }

  Map<String, dynamic> toJson() => {
        'grammar': {
          'startSymbol': 'S',
          'augmentedStartSymbol': "S'",
          'terminals': terminalOrder,
          'nonTerminals': nonTerminalOrder.skip(1).toList(),
          'productions': productions.map((p) => p.toJson()).toList()
        },
        'first': {
          for (final n in nonTerminalOrder.skip(1)) n: first[n]!.toList()
        },
        'follow': {
          for (final n in nonTerminalOrder.skip(1)) n: follow[n]!.toList()
        },
        'states': states
            .map((s) => {
                  'id': s.id,
                  'label': 'I${s.id}',
                  'accepting':
                      s.items.any((i) => i.production == 0 && i.dot == 1),
                  'items': s.items
                      .map((i) => {
                            'production': i.production,
                            'dot': i.dot,
                            'text': itemText(i)
                          })
                      .toList(),
                  'actions': action[s.id] ?? {},
                  'gotos': goTo[s.id] ?? {}
                })
            .toList(),
        'transitions': transitions.map((t) => t.toJson()).toList(),
        'action': {for (final s in states) '${s.id}': action[s.id] ?? {}},
        'goto': {for (final s in states) '${s.id}': goTo[s.id] ?? {}},
      };
}
