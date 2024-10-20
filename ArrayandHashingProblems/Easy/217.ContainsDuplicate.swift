//
//  TwoSum.swift
//  SDUI
//
//  Created by iVenky on 10/20/24.
//

import UIKit

//217. ContainsDuplicate
//Input: nums = [1,2,3,1]
//
//Output: true

func containsDuplicate(_ nums: [Int]) -> Bool {
        var numFreq = [Int: Int]()
        for i in nums {
            if numFreq[i] != nil {
                return true
            } else {
                numFreq[i] = 1
            }
        }
        return false
    }
