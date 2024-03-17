class Calculator {
  String operator;
  double num1;
  double num2;
  double total = 0;

  Calculator(this.operator, this.num1, this.num2);

  double sum() {
    return num1 + num2;
  }

  double sub() {
    return num1 - num2;
  }

  double mul() {
    return num1 * num2;
  }

  double div() {
    return num1 / num2;
  }

  double result() {
    total = 0;
    switch (operator) {
      case "+":
        total += sum();
        break;
      case "-":
        total += sub();
        break;
      case "*":
        total += mul();
        break;
      case "/":
        total += div();
        break;
      default:
        total;
    }

    return total;
  }
}
