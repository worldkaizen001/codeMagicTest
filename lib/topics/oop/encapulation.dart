class BankAccount {
  // Private property
  dynamic _balance;
  
  final String? name;

  BankAccount(this._balance, {this.name});

  // Public method to access private property
  double get balance => _balance;

  // Public method to modify private property
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }
}

void main() {
  var account = BankAccount(1000, name: 'Sam');
  account.deposit(500);
  print(account.name);
  print(account.balance); // Output: 1500
  account.withdraw(200);
  print(account.balance); // Output: 1300
}
