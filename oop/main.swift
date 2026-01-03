class Counter {
  var value = 0
  func inc() { value += 1 }
}

let c = Counter()
c.inc()

// print(c.value) // prints "1"

class BankAccount {
  var balance: Int

  init() {
    self.balance = 0
  }
  init(_ balance: Int) {
    self.balance = balance
  }

  func deposit(_ amount: Int) {
    balance += amount
  }

  func checkBalance() -> Int {
    return balance
  }
}

let account = BankAccount(10)
account.deposit(5)
print(account.checkBalance()) // prints "5"
