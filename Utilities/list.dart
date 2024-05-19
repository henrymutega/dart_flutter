void main() {
  List<double> numbers = [2, 7, 10, 55, 9];

  double findLargestNumber(List<double> numbers) {
    double largest = numbers[0];
    for (double num in numbers) {
      if (num > largest) {
        largest = num;
      }
    }
    return largest;
  }

  double largestNumber = findLargestNumber(numbers);
  print("The largest number is $largestNumber");
}
