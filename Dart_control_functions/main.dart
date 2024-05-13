import 'dart:io';

void main() {
  print("Enter your prefered number");
  var num = int.parse(stdin.readLineSync()!);

  if (num > 10) {
    print("Your number is greater than 10");
  } else if (num < 10) {
    print("Your number is less than 10");
  } else {
    print("Your number is equal to 10");
  }
}
