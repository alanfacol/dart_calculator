class Calculator {
  final List<String> validOperators = ['+', '-', '*', '/'];
  String operator;
  double num1;
  double num2;

  Calculator(this.operator, this.num1, this.num2);

  double calc() {
    switch (operator) {
      case "+":
        return num1 + num2;
      case "-":
        return num1 - num2;
      case "*":
        return num1 * num2;
      case "/":
        return num1 / num2;
      default:
        return 0;
    }
  }
}
