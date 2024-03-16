import 'package:dart_calculator/calculator.dart';
import 'dart:io';

void main(List<String> arguments) {
  Calculator calc;
  String? operator;
  String? num1;
  String? num2;

  print("Informe o operador do cálculo");
  operator = stdin.readLineSync()!;

  if (checkOperator(operator.trim())) {
    print("Informe o primeiro valor");
    num1 = stdin.readLineSync()!;
    print("Informe o segundo valor");
    num2 = stdin.readLineSync()!;

    if (checkNumber(num1) && checkNumber(num2)) {
      double n1 = double.parse(num1);
      double n2 = double.parse(num2);

      calc = Calculator(operator, n1, n2);
      print("O valor final é ${calc.result()}");
    } else {
      print("Os números informados estão incorretos");
    }
  } else {
    print("Operador errado");
  }
}

bool checkOperator(String opr) {
  return ["+", "-", "*", "/"].contains(opr);
}

bool checkNumber(String? num) {
  try {
    double.parse(num!);
    return true;
  } catch (e) {
    return false;
  }
}
