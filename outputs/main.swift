




print("Hello, Swift!")
let name = "Kai"
print("Hello, \(name)!")

let a = 2, b = 3
print("Total: \(a + b)")


// terminator!

for n in 1...3 {
    print(n)
}

for x in 1...5{
    print(x,terminator:"--X--")
}


let x = 7, y = 3
print(x, y)                 // space-separated by default
print("x=\(x), y=\(y)")     // interpolation
print("sum = \(x + y)")     // inline math


let z = -7
print(abs(z))          // 7
print(min(3, 8))       // 3
print(max(3, 8))       // 8