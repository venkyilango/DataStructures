//
//  TwoSum.swift
//  SDUI
//
//  Created by iVenky on 10/20/24.
//

import UIKit

//1. Two Sum
//Input: strs = ["eat","tea","tan","ate","nat","bat"]
//
//Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
func groupAnagrams(_ strs: [String]) -> [[String]] {
        var outputDict = Dictionary<Dictionary<Character, Int>, [String]>()
        for str in strs {
            var countDict = Dictionary<Character, Int>()
            for char in str {
                if countDict[char] == nil {
                    countDict[char] = 1
                } else {
                    countDict[char]! += 1
                }
            }

            if outputDict[countDict] == nil {
                outputDict[countDict] = [str]
            } else {
                outputDict[countDict]?.append(str)
            }
        }
        var result = [[String]]()
        outputDict.values.forEach { str in
            result.append(str)
        }
        return result
    }
