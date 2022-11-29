import UIKit

// SIMPLE VALUES.

// Use let to make constant and var to make a variable. The value of constant doesn't need to be known at compile time, but you must assign it a value excatly once. This mean you can use constants to name a value that you determine once but use in many places.

var myVar = 45
myVar = 55
let myCon = 33

// A Constant or variable must have the same type as the value you want to assign to it. However, you don't always have to write the type explicitly. Providing a value when you create a constant or variable lets the compiler infer its type. In the example above, the compiler infers that myVar is an Integer because its initial value is an integer.

// if the initial value doesn't provide enough information (or if there isn't an initial value), specify the type by writing it after the variable, separated by a colon.

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70.0

// Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desire type.

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

// There's an even simpler way to include values in string: Write the value in parantheses, and write backslash (\) before the parantheses. For Example:

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruits."

// Use three double quotation marks (""") for string that take upmultiple lines. Indentation at the start of each quoted line is removed, as long as it matches the indentation of the closing quotation mark. For Example:

let quotation =
"""
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruits."
"""

// Create arrays and dictionaries using brackets ([]), and access their elements by writing the index or key in brackets. A comma is allowed after the last element.

var fruits = ["Strawberries", "Limes", "Tangerines"]
fruits[1] = "Grapes"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]

occupations["Jayne"] = "Public Relations"

// Arrays automatically grow as you add elements.

fruits.append("Blueberries")
print(fruits)

// To create an empty array or dictionary, use initializer syntax.

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

// If type information can be inferred, you can write an empty array as [] and an empty dictionary as [:] - or example, when you set a new value for a variable or pass an argument to a function.

fruits = []
occupations = [:]
