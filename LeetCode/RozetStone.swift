//
//  RozetStone.swift
//  LeetCode
//
//  Created by Максим Бондарев on 13.04.2025.
//

import Foundation

func rozetStone() -> Void {
    var arr = readLine()!.split(separator: "")
    for i in 0..<arr.count {
        if ((i+1) % 5) == 0 {
            arr[i] = "&"
        }
    }
    print(arr.joined())
}

