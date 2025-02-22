//
//  SearchCoordCombo.swift
//  LeetCode
//
//  Created by Максим Бондарев on 22.02.2025.
//

/*
 not solved ...
 */



import Foundation

func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var result: [[Int]] = []
    for coord in candidates {
        if candidates.contains(target-coord){
            let coord2 = target-coord
            for myCoords in result{
                if ((myCoords[0] == coord && myCoords[1] == coord2) || (myCoords[0] == coord2 && myCoords[1] == coord)){
                    continue
                }
            }
            result.append([coord,coord2])
        }
    }
    return result
    
    
}
