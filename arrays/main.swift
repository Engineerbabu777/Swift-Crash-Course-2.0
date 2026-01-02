

var numbers = [10, 20, 30]
print(numbers[0])         // 10
numbers.append(40)
print(numbers.count)      // 4
print(numbers.isEmpty)    // false


// var items = ["A", "B", "C"]
// items.insert("X", at: 1)
// print(items)
// items.remove(at: 2)
// print(items)


// convert to emojis
// let fruits = ["Apple", "Banana", "Cherry"]
// for fruit in fruits {
//   print(fruit)
// }
// for (i, fruit) in fruits.enumerated() {
//   print("\(i): \(fruit)")
// }


let fruits = ["Apple", "Banana", "Cherry"]
fruits.forEach { print($0) }
fruits.enumerated().forEach { print("\($0.offset): \($0.element)") }


// let nums = [10, 20, 30, 40, 50]
// let middle = nums[1...3]          // ArraySlice<Int>
// print(middle)                     // [20, 30, 40]
// let copy = Array(middle)          // Array<Int>
// print(copy)


let nums = [10, 20, 30, 40, 50]
let slice = nums[1..<3]   // indices 1 and 2
print(slice) 


// let items = [10, 20, 30]
// print(items.startIndex)       // 0
// for i in items.indices {
//   print("index: \(i), value: \(items[i])")
// }


let items = [10, 20, 30]
print(items[0])   // OK
// print(items[3]) // out of bounds



// let items = [10, 20, 30]
// let lastIndex = items.index(before: items.endIndex)
// print(lastIndex)        // 2
// print(items[lastIndex]) // 30



var grid = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
grid[1][1] = 99
print(grid[1])      // [4, 99, 6]
print(grid[1][1])   // 99



let scores = [72, 88, 95, 64, 83]
let passed = scores.filter { $0 >= 75 }
let curved = passed.map { $0 + 5 }
let average = curved.reduce(0, +) / curved.count
print(passed)
print(curved)
print("Average: \(average)")


let names = ["Kai", "Bjorn", "Stale"]
print(names.contains("Bjorn"))            // true
if let i = names.firstIndex(of: "Stale") {
  print(i)                                 // 2
}