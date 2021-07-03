import Cocoa

// MARK: Type conversion

var integer: Int = 100
var decimal: Double = 12.5
integer = Int(decimal)

// Opeators with mixed types

let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
let totalCost: Double = hourlyRate * Double(hoursWorked)

// Type inference

let typeInferredInt = 42
let typeInferredDouble = 3.14159

let wantADouble = 3
let actuallyDouble = 3 as Double

// Mini-exercises
/* 1. Create a constant called age1 and set it equal to 42. Create a constant called age2 and set it equal to 21. Check using Option-click that the type for both has been inferred correctly as Int.
*/

let age1 = 42
let age2 = 21

/*`2. Create a constant called avg1 and set it equal to the average of age1 and age2 using the naïve operation (age1 + age2) / 2. Use Option-click to check the type and check the result of avg1. Why is it wrong?
*/

let avg1 = (age1 + age2)/2

// It is wrong because both variables are Ints and int division truncates

/* 3. Correct the mistake in the above exercise by converting age1 and age2 to type Double in the formula. Use Option-click to check the type and check the result of avg1. Why is it now correct?
*/

let avg2 = (Double(age1) + Double(age2)) / 2

// It is correct because double division doesn't truncate

// MARK: Strings in Swift

// Characters and strings
let characterA: Character = "a"
let characterDog: Character = "🐶"

let stringDog: String = "Dog"

// Concatenation

var message = "Hello" + " my name is "
let name = "Matt"
message += name

let exclamationMark: Character = "!"
message += String(exclamationMark)

// Interpolation

message = "Hello my name is \(name)!"

let oneThird = 1.0 / 3.0
let oneThirdLongString = "One third is \(oneThird) as a decimal."

// Multi-line strings
let bigstring = """
You can have a string
that contains multiple
lines
by
doing this.
"""

print(bigstring)

// Mini-exercises

/* 1. Create a string constant called firstName and initialize it to your first name. Also create a string constant called lastName and initialize it to your last name.
*/

let firstName = "Akshat"
let lastName = "Jain"

/* 2. Create a string constant called fullName by adding the firstName and lastName constants together, separated by a space.
*/

let fullName = firstName + " " + lastName

/* 3. Using interpolation, create a string constant called myDetails that uses the fullName constant to create a string introducing yourself. For example, my string would read: "Hello, my name is Matt Galloway.
*/

let myDetails = "Hello, my name is \(fullName)."
// MARK: Tuples

let coordinates: (Int, Int) =  (2,3)

let coordinatesDoubles = (2.1, 3.5)

let coordinatesMixed = (2.1, 3)

let x1 = coordinates.0
let y1 = coordinates.1

let coordinatesNamed = (x: 2, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let coordinates3D = (x:2, y:3, z:1)
let (x3,y3,z3) = coordinates3D
let (x4, y4, _) = coordinates3D

// Mini-exercises

/* 1. Declare a constant tuple that contains three Int values followed by a Double. Use this to represent a date (month, day, year) followed by an average temperature for that date.
*/
let averageTempearture = (3,7,21, 27.0)

/* 2. Change the tuple to name the constituent components. Give them names related to the data that they contain: month, day, year and averageTemperature.
*/

let averageTempearture2 = (day: 3,month: 7,year: 21, averageTempearture: 27.0)

/* 3. In one line, read the day and average temperature values into two constants. You’ll need to employ the underscore to ignore the month and year.
*/

let (day,_,_,avgTemp) = averageTempearture2

/* 4. Up until now, you’ve only seen constant tuples. But you can create variable tuples, too. Change the tuple you created in the exercises above to a variable by using var instead of let. Now change the average temperature to a new value.
*/

var averageTempearture3 = (day: 3,month: 7,year: 21, averageTempearture: 27.0)

averageTempearture3.averageTempearture = 30.56

// MARK: A whole lot of number types

let a: Int16 = 12
let b: UInt8 = 255
let c: Int32 = -100000

let answer = Int(a) + Int(b) + Int(c)  // answer is an Int

// MARK: Type aliases

typealias Animal = String

let myPet: Animal = "Dog"

typealias Coordinates = (Int, Int)
let xy: Coordinates = (2, 4)

// MARK: Challenges

/* Challenge 1: Coordinates
 Create a constant called coordinates and assign a tuple containing two and three to it.
*/

let coordinates2 = (2,3)

/* Challenge 2: Named coordinate
 Create a constant called namedCoordinate with a row and column component.
*/

let namedCoordinate = (row:2, column:3)

/* Challenge 3: Which are valid?
 Which of the following are valid statements?
 let character: Character = "Dog"
 let character: Character = "🐶"
 let string: String = "Dog"
 let string: String = "🐶”
*/

// Only 3

/* Challenge 4. Does it compile?
 let tuple = (day: 15, month: 8, year: 2015)
 let day = tuple.Day
*/

// No because Day should be all lowercase

/* Challenge 5: Find the error
 What is wrong with the following code?
 let name = "Matt"
 name += " Galloway”

*/

// name is let constant

/* Challenge 6: What is the type of value?
 What is the type of the constant named value?
 let tuple = (100, 1.5, 10)
 let value = tuple.1
*/

// Double

/* Challenge 7: What is the value of month?
 What is the value of the constant named month?
 let tuple = (day: 15, month: 8, year: 2015)
 let month = tuple.month
*/

// 8

/* Challenge 8: What is the value of summary?
 What is the value of the constant named summary?
 let number = 10
 let multiplier = 5
 let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"
*/


// 10 multiplied by 5 equals 50

/* Challenge 9: Compute the value
 What is the sum of a and b, minus c?
 let a = 4
 let b: Int32 = 100
 let c: UInt8 = 12
*/

let a1 = 4
let b1: Int32 = 100
let c1: UInt8 = 12

a1 + Int(b1) - Int(c1)

/* Challenge 10: Different precision 𝜋s
 What is the numeric difference between Double.pi and Float.pi?”
*/

Double.pi - Double(Float.pi)
