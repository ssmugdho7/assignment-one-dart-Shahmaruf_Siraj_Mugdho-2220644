// ✅ Importing the Dart test library
import 'package:test/test.dart';

// ✅ Import your Dart file with an alias
import '../question1.dart';

void main() {
  group('Question 1 Tests', () {
    test('calculateBMI() should return correct BMI value', () {
      // 70kg, 1.75m -> expected BMI ≈ 22.86
      double bmi = calculateBMI(70.0, 1.75);
      expect(bmi, closeTo(22.9, 0.1));
    });

    test('getGrade() should return correct grade based on score', () {
      expect(getGrade(95), equals('A'));
      expect(getGrade(85), equals('B'));
      expect(getGrade(75), equals('C'));
      expect(getGrade(65), equals('D'));
      expect(getGrade(55), equals('F'));
    });

    test('Program should execute without errors', () {
      // Ensures that the main() function (renamed to runProgram()) executes normally
      expect(() => main1(), returnsNormally);
    });
  });
}
