import 'dart:io';

// An interface class
abstract class Vehicle {
  String makeSound();
}

// A class that implements vehicle interface class
class Car implements Vehicle {
  String makeSound() {
    return "Vuuummmm.....";
  }
}

// A class that overrides an inherited method
class ElectricCar extends Car {
  @override
  String makeSound() {
    return "Electric car starting...";
  }
}

// An instance of a class that is initialized with data from a file
class VehicleList {
  List<Vehicle> vehicles = [];

  VehicleList(String filename) {
    File(filename).readAsLinesSync().forEach((line) {
      var vehicleType = line.split(",")[0];
      if (vehicleType == "car") {
        vehicles.add(Car());
      } else if (vehicleType == "ElectriCar") {
        vehicles.add(ElectricCar());
      }
    });
  }

  void startVehicles() {
    for (var vehicle in vehicles) {
      print(vehicle.makeSound());
    }
  }
}

void main() {
  var vehicleList = VehicleList('vehicles.txt');
  vehicleList.startVehicles();
}
