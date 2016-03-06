//: # Swift Hackerschool - NUS Hackers
//: ## A swift tour of Swift
//: ![Swift Logo](swift_logo.png "Swift logo")
//: 
//: ## Hello, World!
//: Let's follow tradition and start with a Hello World
/*:
This is how "Hello, World" in done in C

    #include <stdio.h>

    int main() {
        printf("hello, world\n");
        return 0;
    }
and this is how "Hello, World" is done in Swift
*/
print("hello world")


//: Woah what? No semicolons ??? Really? Yes! They still work, but there's no need
//: ## Swift comments

// This is a comment. Comments are ignored and not compiled or evaluated

/* 
This is also a multi
line
comment
*/

//: ## Contants & Variables
//: A _constant_ is a value that stays the same after it’s declared the first time, while a _variable_ is a value that can change. A constant is referred to as immutable, meaning that it can’t be changed, and a variable is mutable. If you know that a value won’t need to be changed in your code, declare it as a constant instead of a variable.
//:
//: Use `let` to make a constant and `var` to make a variable.
//:

let name = "Stella"
let birthYear = 1993
var age = 23
age = 21
var 😬 = "stella"
😬



//: Protip: Swift supports Unicode too

//: Swift prefers immutability by default. This allows Swift to run crazy optimizations by knowing what is and what isn't going to change. It also makes your code much more readable.
//: Every constant and variable in Swift has a type, but you don’t always have to write the type explicitly. Providing a value when you create a constant or variable lets the compiler infer its type. In the example above, the compiler infers that `age` is an integer because its initial value is an integer. This is called _type inference_. Once a constant or variable has a type, that type can’t be changed.
let implicitInt = 70
let implicitDouble = 70.0
let explicitDouble : Double
explicitDouble = 20.56


//: Protip: In Xcode, Option-click the name of a constant or variable to see its inferred type. Try doing that with the constants in the code above.
//:
//: Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type. Here, you convert an `Int` to a `String`.
//:
let nameLabel = "My name is " + name
let ageLabel = "My age is \(age) "
let birthLabel = nameLabel +  " and I was born in \(birthYear)"




//: Protip: String interpolation. There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (`\`) before the parentheses.
//:

//: ## Arrays
//: An array is a data type that keeps track of an ordered collection of items. Create arrays using brackets `[]`, and access their elements by writing the index in brackets. Arrays start at index `0`.
//:
let intArray = [1,2,3,4]
var feelings = ["Poor", "Fine", "Good", "Excelent"]
feelings[0]
feelings[0] = "Awe"
feelings

let feelingLabel = nameLabel + "I am feeling \(feelings[2]) today"
var emptyArray = [String]()
emptyArray.append("one")
emptyArray.append("two")





//: ## Dictionaries
//: A dictionary is a data type that keeps track of keys and values. Each key is associated to a value. Keys & values can have different types. Create dictionaries using `[Type:Type]` and access values by `[Key]`
var numberOfLegs = [String: Int]()
numberOfLegs["ant"] = 6
numberOfLegs["snake"] = 0
numberOfLegs["human"] = 2
numberOfLegs

let legsLabel = nameLabel + " and I have \(numberOfLegs["human"]) legs"

//: Huh why am I seeing optionals?

//:
//: [Next](@next)
