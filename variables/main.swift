
// Swift Variables

let constant = 10
var counter = 0
counter += 1
// constant = 12 // Error if uncommented
print(constant, counter)


let x = 10
let y: Int = 20
print(x, y)


var nickname: String? = nil
nickname = "KJ"
print(nickname ?? "none")


let first = "Hello"
let second = "Swift"
// Concatenation
print(first + ", " + second)
// Interpolation
print("\(first), \(second)")

let a = 2, b = 3
print("a = \(a), b = \(b), sum = \(a + b)")


let n = 1, m = 2, g = 3
print(n, m, g, separator: ", ", terminator: "; ")
print("done")  // prints on the same line after a semicolon



// var x = 1, y = 2, z = 3
// let a = 10, b = 20
// print(x, y, z, a, b)

var i: Int = 1, j: Int = 2
let firstName: String = "Robin", lastName: String = "Refsnes"
print(i + j, firstName, lastName)


// let name = "Swift"
// let π = 3.14
// let _hidden = true


let `switch` = "ok"   // escape a keyword using backticks
let dog = "🐶"          // Unicode identifier
print(`switch`, dog)


let pi = 3.14159
let maxCount = 100
// pi = 4.0 // Error: cannot assign to value: 'pi' is a 'let' constant



var nums = [1, 2]
nums.append(3)       // OK: nums is var
print(nums)

let fixed = [1, 2]
// fixed.append(3)  // Error if uncommented: cannot use mutating member on immutable value



var count = 0
count += 1
print("Count: \(count)")