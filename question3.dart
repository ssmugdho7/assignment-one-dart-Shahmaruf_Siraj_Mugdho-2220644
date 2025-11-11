class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType; // Savings/Checking

  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print(
          "Insufficient funds for withdrawal of ${amount.toStringAsFixed(1)} from account $accountNumber");
    }
  }

  double getBalance() => balance;

  void displayAccountInfo() {
    print(
        "Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: ${balance.toStringAsFixed(1)}");
  }
}

void runProgram() {
  BankAccount account1 = BankAccount("12345", "Alice", "Savings");
  BankAccount account2 = BankAccount("67890", "Bob", "Checking");

  // Deposits
  account1.deposit(1500.0);
  account2.deposit(800.0);

  // Display account info first
  account1.displayAccountInfo();
  account2.displayAccountInfo();

  // Attempt withdrawal that may fail
  account2.withdraw(1000.0); // Should print insufficient funds
}

void main() {
  runProgram();
}



