//
//  MnogoInt.swift
//  LeetCode
//
//  Created by Максим Бондарев on 20.04.2025.
//

import Foundation

func mnogoInt() {
    let k = Int(readLine()!)!
    let _ = Int(readLine()!)!
    let vals = readLine()!.split(separator: " ")
    var nums: [Int] = []
    for i in 0..<vals.count {
        if (!vals[i].isEmpty) {
            nums.append(Int(vals[i])!)
        }
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
    
    var res = [Int]()
    
    for (key, value) in dict {
        if (res.count < k) {
            res.append(key)
        }
        else {
            if (res.contains(where: {dict[$0]! < value })) {
                res.remove(at: res.firstIndex(where: {dict[$0]! < value })!)
                res.append(key)
            }
        }
    }
    
    print(res)
    
    
    
    
    
    
    
}
