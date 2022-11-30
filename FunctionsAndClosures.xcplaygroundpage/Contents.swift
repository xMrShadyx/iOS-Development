import UIKit

// Use func to declare a function. Call a function by following its name with a list of arguments in paranthese. Use -> to separete the parameter names and types from the function's return type.

func greet1(person: String, day: String) -> String {
    return "Hello, \(person), today is \(day)"
}

greet1(person: "Bob", day: "Tuesday")


// By default, function use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write _ to use no argument label.

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}

greet("John", on: "Wednesday")

// Use tuple to make a compound value-for example, to return multiple values from a function. The elements of a tuple can be refferd to either by name or by number.

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min{
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics)
print(statistics.sum)
print(statistics.2)

// Functions can be nested. Nested function have access to variables that were declared in the outer function. You can use nested function to orgineze the code in a function that's long or complex.

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

returnFifteen()

// Functions are first class type. This means that a function can return another function as it value.

func makeIncrement() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrement()
increment(7)

// A function can take another function as one of its arguments.

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanThen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 9, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanThen)

// Functions are actually a special case of closures: block of code that can be called later. The code in a closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a differend scope when it's executed you saw an example of this already with nested functions. You can write a closure without name by surrounding code with braces ({}). Use in to separate the arguments and return type from the body.

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

// You have several options for writing closures more concisely. When a closure's type is already known, such as the callback for a delegate, you can omit the type of its parameters, its return type, or both. Single statement closures implicitly return the value of their only statement.

let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

// You can refer to parameters by number instead of by name this approach is especially useful in very short closures. A closures passed as the last argument to a function can appear immediately after the parantheses. When a closure is the only argument to a function, you can omit the parathese entirely.

let sortedNumbers = numbers.sorted {$0 > $1}
print(sortedNumbers)
