//
//  Bag.swift
//  LeetCode
//
//  Created by Максим Бондарев on 22.04.2025.
//

import Foundation

func bagWeightsBool(_ s: Int, _ w: [Int]) -> Int {
    var res: [Bool] = Array(repeating: false, count: s + 1)
    res[0] = true
    
    for weight in w {
        for i in stride(from: s, to: -1, by: -1) {
            if (res[i] && i+weight <= s ) {
                res[i+weight] = true
            }
        }
    }
    
    return res.lastIndex(of: true)!
    
}

func bagWeightsInt(_ s: Int, _ w: [Int]) -> [Int] {
    var res: [Int] = Array(repeating: 0, count: s + 1)
    
    for weight in w {
        for i in stride(from: s, to: -1, by: -1) {
            if ((res[i] != 0 || i == 0 )  && i+weight <= s && res[i+weight] == 0 ) {
                res[i+weight] = weight
            }
        }
    }
    
    var result = [Int]()
        
    var i = res.lastIndex(where: {$0 != 0})!
    
    while i != 0 {
        result.append(res[i])
        i = i - res[i]
    }
    return result
}

func bagWeigthMoney(_ s: Int, _ w: [(weight: Int, cost: Int)]) -> [(weight: Int, cost: Int)] {
    var res: [[(weight: Int, cost: Int)]] = Array(repeating: Array(repeating: (0, 0), count: s+1), count: w.count)
    
    
    for i in 0..<w.count {
        if (i != 0) {
            res[i] = res[i-1].map {$0}
        }
        for j in stride(from: s, to: -1, by: -1) {
            if (
                (res[i][j].weight != 0 || j == 0)
                && j+w[i].weight <= s
                && res[i][j+w[i].weight].cost < res[i][j].cost + w[i].cost
            )
            {
                res[i][j+w[i].weight] = (w[i].weight, w[i].cost)
            }
            
        }
    }
    
    var i = w.count - 1
    var j = res[i].lastIndex(where: {$0 != (0, 0)})!
    
    var result = [(weight: Int, cost: Int)]()
    
    
    while i != 0 {
        result.append(res[i][j])
        j -= res[i][j].weight
        i = i - 1
        
    }
    
    return result
    
    
}
