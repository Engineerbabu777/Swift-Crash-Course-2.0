

// var n = 3
// while n > 0 {
//   print(n)
//   n -= 1
// }
print("Liftoff!")

var attempts = 0
repeat {
  attempts += 1
  print("Attempt #\(attempts)")
} while attempts < 3


var n = 0
repeat {
  print("Runs once")
} while n > 0


var remaining = 3
while remaining > 0 {
  print("Remaining: \(remaining)")
  remaining -= 1
}


for i in 1...3 {
  print(i)
}


let nums = [10, 20, 30]
for n in nums {
  print(n)
}
for (index, value) in nums.enumerated() {
  print("index: \(index), value: \(value)")
}


for i in 1...2 {
  for j in 1...3 {
    print(i, j)
  }
}

["A","B","C"].forEach { print($0) }


let items = ["A","B","C"]
items.enumerated().forEach { print("\($0.offset): \($0.element)") }


let numbers = [1,2,3,4,5]
var sum = 0
for n in numbers { sum += n }
print(sum)


for i in 1...10 {
  if i == 4 { break }
  print(i)
}


for i in 1...5 {
  if i % 2 == 0 { continue }
  print(i) // only odd numbers
}