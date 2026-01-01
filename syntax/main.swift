
// Lets look at some basic Swift syntax:

// Constants/variables: Use let (constant) and var (variable).
// Types: Common types include Int, Double, Bool, String.
// Type inference: The compiler infers types from initial values.

let greeting = "Hello" // greeting is inferred as a string
var name = "Alice" // name is inferred as a string
name = "Bob" // reassigning variable

print(greeting + ", " + name) // string concatenation
print("\(greeting), \(name)")  // interpolation


// Functions
// Functions are blocks of code that perform a specific task.

// Syntax: func name(param: Type) -> Return, call as name(param:).

// name === function name
// param === parameter
// type === data type
// return === what the function returns
func greet(name: String) -> Void {
    print("Hello, \(name)")
}

// name === argument
greet(name: "John") // prints "Hello, John"


// un-named parameters
func add(_ x: Int, _ y: Int) -> Int {
    return x + y
}

print(add(2, 3))