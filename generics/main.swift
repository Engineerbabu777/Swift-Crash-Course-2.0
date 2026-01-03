


func swapTwo<T>(_ a: inout T, _ b: inout T) {
  let tmp = a
  a = b
  b = tmp
}

var x = 1, y = 2
swapTwo(&x, &y)
print(x)
print(y)

func minValue<T: Comparable>(_ a: T, _ b: T) -> T { a < b ? a : b }

print(minValue(3, 1.2))        // 3
print(minValue("b", "X"))  // a