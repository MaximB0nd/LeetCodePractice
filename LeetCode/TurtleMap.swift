//
//  TurtleMap.swift
//  LeetCode
//
//  Created by Максим Бондарев on 08.04.2025.
//

import Foundation

func turtleMap () {
    var text = readLine() ?? ""
    let n = Int(text.split(separator: " ").first!)
    let m = Int(text.split(separator: " ").last!)
    
    var map = [[Int]]()
    
    for _ in 0..<n! {
        text = readLine() ?? ""
        let row = text.split(separator: " ")
        var rowInt = [Int()]
        for j in 0..<row.count {
            rowInt.append(Int(row[j])!)
        }
        map.append(rowInt)
    }
    
    print(map)
    
    var dp = [[Int]](repeating: Array(repeating: 0, count: m!), count: n!)
    
    for i in 0..<n! {
        for j in 0..<m! {
            if i == 0 {
                if i == 0 && j == 0 {
                    dp[i][j] = map[i][j]
                }
                else{
                    dp[i][j] = map[i][j] + dp[i][j-1]
                }
            }
            
            else {
                if j == 0 {
                    dp[i][j] = map[i][j] + dp[i-1][j]
                }
                else {
                    if dp[i-1][j] > dp[i][j-1] {
                        dp[i][j] = map[i][j] + dp[i-1][j]
                    }
                    else {
                        dp[i][j] = map[i][j] + dp[i][j-1]
                    }
                }
            }
            
        }
    }
    
    print(dp.last!.last!)
    
}
