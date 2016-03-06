//: ## Functions
//:
//: A _function_ is a reusable, named piece of code that can be referred to from many places in a program.
//:
//: Use `func` to declare a function. A function declaration can include zero or more _parameters_, written as `name: Type`, which are additional pieces of information that must be passed into the function when it’s called. Optionally, a function can have a return type, written after the `->`, which indicates what the function returns as its result. A function’s implementation goes inside of a pair of curly braces (`{}`).

func sayHi(){
    print("Hi")
}

sayHi()

func sayHi (name: String) -> String {
    return "Hello \(name)"
}

sayHi ("Stella")


func sayHi(fromName: String, toName:String) -> String {
    return "Hello from \(fromName) to \(toName)"
}

sayHi("Stella", toName: "Stacey")



//: Functions that are defined within a specific type are called _methods_. Methods are explicitly tied to the type they’re defined in, and can only be called on that type (or one of its subclasses, as you’ll learn about soon). Let's trying using the `hasSuffix()` from `String`

let str = "Hello"
if str.hasSuffix("lo") {
    "ends in lo"
}


//: As you see, you call a method using the dot syntax. When you call a method, you pass in the first argument value without writing its name, and every subsequent value with its name. For example, this method on `Array` takes two parameters, and you only pass in the name for the second one:
//:
//: ## Classes and Initializers
//:
//: In object-oriented programming, the behavior of a program is based largely on interactions between objects. An _object_ is an instance of a _class_, which can be thought of as a blueprint for that object. Classes store additional information about themselves in the form of _properties_, and define their behavior using methods.
//:
//: Use `class` followed by the class’s name to define a class. A property declaration in a class is written the same way as a constant or variable declaration, except that it’s in the context of a class. Likewise, method and function declarations are written the same way.
//:
/*:
    class <Name>: <Subclass> {
        properties
        methods
        initializers
    }
*/
class Event1 {
    var name: String?
    var desc: String?
    var attending = false
    
    func print() -> String{
        return "\(name) \(desc)"
    }
}

var event1 = Event1()
event1.name = "Swift Workshop"
event1.desc = "Description"
event1.print()


//: Create an instance of a class—an object—by putting parentheses after the class name. Use dot syntax to access the properties and methods of the instance. Here, `event1` is an object that’s an instance of the `Event1` class.


//: This `Event1` class is missing something important: an initializer. An _initializer_ is a method that prepares an instance of a class for use, which involves setting an initial value for each property and performing any other setup. Use `init` to create one. This example defines a new class, `Event`, that has an initializer which takes in a name & desc.
//:
class Event {
    var name: String
    var desc: String
    var attending = false
    var type: String
    
    init(name:String, desc:String, type:String){
        self.name = name
        self.desc = desc
        self.type = type
    }
    
    func print() -> String{
        return "\(name) \(desc)"
    }
}

let event2 = Event(name: "Swift Workshop", desc: "description", type: "School event")
event2.print()


//: Notice how `self` is used to distinguish the `name` property from the `name` argument to the initializer. Every property needs a value assigned—either in its declaration or in the initializer (as with `name`).
//:
//: You don’t call an initializer by writing `init`; you call it by putting parentheses with the appropriate arguments after the class name. When you call an initializer, you include all arguments names along with their values.
//:

//: Lets create a subclass of `Event` and call it `SchoolEvent` with some special properties
class SchoolEvent: Event {
    var attendance = 0
    var school: String
    
    init(name: String, desc: String, school : String) {
        self.school = school
        super.init(name: name, desc: desc, type: "School")
    }
    
    override func print() -> String {
        return "This is a school event: \(name)"
    }
}

let schoolEvent = SchoolEvent(name: "Swift Workshop", desc: "Desc", school: "NUS")
schoolEvent.school
schoolEvent.print()


//: [Previous](@previous) | [Next](@next)
