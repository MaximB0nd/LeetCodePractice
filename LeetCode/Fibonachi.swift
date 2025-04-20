//
//  Fibonachi.swift
//  LeetCode
//
//  Created by Максим Бондарев on 06.04.2025.
//

import Foundation

func fibonachi(_ n: Int) -> Int? {
    guard n > 0 else { return nil }
    
    if n == 1 || n == 2 {
        return 1
    }
    
    else { return fibonachi(n - 1)! + fibonachi(n - 2)! }
}

func stepsCol(n: Int) -> Int {
    var steps = Array(repeating: 0, count: n-1)
    steps[0] = 1
    steps[1] = 1
    
    for i in 2..<n-1 {
        steps[i] = steps.sum()
    }
    
    return steps.sum()
}

func stepsMoney(steps: Array<Int>){

    var resCost = Array<Int>(repeating: 0, count: steps.count)
    
    resCost[0] = steps[0]
    resCost[1] = max(0, steps[0]) + steps[1]
    
    for i in 2..<steps.count {
         resCost[i] = max(resCost[i-1], resCost[i-2]) + steps[i]
    }
}

func stepsMap(steps: Array<Int>) -> [Int] {
    var map = [Int]()
    
    var resCost = Array<Int>(repeating: 0, count: steps.count)
    
    for i in 0..<steps.count {
        if i == 0 || i == 1 {
            if (steps[i] > 0) {
                map.append(i)
                resCost[i] = steps[i]
            }
            else {
                resCost[i] = 0
            }
        }
        
        else {
            if resCost[i-2] > resCost[i-1]{
                if map[map.count-1] != i-2 {
                    map.append(i-2)
                }
                resCost[i] = resCost[i-2] + steps[i]
            }
            else {
                if map[map.count-1] != i-2 {
                    
                    map.append(i-1)
                }
                resCost[i] = resCost[i-1] + steps[i]
            }
            
        }
    }
    
    return map
}





extension Array where Element == Int {
    func sum () -> Int {
        var sum = 0
        for element in self {
            sum += element
        }
        return sum
    }
}
