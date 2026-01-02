

// var nums: [Int] = [1, 2, 3]
// nums.append(4)
// print(nums.count)    // 4
// print(nums[0]) 


// var ages: [String: Int] = ["Kai": 30]
// ages["Elisabeth"] = 25
// print(ages["Kai"] ?? 0)


var letters: Set<Character> = ["a", "b", "a"]
print(letters.contains("a"))


let a: Set<Int> = [1, 2, 3]
let b: Set<Int> = [3, 4]
print(a.union(b).sorted())         // [1, 2, 3, 4]
print(a.intersection(b).sorted())  // [3]
print(a.subtracting(b).sorted())   // [1, 2]


// var ages: [String: Int] = ["Kai": 30]
// ages["Elisabeth"] = 25
// print(ages["Kai"] ?? 0)


let ages = ["Kai": 30, "Elisabeth": 25]
for k in ages.keys.sorted() {
  print("\(k): \(ages[k]!)")
}

let raw = ["1", "x", "2", "3"]
let ints = raw.compactMap { Int($0) }   // [1, 2, 3]
let total = ints.reduce(0, +)
print(total)

// let nums = [1, 2, 3, 4]
// let doubled = nums.map { $0 * 2 }
// print(doubled)     // [2, 4, 6, 8]
// print(nums)

var nums = [3, 1, 2]
let ascending = nums.sorted()
print(ascending)      // [1, 2, 3]
nums.sort(by: >)
print(nums)           // [3, 2, 1]


let arr = [1, 2, 3]
print(arr.count)
print(arr.isEmpty)
let s: Set<Int> = [1, 2, 3]
print(s.contains(2))
print(s.isEmpty)