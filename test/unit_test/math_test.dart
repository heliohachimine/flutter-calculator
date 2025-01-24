import 'package:calculator/math.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Math', () {
    test('cleanDisplay', () {
      // Arrange
      final math = Math();
      // Act
      math.cleanDisplay();
      // Assert
      expect(math.firstValue, 0.0);
      expect(math.display, '0');
    });

    test('addDigit', () {
      // Arrange
      final math = Math();
      // Act
      math.addDigit('1');
      // Assert
      expect(math.display, '1');
    });

    test('setOperation', () {
      // Arrange
      final math = Math();
      // Act
      math.addDigit('1');
      math.setOperation(Operation.add);
      // Assert
      expect(math.operation, Operation.add);
      expect(math.firstValue, 1.0);
      expect(math.display, '0');
    });

    test('removeDigit', () {
      // Arrange
      final math = Math();
      // Act
      math.addDigit('1');
      math.addDigit('2');
      math.removeDigit();
      // Assert
      expect(math.display, '1');
    });

    test('percent', () {
      // Arrange
      final math = Math();
      // Act
      math.addDigit('1');
      math.addDigit('0');
      math.percent();
      // Assert
      expect(math.display, '0,1');
    });

    test('addComma', () {
      // Arrange
      final math = Math();
      // Act
      math.addDigit('1');
      math.addComma();
      // Assert
      expect(math.display, '1,');
    });
  });
}