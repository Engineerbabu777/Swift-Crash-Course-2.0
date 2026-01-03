struct User { var name: String; var age: Int }
let a = User(name: "Morgan", age: 30) // memberwise

struct Point {
  var x: Int, y: Int
  init(_ x: Int, _ y: Int) { self.x = x; self.y = y }
}
let p = Point(1, 2)


class Person {
  let name: String
  let age: Int
  init(name: String, age: Int) {
    self.name = name; self.age = age
  }
  convenience init(name: String) { self.init(name: name, age: 0) }
}

let p1 = Person(name: "Robin", age: 30)
let p2 = Person(name: "Elisabeth")