void sum(int x, int y) {
  var total;
  total = x + y;
  print("The sum is: $total");
}

List<String> cars = ["BMW", "Nissan Note", "Benz", "Ford Ranger", "Porseche"];

void main() {
  sum(10, 20);

  cars.forEach((car) {
    //print("This is my dream car: $car");
    if (car == "Nissan Note" || car == "BMW") {
      print("$car - Yes and Amen");
    } else
      () {
        print("No object");
      };
  });
}
