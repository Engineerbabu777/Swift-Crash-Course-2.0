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



struct Point { var x: Int; var y: Int }
var p1 = Point(x: 1, y: 2)
var p2 = p1 // copy
p2.x = 10
print(p1.x) // prints "1"
print(p2.x) // prints "10"



// struct Point { var x: Int; var y: Int }
// class Counter { var value = 0 }

// var p1 = Point(x: 1, y: 2), p2 = p1 // copy
// p2.x = 9 // p1.x remains 1

// let c1 = Counter(), c2 = c1 // same instance
// c2.value = 7 // c1.value is 7


// static

class User {
  var name: String // stored
  var greeting: String { "Hello, \(name)" } // computed
  static var appName = "MyApp" // type property
  init(name: String) { self.name = name }
}



class Player {
  var score: Int = 0 {
    willSet { print("About to set to \(newValue)") }
    didSet { print("Changed from \(oldValue) to \(score)") }
  }
}

let p = Player()
p.score = 10