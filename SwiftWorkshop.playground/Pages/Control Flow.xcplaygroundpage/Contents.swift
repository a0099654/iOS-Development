//: ## Control Flow
//:
//: Swift has two types of control flow statements. _Conditional statements_, like `if` and `switch`, check whether a condition is true—that is, if its value evaluates to the Boolean `true`—before executing a piece of code. _Loops_, like `for`-`in` and `while`, execute the same piece of code multiple times.
//:
//: An `if` statement checks whether a certain condition is true, and if it is, the `if` statement evaluates the code inside the statement. You can add an `else` clause to an `if` statement to define more complex behavior. An `else` clause can be used to chain `if` statements together, or it can stand on its own, in which case the `else` clause is executed if none of the chained `if` statements evaluate to `true`.
let age = 23
if age < 18{
    "You are a minor"
}else if age > 100{
    "You're a bit old"
}else{
    "You're fine"
}

//: Traditionally you'll be used to running for loops like this

for var i = 0; i < 10; i++ {
    i
}

//: But swift has a powerful range operator that makes it simpler

for i in 0..<10{
    i
}


for i in 0...10{
    i
}

//: Protip: Understand the difference between `0..<10` (Exclusive) and `0...9` (Inclusive)
//:
//: If you are looping through arrays and dictionaries theres a much faster way

let feelings = ["Poor", "Fine", "Good", "Excellent"]

for feeling in feelings{
    feelings
}

var numberOfLegs = ["ant": 6, "human": 4, "snake": 0]

for (animal, legs) in numberOfLegs{
    "\(animal) has \(legs) legs"
}

//: [Previous](@previous) | [Next](@next)
