import 'dart:io';

void main() {
  print("Welcome to Dart Calculator.");

  print("Enter your first number.");
  double input1 = double.parse(stdin.readLineSync()!);

  print("Enter your second number.");
  double input2 = double.parse(stdin.readLineSync()!);

  print("Please select an operation");
  print("1 -- for Addition");
  print("2 -- for Subtraction");
  print("3 -- for Multiplication");
  print("4 -- for Division");

  int choice = int.parse(stdin.readLineSync()!);

  double result;

  switch (choice) {
    case 1:
      result = input1 + input2;
      print("Addition of $input1 + $input2 = $result");
      break;

    case 2:
      result = input1 - input2;
      print("Subtraction of $input1 - $input2 = $result");
      break;

    case 3:
      result = input1 * input2;
      print("Multiplication of $input1 * $input2 = $result");
      break;

    case 4:
      if (input2 != 0) {
        result = input1 / input2;
        print("Division of $input1 / $input2 = $result");
      } else {
        print("Error!! No division for zero numbers");
      }
      break;
  }
}
