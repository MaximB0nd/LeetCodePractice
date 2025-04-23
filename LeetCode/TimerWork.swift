//
//  TimerWork.swift
//  LeetCode
//
//  Created by Максим Бондарев on 23.04.2025.
//

import Foundation

func timerWork() {
    let nxk: [Int] = Array(readLine()!.split(separator: " ").map({Int($0)!}))
    let t: [Int] = Array(readLine()!.split(separator: " ").map({Int($0)!}))
    
    var time = 0
    var now_k = 0
    
    while now_k < nxk[2] {
        time += 1
        if (t.contains(where: { $0 <= time && ( 0 == ((time-$0) % nxk[1]) || $0 == time)})) {
            now_k += 1
        }
    }
    
    
    print("Time = \(time)")
}
