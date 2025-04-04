//
//  SubStes.swift
//  LeetCode
//
//  Created by Максим Бондарев on 31.03.2025.
//

import Foundation

func subsets(_ nums: [Int]) -> [[Int]] {
    var result: Array<Array<Int>> = [[]]
    
    for num in nums {
        var newResult: Array<Array<Int>> = []
        for subset in result {
            var newSubset: Array<Int> = subset
            newSubset.append(num)
            newResult.append(newSubset)
        }
        result.append(contentsOf: newResult)
    }
    
    
    
    return result
}
