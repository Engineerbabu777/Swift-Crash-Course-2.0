

// Create class hierarchies where subclasses inherit properties and methods and can override behavior.



class Animal { func speak() { print("...") } }
class Dog: Animal { override func speak() { print("Woof") } }
let a = Animal(); a.speak()
let d = Dog(); d.speak()


class Animal2 { func speak() { print("...") } }
class Dog2: Animal2 {
  override func speak() {
    super.speak()
    print("Woof")
  }
}
let d2 = Dog2()
d2.speak()