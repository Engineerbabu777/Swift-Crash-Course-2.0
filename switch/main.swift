

let grade = 82
switch grade {
case 90...100:
  print("A")
case 80..<90:
  print("B")
case 70..<80:
  print("C")
default:
  print("Below C")
}