

let s1 = "Hello"
let s2 = "Swift"
print(s1 + " " + s2)
print("\(s1), \(s2)!")
let word = "Swift"
print(word.count)
print(s1.isEmpty)


// let text = "Swift"
// let start = text.startIndex
// let end = text.index(start, offsetBy: 3)
// let sub = text[start..<end]  // "Swi"
// print(sub)
// print(text.uppercased())


var s = "Hello"
s += ", Swift"
print(s)


let age = 5
print("Age: \(age)")          // interpolation
let text = "You are " + String(age)
print(text)
let pi = 3.14
print("pi = \(pi)")




print("Hello\nSwift")
print("A\tB\tC")
print("\"quoted\"")
print("\\")



let poem = """
Roses are red,
Violets are blue.
"""
print(poem)


let e1 = "é"
let e2 = "e\u{301}"   // e + COMBINING ACUTE ACCENT
print(e1 == e2)
print(e2)