//
//  TwoSum.swift
//  SDUI
//
//  Created by iVenky on 10/20/24.
//

import UIKit

//1. Two Sum
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    for (id, val) in nums.enumerated() {
        let diff = target - val
        if let foundValIndex = dict[diff] {
            return [foundValIndex, id]
        }
        dict[val] = id
    }
    fatalError("No two sum solution")
}
