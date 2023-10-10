import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

var float1: Float = 3.14
var float2: Float = 5.3647

var sum = Double(float1 + float2)

print("Exercise 1. Result: \(sum)")

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne = 10
var numberTwo = 6
let numberThree = numberOne / numberTwo
let numberFour = numberOne % numberTwo

print("When dividing \(numberOne) by \(numberTwo), the result is \(numberThree), the remainder is \(numberFour)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var qty = 10
var totalSum: Int
var price = 850

if qty < 5 {
    price = 1000
} else if qty < 10 {
    price = 900
}
totalSum = qty * price

print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge: String = "33a"

//var number = Int(userInputAge)!

if let number = Int(userInputAge) {
    print("userInputAge can be converted to a number: \(number)")
} else {
    print("userInputAge can not be converted to a number")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

var dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy/MM/dd"
var today = Date()
var birthday = dateFormatter.date(from: "2000/04/19") ?? today

if birthday == today {
    print("the date of birthday is incorrect")
}

var totalYearsFromBirth = Calendar.current.dateComponents([.year], from: birthday, to: today).year ?? -1
var totalMonthFromBirth = Calendar.current.dateComponents([.month], from: birthday, to: today).month ?? -1
var totalDaysFromBirth = Calendar.current.dateComponents([.day], from: birthday, to: today).day ?? -1

print("Total years: \(totalYearsFromBirth), total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

var quarter = "unknown"
dateFormatter.dateFormat = "MM"
let bdayMonthString = dateFormatter.string(from: birthday)
var bdayMonth = Int(bdayMonthString) ?? 0

switch bdayMonth {
case 1...3:
    quarter = "first"
case 4...6:
    quarter = "second"
case 7...9:
    quarter = "third"
case 10...12:
    quarter = "fourth"
default:
    print("The month of birthday is missing")
}

print("I was born in the \(quarter) quarter")


