import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

var myTeam = "Boys"

var resultsOfGames: [String: [String]] = ["Inter Miami": ["0:6", "4:0"], "Chelsea": ["1:2", "2:3"], "Real Madrid": ["0:5", "1:4"]]

for matchup in resultsOfGames {
    for game in matchup.value {
        print("\(myTeam) against \(matchup.key) scored \(game)")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

func calculateCash(smallestBanknote min: Int, biggestBanknote max: Int) {
    var totalCash = 0
    for i in min...max {
        totalCash += i
    }
    print("Inside your wallet you have \(totalCash) cash")
}

calculateCash(smallestBanknote: 5, biggestBanknote: 10)

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(_ number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    }
    return false
}

print(isEvenNumber(112))
print(isEvenNumber(119))

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from: Int, to: Int) -> [Int] {
   return Array(from...to)
//    var tempArray: [Int] = []
//    for i in from...to {
//        tempArray.append(i)
//    }
//    return tempArray
}

var array = createArray(from: 1, to: 100)
print(array)
print()

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
for a in array {
    if isEvenNumber(a) {
        array.remove(at: array.firstIndex(of: a)!)
    }
}

//for (i, a) in array.enumerated().reversed() {
//    if isEvenNumber(a) {
//        array.remove(at: i)
//    }
//}

print(array)
