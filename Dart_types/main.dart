String name = "Mercy"; //Persons name
int age = 20; // string
double wealth = 100.45; //Worthness of the person

//Function to add two numbers
void sum(int x, int y) {
  var total;
  total = x + y;
  print("The sum is: $total");
}

//A list of my all dream cars
List<String> cars = ["BMW", "Nissan Note", "Benz", "Ford Ranger"];

//A map of students names and their ages in a class
Map<String, int> studentMarks = {
  "Agnes": 14,
  "Daniel": 16,
  "James": 15,
  "Jane": 13
};

void main() {
  print("My name is $name" +
      " I am $age" +
      " years old." " My networth is $wealth" +
      " million dollars.");
  sum(10, 20);

  cars.forEach((car) {
    print("This is my dream car: $car");
  });
}
