int addTwo(int a, int b) {
  var sum;
  sum = a + b;
  return sum;
}

int subtractTwo(int x, int y) {
  var subtract;
  subtract = x - y;
  return subtract;
}

int multiplyTwo(int x, int y) {
  var product;
  product = x * y;
  return product;
}

double divideTwo(int x, int y) {
  var divide;
  divide = x / y;
  return divide;
}

int stringLength(String str) {
  return str.length;
}

dynamic getFirstElement(List list) {
  return list[0];
}

void main() {
  var sum = addTwo(15, 3);
  print("The sum is: $sum");

  var subtract = subtractTwo(15, 3);
  print("The difference is: $subtract");

  var product = multiplyTwo(15, 3);
  print("The product is: $product");

  var divide = divideTwo(15, 3);
  print("The quotient is: $divide");

  String greetings = "Hello Dart?";
  int lenght = stringLength(greetings);
  print("The lenght of the string is: $lenght");

  List<String> cars = ["BMW", "Ford Range", "Nissan Note"];
  dynamic firstElement = getFirstElement(cars);
  print("The first element in the list is: $firstElement");
}
