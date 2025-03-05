//
//  LongestMatrix.swift
//  LeetCode
//
//  Created by Максим Бондарев on 03.03.2025.
//

/*
 Given an m x n integers matrix, return the length of the longest increasing path in matrix.

 From each cell, you can either move in four directions: left, right, up, or down. You may not move diagonally or move outside the boundary (i.e., wrap-around is not allowed).
 */




import Foundation

var result = [Int]()
var array = [[Int]]()


func longestIncreasingPath(_ matrix: [[Int]]) -> Int {
    
    let rows = matrix.count
    let cols = matrix[0].count
    var dp = Array(repeating: Array(repeating: 0, count: cols), count: rows)
    var maxLength = 0
    
    func dfs(_ i: Int, _ j: Int) -> Int {
        if dp[i][j] != 0 {
            return dp[i][j]
        }
        let directions = [(-1, 0), (1, 0), (0, 1), (0, -1)]
        var maxPath = 1
        for (dx, dy) in directions {
            let x = i + dx
            let y = j + dy
            if x >= 0 && x < rows && y >= 0 && y < cols && matrix[x][y] > matrix[i][j] {
                maxPath = max(maxPath, 1 + dfs(x, y))
            }
        }
        dp[i][j] = maxPath
        return maxPath
    }
    
    for i in 0..<rows {
        for j in 0..<cols {
            maxLength = max(maxLength, dfs(i, j))
        }
    }
    
    return maxLength
}

//func longestIncreasingPath(_ matrix: [[Int]]) -> Int {
//    array = matrix
//    var maxLen = 0
//    for i in 0..<matrix.count{
//        for j in 0..<matrix[0].count{
//            print(i, j)
//            getMinAround(nowRange: 1, indexOne: i, indexTwo: j)
//            
//        }
//    }
//    
//    for i in result{
//        if (maxLen < i){
//            maxLen = i
//        }
//    }
//    return maxLen
//}

func getMinAround(nowRange: Int, indexOne: Int, indexTwo: Int){
    
    var ways:[[Int]] = []
    
    if (checkTop(array: array, indexOne: indexOne, indexTwo: indexTwo)){
        ways.append([indexOne-1, indexTwo])
    }
    
    if (checkBottom(array: array, indexOne: indexOne, indexTwo: indexTwo)){
        ways.append([indexOne+1, indexTwo])
    }
    
    if (checkRight(array: array, indexOne: indexOne, indexTwo: indexTwo)){
        ways.append([indexOne, indexTwo+1])
    }
    
    if (checkLeft(array: array, indexOne: indexOne, indexTwo: indexTwo)){
        ways.append([indexOne, indexTwo-1])
    }
    
    if (ways.isEmpty) {
        result.append(nowRange)
        return
    }
    
    for way in Set(ways){
        getMinAround( nowRange: nowRange+1, indexOne: way[0], indexTwo: way[1])
    }
}


func checkTop(array: [[Int]], indexOne: Int, indexTwo: Int) -> Bool {
    if (indexOne - 1 >= 0){
        if (array[indexOne-1][indexTwo] > array[indexOne][indexTwo]){
            return true
        }
    }
    return false
}


func checkBottom(array: [[Int]], indexOne: Int, indexTwo: Int) -> Bool {
    if (indexOne + 1 < array.count){
        if (array[indexOne+1][indexTwo] > array[indexOne][indexTwo]){
            return true
        }
    }
    return false
}


func checkLeft(array: [[Int]], indexOne: Int, indexTwo: Int) -> Bool {
    if (indexTwo - 1 >= 0){
        if (array[indexOne][indexTwo-1] > array[indexOne][indexTwo]){
            return true
        }
    }
    return false
}

func checkRight(array: [[Int]], indexOne: Int, indexTwo: Int) -> Bool {
    if (indexTwo + 1 < array[indexOne].count){
        if (array[indexOne][indexTwo+1] > array[indexOne][indexTwo]){
            return true
        }
    }
    return false
}



//func getMaxCombo(from array: [[Int]], index: [Int]) -> [[Int]]? {
//    var result = [[Int]]()
//    result.append(index)
//    var nowOne = index[0]
//    var nowTwo = index[1]
//
//
//    while true{
//        var minAround: [Int]? = nil
//        if (checkTop(array: array, indexOne: nowOne, indexTwo: nowTwo)){
//            minAround = [nowOne-1, nowTwo]
//        }
//        if (checkBottom(array: array, indexOne: nowOne, indexTwo: nowTwo)){
//            if (minAround == nil){
//                minAround = [nowOne+1, nowTwo]
//            }
//            if (array[minAround![0]][minAround![1]] > array[nowOne+1][nowTwo]){
//                minAround = [nowOne+1, nowTwo]
//            }
//        }
//        if (checkLeft(array: array, indexOne: nowOne, indexTwo: nowTwo)){
//            if (minAround == nil){
//                minAround = [nowOne, nowTwo-1]
//            }
//            if (array[minAround![0]][minAround![1]] > array[nowOne][nowTwo-1]){
//                minAround = [nowOne, nowTwo-1]
//            }
//        }
//
//        if (checkRight(array: array, indexOne: nowOne, indexTwo: nowTwo)){
//            if (minAround == nil){
//                minAround = [nowOne, nowTwo+1]
//            }
//            if (array[minAround![0]][minAround![1]] > array[nowOne][nowTwo+1]){
//                minAround = [nowOne, nowTwo+1]
//            }
//        }
//
//
//        guard (minAround != nil)
//        else {
//            break
//        }
//        result.append(minAround!)
//        nowOne = minAround![0]
//        nowTwo = minAround![1]
//        minAround = nil
//
//    }
//
//    return result
//}






//func checkTop(from array: [[Int]], nowX: Int, nowY: Int) -> Bool {
//    if (nowY - 1 >= 0){
//        if (array[nowY-1][nowX] > array[nowY][nowX]){
//            return true
//        }
//    }
//    return false
//}
//
//func checkBottom(from array: [[Int]], nowX: Int, nowY: Int) -> Bool {
//    if (nowY + 1 < array.count){
//        if (array[nowY+1][nowX] > array[nowY][nowX]){
//            return true
//        }
//    }
//    return false
//}
//
//func checkLeft(from array: [[Int]], nowX: Int, nowY: Int) -> Bool {
//    if (nowX - 1 >= 0){
//        if (array[nowY][nowX-1] > array[nowY][nowX]){
//            return true
//        }
//    }
//    return false
//}
//
//func checkRight(from array: [[Int]], nowX: Int, nowY: Int) -> Bool {
//    if (nowX + 1 < array[0].count){
//        if (array[nowY][nowX+1] > array[nowY][nowX]){
//            return true
//        }
//    }
//    return false
//}

