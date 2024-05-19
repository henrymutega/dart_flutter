import 'dart:io';

void main() {
  print("Enter your first number.");
  var input1 = double.parse(stdin.readLineSync()!);
  //double number1 = double.parse(input1!)
  print("Enter your second number.");
  var input2 = double.parse(stdin.readLineSync()!);

  double addNumbers(double num1, double num2) {
    return num1 + num2;
  }

  double result = addNumbers(input1, input2);

  print("The sum of $input1 and $input2 is $result");
}
