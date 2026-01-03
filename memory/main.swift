

class Box {
  let name: String
  init(_ n: String) { name = n; print("init \(n)") }
  deinit { print("deinit \(name)") }
}

do {
  let b = Box("A")
  print("in scope")
}
print("after scope")


class Person {
  let name: String
  var apartment: Apartment?
  init(name: String) { self.name = name }
  deinit { print("Person deinit") }
}

class Apartment {
  let unit: String
  weak var tenant: Person? // weak breaks the cycle
  init(unit: String) { self.unit = unit }
  deinit { print("Apartment deinit") }
}

do {
  var john: Person? = Person(name: "John")
  var unit: Apartment? = Apartment(unit: "4A")
  john!.apartment = unit
  unit!.tenant = john
  john = nil   // Person deinit
  unit = nil   // Apartment deinit
}


// class Loader {
//   var onComplete: (() -> Void)?
//   func load() {
//     // simulate async completion
//     DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
//       guard let self = self else { return }
//       print("Finished: \(self)")
//       self.onComplete?()
//     }
//   }
//   deinit { print("Loader deinit") }
// }

// do {
//   let loader = Loader()
//   loader.onComplete = { print("done callback") }
//   loader.load()
// }