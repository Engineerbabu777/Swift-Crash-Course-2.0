


protocol Greetable { func greet() -> String }

struct Person: Greetable {
  var name: String
  func greet() -> String { "Hello, \(name)" }
}

let p = Person(name: "Swift")
print(p.greet())

protocol Describable { func describe() -> String }

extension Describable {
  func describe() -> String { "(no description)" }
}

struct User: Describable { let name: String }

struct Car: Describable {
  let model: String
  func describe() -> String { "Car: \(model)" }
}

let u = User(name: "Morgan")
let c = Car(model: "SwiftMobile")
print(u.describe())
print(c.describe())