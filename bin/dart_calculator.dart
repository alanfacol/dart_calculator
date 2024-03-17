import 'package:dart_calculator/calculator.dart';
import 'dart:io';

void main(List<String> arguments) {
  Calculator calculator = Calculator('', 0, 0);

  print("Informe o primeiro valor");
  String? num1 = stdin.readLineSync()!;

  if (checkNumber(num1)) {
    calculator.num1 = double.parse(num1);
    calc(calculator);
  }
  print("Programa encerrado!");
}

void calc(Calculator calculator) {
  print("Informe o operador do cálculo");
  String? opr = stdin.readLineSync()!;

  if (checkOperator(opr, calculator)) {
    calculator.operator = opr;

    print("Informe o segundo valor");
    String? num2 = stdin.readLineSync()!;

    if (checkNumber(num2)) {
      calculator.num2 = double.parse(num2);

      double total = calculator.calc();
      print(
          "${calculator.num1} ${calculator.operator} ${calculator.num2} = $total");
      calculator.num1 = total;

      calc(calculator);
    }
  }
}

bool checkOperator(String opr, Calculator c) {
  return c.validOperators.contains(opr.trim().toLowerCase());
}

bool checkNumber(String? num) {
  try {
    double.parse(num!);
    return true;
  } catch (e) {
    return false;
  }
}
