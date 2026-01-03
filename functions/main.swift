

// func greet(name: String) -> String {
//   return "Hello, \(name)!"
// }
// print(greet(name: "Swift"))


func increment(_ value: inout Int, by step: Int = 1) {
  value += step
}
var x = 10
increment(&x)
print(x) // 11

func sum(_ nums: Int...) -> Int { nums.reduce(0, +) }
print(sum(1,2,3))


var nickname: String? = nil
print(nickname ?? "(none)")

nickname = "Ace"
if let name = nickname {
  print(name)
}


func greet(_ input: String?) {
  guard let name = input else {
    print("Missing name")
    return
  }
  print("Hello, \(name)")
}



greet(nil)
greet("Swift")


enum Direction { case north, south, east, west }

let d: Direction = .east
print(d)



// func describe(_ code: Barcode) {
//   switch code {
//   case .upc(let numberSystem, let manufacturer, let product, let check):
//     print("UPC: \(numberSystem)-\(manufacturer)-\(product)-\(check)")
//   case .qr(let text):
//     print("QR: \(text)")
//   }
// }

// describe(b1)
// describe(b2)


func makeCounter() -> () -> Int {
  var n = 0
  return {
    n += 1
    return n
  }
}

let next = makeCounter()
print(next()) // 1
print(next()) // 2

let user: (name: String, age: Int) = ("Morgan", 30)
print(user.name)
print(user.age)

let http: (code: Int, message: String) = (200, "OK")
let (code, msg) = http
print(code)
print(msg)