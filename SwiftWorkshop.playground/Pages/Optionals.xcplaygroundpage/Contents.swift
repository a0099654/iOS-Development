//: ## Optionals

var numberOfLegs = ["ant": 6, "human": 4, "snake": 0]

//: Welcome to your first optional. Optionals represent possibly missing values. It's used all over Swift.
//: An optional value either contains a value or contains `nil` (no value) to indicate that a value is missing. Write a question mark (`?`) after the type of a value to mark the value as optional.
//:
//: In Swift, by default variables or constants cannot be nil unless they are typed to be an optional
//: To get the underlying type from an optional, you _unwrap_ it. The most straightforward way to do it involves the _force unwrap operator_ (`!`). Only use the unwrap operator if you’re sure the underlying value isn’t `nil`.

let legsLabel = numberOfLegs["human"]
if(legsLabel == nil){
    print("humans have no legs")
}else{
    print("humans have \(legsLabel!) legs")
}
//: There's an easier way to do this checking in swift by using an `if let`. `let` unwraps the optional for you and only returns true if and only if the optional is not nil. If the optional value is `nil`, the conditional is `false`, and the code in braces is skipped. Otherwise, the optional value is unwrapped and assigned to the constant after `let`, which makes the unwrapped value available inside the block of code. This is called optional binding

if let legsLabel = numberOfLegs["human"]{
    print (legsLabel)
}

//: Notice there is no need for the unwrapping `!` anymore.
//: 
//: Lets make our own optionals
var optionalInt: Int? = nil
optionalInt = 5
let actualInt = optionalInt!


//: Optionals are everywhere Swift, and are very useful for many situations where a value may or may not be present. They’re especially useful for attempted type conversions.
var myString = "7"
if let intValue = Int(myString){
    intValue
}

myString = "banana"
if let intValue = Int(myString){
    intValue
}




//: In this code, the value of `intValue` is `7`, because `myString` contains the value of an integer. But if you change `myString` to be something that can’t be converted to an integer, `intValue` becomes `nil`.


//: ### Advanced: Optional chaining
let moduleMCs = ["modules":
                    ["CS1101":
                        ["mc": 4],
                    "PY1101":
                        ["mc": 6]
                    ]
                ]


if let modules = moduleMCs["modules"] {
    if let cs1101 = modules["CS1101"] {
        if let cs1101MC = cs1101["mc"] {
            cs1101MC
        }
    }
}

moduleMCs["modules"]?["CS1101"]?["mc"]

//: Optional chaining is a concise way to work with chained optionals

//: [Previous](@previous) | [Next](@next)
