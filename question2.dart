// Question 2: Collections & Control Flow
import 'dart:math';

void runProgram() {
  // 1. List of student names
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

  // 2. Map to store student scores (fixed for consistent output)
  Map<String, int> studentScores = {
    "Alice": 85,
    "Bob": 92,
    "Charlie": 76,
    "Diana": 68,
    "Eve": 80
  };

  // 3. Find highest, lowest, and average
  String highestStudent = studentNames.first;
  String lowestStudent = studentNames.first;
  int highestScore = studentScores[highestStudent]!;
  int lowestScore = studentScores[lowestStudent]!;
  int totalScore = 0;

  for (var entry in studentScores.entries) {
    totalScore += entry.value;
    if (entry.value > highestScore) {
      highestScore = entry.value;
      highestStudent = entry.key;
    }
    if (entry.value < lowestScore) {
      lowestScore = entry.value;
      lowestStudent = entry.key;
    }
  }

  double averageScore = totalScore / studentNames.length;

  // 4. Display results
  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: ${averageScore.toStringAsFixed(2)}");

  // 5. Categorize students using switch
  for (String student in studentNames) {
    int score = studentScores[student]!;
    String category;
    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }
    print("$student: $score ($category)");
  }
}

void main() {
  runProgram();
}
