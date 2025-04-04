//
//  3Sum.swift
//  LeetCode
//
//  Created by Максим Бондарев on 21.03.2025.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    for (index1, num1) in nums.enumerated(){
        for (index2, num2) in nums.enumerated(){
            if (nums.contains(-1*(num1 + num2))){
                let index3 = nums.firstIndex(of: -1*(num1 + num2))!
                let num3 = nums[index3]
                if (index1 != index2 && index1 != index3 && index2 != index3 && !isContains(&result, num1: num1, num2: num2, num3: num3)){
                    result.append([num1, num2, num3])
                }
            }
        }
    }
    return result
}

func isContains(_ array: inout [[Int]], num1: Int, num2: Int, num3: Int) -> Bool{
    if !array.contains([num1, num2, num3]){
        if !array.contains([num1, num3, num2]){
            if !array.contains([num2, num1, num3]){
                if !array.contains([num2, num3, num1]){
                    if !array.contains([num3, num1, num2]){
                        return array.contains([num3, num2, num1])
                    }
                }
            }
        }
    }
    return true
}
