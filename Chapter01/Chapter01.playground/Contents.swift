import Cocoa

// MARK: Code comments
// This is a comment. It is not executed.

// This is also a commment
// Over multiple lines

/* This is also a comment
 Over many...
 many...
 many lines.
 */

/* This is a comment
 /* And inside it
 is
 another comment
 */
 Back to the first
 */

// MARK: Printing out
print("Hello, Swift Apprentice reader!")

// MARK: Arithmetic operations
2 + 6
10 - 2
2 * 4
24 / 3

// MARK: Decimal numbers

22.0 / 7.0

// MARK: The remmainder operation
28 % 10
(28.0).truncatingRemainder(dividingBy: 10.0)

// MARK: Shift operations

1 << 3
32 >> 2

// MARK: Order of operations
((8000 / (5 * 10)) - 32) >> (29 % 5)

// MARK: Math functions

sin(45 * Double.pi / 180)
cos(135 * Double.pi / 180)
(2.0).squareRoot()
max(5, 10)
min(-5, -10)
max((2.0).squareRoot(), Double.pi / 2)

// MARK: Naming data

// Constants
let number: Int = 10
let pu: Double = 3.14159

// Variables
var variableNumber: Int = 42
variableNumber = 0
variableNumber = 1_000_000

// Using meaningful names
var 🐶💩: Int = -1

// MARK: Increment and decrement

var counter: Int = 0

counter += 1
// counter = 1

counter -= 1
// counter = 0

counter = 10

counter *= 3
// counter = 30

counter /= 2
// counter = 15

// Mini exercises

// 1. Declare a constant of type Int called myAge and set it to your age.

let myAge: Int = 25

// 2. Declare a variable of type Double called averageAge. Initially, set it to your own age. Then, set it to the average of your age and my own age of 30.

var averageAge: Double = 25
averageAge = (averageAge + 30) / 2

// MARK: Challenges

/* Challenge 1: Variables
Declare a constant Int called myAge and set it equal to your age. Also declare an Int variable called dogs and set it equal to the number of dogs you own. Then imagine you bought a new puppy and increment the dogs variable by one.
*/

let myAge1: Int = 25
var dogs: Int = 0
dogs += 1

/* Challenge 2: Make it compile
 Given the following code:
 age: Int = 16
 print(age)
 age = 30
 print(age)
 Modify the first line so that it compiles. Did you use var or let?
*/

var age: Int = 16
print(age)
age = 30
print(age)

// I used var

/* Challenge 3: Compute the answer
 Consider the following code:
 let x: Int = 46
 let y: Int = 10
 Work out what answer equals when you add the following lines of code:
 // 1
 let answer1: Int = (x * 100) + y
 // 2
 let answer2: Int = (x * 100) + (y * 100)
 // 3
 let answer3: Int = (x * 100) + (y / 10)
*/

let x: Int = 46
let y: Int = 10

// 1
let answer1: Int = (x * 100) + y
// 2
let answer2: Int = (x * 100) + (y * 100)
// 3
let answer3: Int = (x * 100) + (y / 10)

/* Challenge 4: Add parentheses
 Add as many parentheses to the following calculation, ensuring that it doesn’t change the result of the calculation.
 8 - 4 * 2 + 6 / 3 * 4
*/

8 - (4 * 2) + ((6 / 3) * 4)

/* Challenge 5: Average rating
 Declare three constants called rating1, rating2 and rating3 of type Double and assign each a value. Calculate the average of the three and store the result in a constant named averageRating.
*/

let rating1: Double = 10.0
let rating2: Double = 20.0
let rating3: Double = 30.0

let averageRating: Double = (rating1 + rating2 + rating3) / 3

/* Challenge 6: Electrical power
 The power of an electrical appliance can be calculated by multiplying the voltage by the current. Declare a constant named voltage of type Double and assign it a value. Then declare a constant called current of type Double and assign it a value. Finally calculate the power of the electrical appliance you’ve just created storing it in a constant called power of type Double.
*/

let voltage: Double = 230.0
let current: Double = 1.2

let power: Double = voltage * current

/* Challenge 7: Electrical resistance
 The resistance of such an appliance can be then calculated (in a long-winded way) as the power divided by the current squared. Calculate the resistance and store it in a constant called resistance of type Double.
*/

let resistance: Double = power / (current * current)

/* Challenge 8: Random integer
 You can create a random integer number by using the function arc4random(). This creates a number anywhere between 0 and 4294967295. You can use the modulo operator to truncate this random number to whatever range you want. Declare a constant randomNumber and assign it a random number generated with arc4random(). Then calculate a constant called diceRoll and use the random number you just found to create a random number between 1 and 6.
 */

let randomNumber = arc4random()
let diceRoll = (randomNumber % 6) + 1

/* Challenge 9: Quadratic equations
 A quadratic equation is something of the form a⋅x² + b⋅x + c = 0. The values of x which satisfy this can be solved by using the equation x = (-b ± sqrt(b² - 4⋅a⋅c)) / (2⋅a). Declare three constants named a, b and c of type Double. Then calculate the two values for x using the equation above (noting that the ± means plus or minus — so one value of x for each). Store the results in constants called root1 and root2 of type Double.
*/

let a: Double = 3
let b: Double = 5
let c: Double = 1

let root1: Double = (-b + sqrt(b*b - 4*a*c)) / 2 * a
let root2: Double = (-b - sqrt(b*b - 4*a*c)) / 2 * a
