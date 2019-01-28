import UIKit

// 1) Write a closure that prints the string "Learning Swift" and assign the closure to a variable. Then call the closure.

let learnSwift: (String) -> () = { option in
    print(option)
}

learnSwift("learn Swift")

// 2) Write a closure that takes two integers and returns the sum of the integers. Assign the closure to a variable and then call the closure. The closure can          be written in a few different ways. Experiment and try 2 ways.

let sum: (Int, Int) -> (Int) = { optionOne, optionTwo in
    return optionOne + optionTwo
}

print(sum(3, 5))

// 3) Write a closure that returns the value 42, without assigning the closure to a variable. Immediately call the closure and also ignore the return value from the closure.

func fortyTwo() -> ()->(Int) {
    return {
        print("here")
        return 42
    }
}

let thirdResult = fortyTwo()
thirdResult()



// 4) Sort the array: let numbers = [22, 10, 42, 100, 8, 4]. Use a closure and the sorted(by:) method.

let numbers = [22, 10, 42, 100, 8, 4]
let sort: (Int, Int) -> (Bool) = { numOne, numTwo in
    return numOne < numTwo
}

var sorted = numbers.sorted(by: sort)
print(sorted)

// 5) Write a function that returns a closure. The function should contain the following variable: let message = "This is an important message" The closure that the function returns should print the value of that variable.

//func retMessage() -> ()->() {
//    let message = "This is an important message"
//
//    let aClosure: ()->() = {
//        print(message)
//    }
//    return aClosure
//}
//
//let message = retMessage()
//message()

//let printMsg: (String)->() = { option in
//    print(option)
//}

func retMessage() -> ()->() {
    let message = "This is an important message"
    return {
        print(message)
    }
}

let result = retMessage()
result()

//func getBrunch(optionClosure:()->()) {
//    print("Going for brunch.")
//    optionClosure()
//}
//
//getBrunch(optionClosure: {
//    print("Anything edible")
//})






