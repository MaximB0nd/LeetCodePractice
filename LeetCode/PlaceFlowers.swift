//
//  PlaceFlowers.swift
//  LeetCode
//
//  Created by Максим Бондарев on 03.04.2025.
//

import Foundation

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var i = 0;
    var n = n
    
    while i < flowerbed.count {
        guard n != 0 else { return true }
        guard flowerbed[i] != 1 else {
            i += 1
            continue
        }
        if flowerbed[i-(i>0 ? 1 : 0)] == 0 && flowerbed[i+(i<flowerbed.count-1 ? 1 : 0)] == 0 {
            n -= 1
            i += 1
        }
        i += 1
    }
    
    return n == 0
}
