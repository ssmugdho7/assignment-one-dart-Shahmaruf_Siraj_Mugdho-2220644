import 'package:test/test.dart';
import '../question5.dart';

void main() {
  group('Question 5 Tests', () {
    test('Manager class can be instantiated', () {
      var manager = Manager("John Smith", "M001", "IT", 5);
      expect(manager.name, equals("John Smith"));
      expect(manager.id, equals("M001"));
      expect(manager.department, equals("IT"));
      expect(manager.teamSize, equals(5));
    });

    test('Developer class can be instantiated', () {
      var developer = Developer("Alice Johnson", "D001", "IT", "Dart");
      expect(developer.name, equals("Alice Johnson"));
      expect(developer.id, equals("D001"));
      expect(developer.department, equals("IT"));
      expect(developer.programmingLanguage, equals("Dart"));
    });

    test('Payable mixin calculates salary correctly', () {
      var manager = Manager("John Smith", "M001", "IT", 5);
      var salary = manager.calculateSalary(manager.getBaseSalary(), 1000.0);
      expect(salary, equals(9000.0));
    });

    test('Reportable mixin generates correct report', () {
      var manager = Manager("John Smith", "M001", "IT", 5);
      var report = manager.generateReport(manager.name, manager.department);
      expect(report, contains("Monthly report for John Smith in IT department"));
    });

    test('getJobTitle and getBaseSalary methods work', () {
      var manager = Manager("John Smith", "M001", "IT", 5);
      var developer = Developer("Alice Johnson", "D001", "IT", "Dart");

      expect(manager.getJobTitle(), equals("Manager"));
      expect(manager.getBaseSalary(), equals(8000.0));

      expect(developer.getJobTitle(), equals("Senior Developer"));
      expect(developer.getBaseSalary(), equals(6000.0));
    });

    test('runDemo executes without errors', () {
      expect(() => runDemo(), returnsNormally);
    });
  });
}
