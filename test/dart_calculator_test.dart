import 'package:dart_calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Calculator.calc()', () {
    Calculator calculator = Calculator('+', 1, 1);
    expect(calculator.calc(), equals(2));
  });
}
