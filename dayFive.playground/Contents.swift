import UIKit

//100 Days of Swift Day 5 : https://www.hackingwithswift.com/100/5

var greeting = "Hello, playground"



//How invoc function without label
func testWithoutLabl(_ message: String){
    print(message)
}


//How to make a function that takes infinite parameters
func squart(_ numbers: Int...){
    for number in numbers{
        print("\(number) squared is \(number * number)")
    }
}

squart(2,3,4,5,6)



//How to make a function that migth throw an error

enum PasswordError: Error{
    case obvious
}

func checkPassword(_ password: String) throws -> Bool{
    
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}

//How run a function that migth throw an error
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//How to pass value into function how variable

func plusFive(number: inout Int) -> Int {
    number = number + 5
    return number
}

var test = 5
print(plusFive(number: &test))

