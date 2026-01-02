for n in 1...5 {
  print(n)
}
for n in 1..<5 {
  print(n)
}
let r = 10...12
print(r)
print(r.lowerBound)  //10
print(r.upperBound)  //12
print(r.contains(11))
print(r.contains(13))
print(type(of: r))  //ClosedRange<Int>

let arr = [0, 1, 2, 3, 4]
print(arr[...2])  // first three elements (indices 0...2)
print(arr[2...])  // from index 2 to the end
