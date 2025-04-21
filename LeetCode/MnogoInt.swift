//
//  MnogoInt.swift
//  LeetCode
//
//  Created by Максим Бондарев on 20.04.2025.
//

import Foundation

struct valueArr : Equatable {
    let key: Int
    let value: Int
    
    init(_ key: Int, _ value: Int) {
        self.key = key
        self.value = value
    }
    
    static func == (lhs: valueArr, rhs: valueArr) -> Bool {
        return lhs.value == rhs.value
    }
}

func mnogoInt() {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    let vals = readLine()!.split(separator: " ")
    var nums: [Int] = []
    for i in stride(from: 0, to: n, by: 1) {
        print(i, vals[i])
        nums.append(Int(vals[i])!)
    }
    
    var dict: [Int: Int] = [:]
    for num in nums {
         if let count = dict[num] {
             dict[num] = count + 1
        }
        else {
            dict[num] = 1
        }
    }
    
    
    
    var result: [valueArr] = []
    
    for (key, value) in dict {
        if (result.count < k) {
            result.append(valueArr(key, value))
        }
        else {
            if (result.contains(where: {$0.value < value })) {
                result[result.firstIndex(of: result.min(by: {$0.value < $1.value})!)!] = valueArr(key, value)
            }
        }
    }
    
    
    print(result)
    print(result.sorted(by: {$0.value > $1.value}).map({String($0.key)}).joined(separator: " "))
    
    
    
    
    
    
    
}
