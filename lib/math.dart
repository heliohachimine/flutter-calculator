import 'package:calculator/extensions/double_extensions.dart';
import 'package:mobx/mobx.dart';

part 'math.g.dart';

class Math = MathBase with _$Math;

enum Operation { add, subtract, multiply, divide }

abstract class MathBase with Store {
  @observable
  double? firstValue;
  @observable
  String display = '0';
  @observable
  Operation? operation;

  @action
  void cleanDisplay() {
    firstValue = 0.0;
    display = '0';
  }

  @action
  void addDigit(String digit) {
    if (display == '0') {
      display = digit;
    } else {
      display += digit;
    }
  }

  @action
  void setOperation(Operation operation) {
    this.operation = operation;
    final displayValue = double.parse(
      display.replaceAll('.', '').replaceAll(',', '.'),
    );
    final roundedValue = displayValue.toStringAsFixed(15);
    firstValue = double.parse(roundedValue);
    display = '0';
  }

  @action
  void removeDigit() {
    if (display.length > 1) {
      display = display.substring(0, display.length - 1);
    } else {
      display = '0';
    }
  }

  @action
  void percent() {
    final displayValue = double.parse(
      display.replaceAll('.', '').replaceAll(',', '.'),
    );
    final roundedValue = displayValue.toStringAsFixed(15);
    final value = double.parse(roundedValue);
    display = (value / 100).formatBr();
  }

  @action
  void addComma() {
    if (!display.contains(',')) {
      display += ',';
    }
  }

  @action
  void calculate() {
    if (operation == null || firstValue == null) {
      return;
    }
    final secondValue =
        double.parse(display.replaceAll('.', '').replaceAll(',', '.'));
    switch (operation) {
      case Operation.add:
        display = (firstValue! + secondValue).formatBr();
        break;
      case Operation.subtract:
        display = (firstValue! - secondValue).formatBr();
        break;
      case Operation.multiply:
        display = (firstValue! * secondValue).formatBr();
        break;
      case Operation.divide:
        display = (firstValue! / secondValue).formatBr();
        break;
      default:
        break;
    }
    firstValue = 0.0;
    operation = null;
  }
}
