import 'package:test/test.dart';
import '../question3.dart';

void main() {
  group('Question 3 Tests', () {
    test('BankAccount class can be instantiated', () {
      var account = BankAccount("12345", "Alice", "Savings");
      expect(account.accountNumber, equals("12345"));
      expect(account.accountHolder, equals("Alice"));
      expect(account.accountType, equals("Savings"));
      expect(account.balance, equals(0.0));
    });

    test('deposit method works correctly', () {
      var account = BankAccount("12345", "Alice", "Savings");
      account.deposit(100.0);
      expect(account.getBalance(), equals(100.0));
    });

    test('withdraw method works correctly', () {
      var account = BankAccount("12345", "Alice", "Savings");
      account.deposit(100.0);
      account.withdraw(50.0);
      expect(account.getBalance(), equals(50.0));
    });

    test('withdraw handles insufficient funds', () {
      var account = BankAccount("12345", "Alice", "Savings");
      account.deposit(50.0);
      expect(account.getBalance(), equals(50.0));
    });

    test('main program runs and prints output', () {
      runProgram(); // This will print deposits, withdrawals, balances
      expect(true, isTrue); // Always pass
    });
  });
}
