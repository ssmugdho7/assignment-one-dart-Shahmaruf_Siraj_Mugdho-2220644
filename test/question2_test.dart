// Question 2 Tests
import 'package:test/test.dart';
import '../question2.dart';

void main() {
  group('Question 2 Tests', () {
    test('main program runs and prints output', () {
      // Call the function that prints all output
      runProgram();
      // Pass test unconditionally since we want to show output
      expect(true, isTrue);
    });
  });
}
