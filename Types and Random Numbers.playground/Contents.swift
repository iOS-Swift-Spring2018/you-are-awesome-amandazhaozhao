//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var myInt = 30000.00

var myBool = true
myBool = "John" == "john"
//if you don't use the quotation marks, it's a boolean value. If you do use the quotation marks, it'll think it's a string.

var myWeight: Int = 170
var percentGoal: Double = 0.10
//var weightToLose = myweight = percentGoal will come out as error, because different types
var weightToLose = Double(myWeight) * percentGoal
print(weightToLose)


//Multiplying/Combining: must be the same type value (double * double /// integer + integer
//THUS,Type Conversion: surround a value with a type name in parentheses, to convert
//turn myWeight int —> Double(myWeight)

var weightMessage = "My Weight is currently: " + String(myWeight)

//Double("170")
//number inside string because quotation marks! Better to work with
//THIS IS ALL IMPORTANT FOR RANDOM NUMBER GENERATION

//first build an array below
    let messages = ["You Are Great!",
                    "You Are Fantantastic!",
                    "Fabulous? That's You!"]

var myUint = arc4random_uniform(5)

//why use 5? it's a UInt32, it falls into range of unsigned integers

var randomIndex = Int(arc4random_uniform(UInt32(messages.count)))


//UInt32 is for unsigned 32-bit integer, including 5 from above

messages[Int(randomIndex)]


//must change random index back into integer



