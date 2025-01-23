// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'math.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Math on MathBase, Store {
  late final _$firstValueAtom =
      Atom(name: 'MathBase.firstValue', context: context);

  @override
  double? get firstValue {
    _$firstValueAtom.reportRead();
    return super.firstValue;
  }

  @override
  set firstValue(double? value) {
    _$firstValueAtom.reportWrite(value, super.firstValue, () {
      super.firstValue = value;
    });
  }

  late final _$displayAtom = Atom(name: 'MathBase.display', context: context);

  @override
  String get display {
    _$displayAtom.reportRead();
    return super.display;
  }

  @override
  set display(String value) {
    _$displayAtom.reportWrite(value, super.display, () {
      super.display = value;
    });
  }

  late final _$operationAtom =
      Atom(name: 'MathBase.operation', context: context);

  @override
  Operation? get operation {
    _$operationAtom.reportRead();
    return super.operation;
  }

  @override
  set operation(Operation? value) {
    _$operationAtom.reportWrite(value, super.operation, () {
      super.operation = value;
    });
  }

  late final _$MathBaseActionController =
      ActionController(name: 'MathBase', context: context);

  @override
  void cleanDisplay() {
    final _$actionInfo =
        _$MathBaseActionController.startAction(name: 'MathBase.cleanDisplay');
    try {
      return super.cleanDisplay();
    } finally {
      _$MathBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addDigit(String digit) {
    final _$actionInfo =
        _$MathBaseActionController.startAction(name: 'MathBase.addDigit');
    try {
      return super.addDigit(digit);
    } finally {
      _$MathBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOperation(Operation operation) {
    final _$actionInfo =
        _$MathBaseActionController.startAction(name: 'MathBase.setOperation');
    try {
      return super.setOperation(operation);
    } finally {
      _$MathBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeDigit() {
    final _$actionInfo =
        _$MathBaseActionController.startAction(name: 'MathBase.removeDigit');
    try {
      return super.removeDigit();
    } finally {
      _$MathBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void percent() {
    final _$actionInfo =
        _$MathBaseActionController.startAction(name: 'MathBase.percent');
    try {
      return super.percent();
    } finally {
      _$MathBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addComma() {
    final _$actionInfo =
        _$MathBaseActionController.startAction(name: 'MathBase.addComma');
    try {
      return super.addComma();
    } finally {
      _$MathBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calculate() {
    final _$actionInfo =
        _$MathBaseActionController.startAction(name: 'MathBase.calculate');
    try {
      return super.calculate();
    } finally {
      _$MathBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
firstValue: ${firstValue},
display: ${display},
operation: ${operation}
    ''';
  }
}
