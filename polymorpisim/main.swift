

// class Animal { func speak() { print("...") } }
// class Dog: Animal { override func speak() { print("Woof") } }
// class Cat: Animal { override func speak() { print("Meow") } }

// let animals: [Animal] = [Dog(), Cat()]
// animals.forEach { $0.speak() }


protocol Speaker { func speak() }
struct Dog: Speaker { func speak() { print("Woof") } }
struct Cat: Speaker { func speak() { print("Meow") } }

let speakers: [Speaker] = [Dog(), Cat()]
speakers.forEach { $0.speak() }