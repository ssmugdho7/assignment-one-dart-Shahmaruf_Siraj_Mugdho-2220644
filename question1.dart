// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐

// 1. Create variables of different data types
String name = "Siraj";
int age = 24;
double height = 5.8; // Height in feet
bool isStudent = true;

// 2. Function to calculate BMI (metric: kg & meters)
double calculateBMI(double weightKg, double heightMeters) {
  double bmi = weightKg / (heightMeters * heightMeters);
  return double.parse(bmi.toStringAsFixed(1));
}

void main() {
  // Convert lbs & ft to kg & meters
  double weightKg = 150.0 * 0.453592;
  double heightMeters = 5.8 * 0.3048;

  double bmi = calculateBMI(weightKg, heightMeters);
  String grade = getGrade(85);

  print("Name: $name, Age: $age, Height: $height ft, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}

// 3. Function to get grade based on score
String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return 'A';
  } else if (score >= 80) {
    return 'B';
  } else if (score >= 70) {
    return 'C';
  } else if (score >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

void main1() {
  // Example usage
  double bmi = calculateBMI(150.0, height); // weight in lbs, height in ft
  String grade = getGrade(85); // example score

  print("Name: $name, Age: $age, Height: $height ft, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}
