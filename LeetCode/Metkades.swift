//
//  Metkades.swift
//  LeetCode
//
//  Created by Максим Бондарев on 23.04.2025.
//

import Foundation

func metcades () {
    
    // first 3 variables
    let hwn: [Int] = Array(readLine()!.split(separator: " ").map({Int($0)!}))
    
    // coords of craters
    var craters: [((Int, Int),(Int, Int))] = []
    for _ in 0..<hwn[2] {
        let cords: [Int] = Array(readLine()!.split(separator: " ").map({Int($0)!}))
        let cord: ((Int, Int), (Int, Int)) = ((cords[0], cords[1]), (cords[2], cords[3]))
        craters.append(cord)
    }
    
    // dots
    let q = Int(readLine()!)!
    var qes: [(Int, Int)] = []
    for i in 0..<q {
        let crd = Array(readLine()!.split(separator: " ").map({Int($0)!}))
        qes.append((crd[0], crd[1]))
    }
    
    // creating map
    var map = Array(repeating: Array(repeating: 0, count: hwn[1]), count: hwn[0])
    
    for crater in craters {
        craterArea(&map, crater)
    }
    
    for dot in qes {
        print(map[dot.0-1][dot.1-1])
    }
    
}


func craterArea(_ map: inout [[Int]], _ crater: ((Int, Int), (Int, Int))) {
    for y in (crater.0.1...crater.1.1) {
        for x in (crater.0.0...crater.1.0) {
            map[y-1][x-1] = 1
        }
    }
}

 
