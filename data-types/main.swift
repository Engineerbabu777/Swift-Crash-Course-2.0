


let anInt = 42           // Int
let aDouble = 3.14       // Double
let isSwiftFun = true    // Bool
let greeting = "Hello"    // String
print(aDouble)
print(isSwiftFun)
print(greeting)


let inferred = 10          // Int (inferred)
let annotated: Double = 3  // Double (explicit)
print(type(of: inferred), type(of: annotated))


// let a = 5, b = 2
// print(a - b)
// print(a * b)
// print(Double(a) / Double(b))


// let a = 7, b = 3
// print(a / b)  // 2 (integer division)
// print(a % b)  // 1 (remainder)



let a = true, b = false
print(a && b)
print(a || b)
print(!a)


// let ch: Character = "A"
// print(ch)
// let word = "Swift"
// print(word.count)



let ch: Character = "A"
let s = String(ch)
print(s.count)              // "A


let heart: Character = "❤️"
print(heart)
let flag: Character = "🇳🇴" // composed of two regional indicators
print(flag)
print("e\u{301}".count) // 1 (e + combining acute accent)