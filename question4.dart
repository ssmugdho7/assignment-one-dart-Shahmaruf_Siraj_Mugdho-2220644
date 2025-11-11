// question4.dart

abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void start();
  void stop();

  void displayInfo() {
    print("Vehicle Info: $year $brand $model");
  }

  int calculateAge() => DateTime.now().year - year;
}

class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, String model, int year, this.numberOfDoors)
      : super(brand, model, year);

  @override
  void start() => print("Starting the car engine...");

  @override
  void stop() => print("Stopping the car engine...");

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model ($numberOfDoors doors)");
  }
}

class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle(String brand, String model, int year, this.hasWindshield)
      : super(brand, model, year);

  @override
  void start() => print("Starting the motorcycle engine...");

  @override
  void stop() => print("Stopping the motorcycle engine...");

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)");
  }
}

// Run demonstration
void runDemo() {
  List<Vehicle> vehicles = [
    Car("Toyota", "Camry", 2020, 4),
    Motorcycle("Honda", "CBR", 2021, true),
  ];

  // First loop: display info, start, stop
  for (var vehicle in vehicles) {
    vehicle.displayInfo();
    vehicle.start();
    vehicle.stop();
    print(""); // blank line for readability
  }

  // Second loop: print ages at the end
  for (var vehicle in vehicles) {
    String type = vehicle is Car ? "Car" : "Motorcycle";
    print("$type age: ${vehicle.calculateAge()} years");
  }
}

void main() => runDemo();
