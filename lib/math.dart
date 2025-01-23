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
    firstValue = double.parse(display.replaceAll('.', '').replaceAll(',', '.'));
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
    final value = double.parse(display);
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
    if(operation == null || firstValue == null) {
      return;
    }
    final secondValue = double.parse(display);
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
