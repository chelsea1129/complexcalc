//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int{
        return op(lhs, rhs)
    }
    
    func add(_ nums: [Int]) -> Int {
        var sum = 0
        for num in nums{
            sum += num
        }
        return sum
    }
    
    func multiply(_ nums: [Int]) -> Int {
        var val = 1
        for num in nums{
            val = num * val
        }
        return val
    }
    
    func count(_ nums: [Int]) -> Int {
        return nums.count
    }
    
    func avg(_ nums: [Int]) -> Int {
        return add(nums) / count(nums)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var sum = beg
        for num in args{
            sum = op(num, sum)
        }
        return sum
    }
    
    func add(lhs:(Int, Int), rhs:(Int, Int)) -> (Int, Int) {
        return (lhs.0+rhs.0, lhs.1+rhs.1)
    }
    
    func subtract(lhs:(Int, Int), rhs:(Int, Int)) -> (Int, Int) {
        return (lhs.0-rhs.0, lhs.1-rhs.1)
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]!+rhs["x"]!, "y": lhs["y"]!+rhs["y"]!]
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]!-rhs["x"]!, "y": lhs["y"]!-rhs["y"]!]
    }
}
