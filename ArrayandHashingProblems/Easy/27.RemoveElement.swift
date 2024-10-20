//
//  TwoSum.swift
//  SDUI
//
//  Created by iVenky on 10/20/24.
//

import UIKit

//27. Remove Element
Input: nums = [3,2,2,3], val = 3
Output: 2, nums = [2,2,_,_]

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var index = 0
        for num in nums {
            if num == val {
                nums.remove(at:index)
            }
            else {
                index += 1
            }
        }
        return nums.count
    }
