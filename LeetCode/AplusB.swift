//
//  AplusB.swift
//  LeetCode
//
//  Created by Максим Бондарев on 19.04.2025.
//

import Foundation

func AB () {
    let text = readLine() ?? ""

    print(Int(text.split(separator: " ").first ?? "")! + Int(text.split(separator: " ").last ?? "")!)
}
