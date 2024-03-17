import 'package:dart_calculator/calculator.dart';
import 'dart:io';

void main(List<String> arguments) {
  print("Informe o primeiro valor");
  String? num1 = stdin.readLineSync()!;

  if (checkNumber(num1)) {
    calc(double.parse(num1));
  }
  print("Programa encerrado!");
}

void calc(double n1) {
  print("Informe o operador do cálculo");
  String? opr = stdin.readLineSync()!;

  if (checkOperator(opr.trim())) {
    print("Informe o segundo valor");
    String? num2 = stdin.readLineSync()!;

    if (checkNumber(num2)) {
      double n2 = double.parse(num2);

      Calculator calculator = Calculator(opr, n1, n2);
      calculator.result();

      print("O valor final é ${calculator.total}");

      calc(calculator.total);
    }
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
