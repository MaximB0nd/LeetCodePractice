//
//  Candies.swift
//  LeetCode
//
//  Created by Максим Бондарев on 03.04.2025.
//

import Foundation

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    
    var result: [Bool] = []
    
    for i in 0..<candies.count{
        result.append(candies[i] + extraCandies >= candies.max()!)
    }
    
    return result
}
