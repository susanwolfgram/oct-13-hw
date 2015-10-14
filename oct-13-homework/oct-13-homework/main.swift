//
//  main.swift
//  oct-13-homework
//
//  Created by Susan Wolfgram on 10/13/15.
//  Copyright © 2015 Susan Wolfgram. All rights reserved.
//

//
//  main.swift
//  Homework Oct 13
//
//  Created by Susan Wolfgram on 10/13/15.
//  Copyright © 2015 Susan Wolfgram. All rights reserved.
//

import Foundation

func add(number1 : Int, number2 : Int) -> Int {
    return number1 + number2
}

func subtract(number1 : Int, number2 : Int) -> Int {
    return number1 - number2
}

func multiply(number1 : Int, number2 : Int) -> Int {
    return number1 * number2
}

func divide(number1 : Int, number2 : Int) -> Int {
    return number1 / number2
}

func operate(number1 : Int, number2 : Int, op : (Int, Int) -> Int) -> Int {
    return op(number1, number2)
}

print("Numbers 3 and 2:")
print("add: \(operate(3, number2 : 2, op : add))")
print("subtract: \(operate(3, number2 : 2, op : subtract))")
print("multiply: \(operate(3, number2 : 2, op : multiply))")
print("divide: \(operate(3, number2 : 2, op : divide))")

func addArr(numbers : [Int]) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

func multArr(numbers : [Int]) -> Int {
    var total = 1
    for number in numbers {
        total *= number
    }
    return total
}

func countArr(numbers : [Int]) -> Int {
    return numbers.count
}

func avgArr(numbers : [Int]) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total / numbers.count
}

func operateArr(numbers : [Int], op : ([Int]) -> Int) -> Int {
    return op(numbers)
}

print("Array containing 1, 2, 3, 4:")
print("add: \(operateArr([1, 2, 3, 4], op : addArr))")
print("multiply: \(operateArr([1, 2, 3, 4], op : multArr))")
print("count: \(operateArr([1, 2, 3, 4], op : countArr))")
print("avg: \(operateArr([1, 2, 3, 4], op : avgArr))")

func addPoints(point1 : (Int, Int), point2 : (Int, Int)) -> (Int, Int) {
    return (point1.0 + point2.0, point1.1 + point2.1)
}

func subtractPoints(point1 : (Int, Int), point2 : (Int, Int)) -> (Int, Int) {
    return (point1.0 - point2.0, point1.1 - point2.1)
}

var points = [String : Double]()

func operatePoints(points : [String : Double], op : ((Int, Int), (Int, Int)) -> (Int, Int)) -> Void {
    if (points["p1x"] == nil || points["p1y"] == nil || points["p2x"] == nil || points["p2y"] == nil) {
        print("Nil value found")
    } else {
        let p1x = Int(points["p1x"]!)
        let p1y = Int(points["p1y"]!)
        let p2x = Int(points["p2x"]!)
        let p2y = Int(points["p2y"]!)
        print(op((p1x, p1y), (p2x, p2y)))
    }
}

points["p1x"] = 1
points["p1y"] = 2.0
points["p2x"] = 3.0
points["p2y"] = 4.0

print("Add points (1, 2) and (3, 4):")
operatePoints(points, op : addPoints)

print("Subtract points (1, 2) and (3, 4):")
operatePoints(points, op : subtractPoints)

var points2 = [String : Double]()

points2["p1x"] = nil
points2["p1y"] = 2.0
points2["p2x"] = 3.0
points2["p2y"] = 4.0

print("Add points (nil, 2) and (3, 4):")
operatePoints(points2, op : addPoints)

/*for value in points.keys {
if (points[value] == nil) {
print("something was nil")
exit(0)
}
}
let p1x = Int(points["p1x"]!)
let p1y = Int(points["p1y"]!)
let p2x = Int(points["p2x"]!)
let p2y = Int(points["p2y"]!)
print(op((p1x, p1y), (p2x, p2y)))*/

