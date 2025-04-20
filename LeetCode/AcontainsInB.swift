//
//  AcontainsInB.swift
//  LeetCode
//
//  Created by Максим Бондарев on 19.04.2025.
//

import Foundation

func AcontainsInB() {
    let str1 = readLine() ?? ""
    var str2 = readLine() ?? ""
    
    var res = 0
    
    for i in str1 {
        while str2.contains(i) {
            res+=1
            str2.remove(at: str2.firstIndex(where: {$0 == i})!)
        }
            
    }
    print(res)
}
