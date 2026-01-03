


var a = [1,2,3]
var b = a // shares storage
a.append(4) // triggers copy for b only
print(a) // [1,2,3]
print(b) // [1,2,3,4]