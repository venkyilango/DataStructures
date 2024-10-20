//
//  TwoSum.swift
//  SDUI
//
//  Created by iVenky on 10/20/24.
//

import UIKit
//347. Top K Frequent Elements
func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
   //define a dictionary to store the number in the array as key and frequencies as values
   var countDict: [Int: Int] = [Int: Int]()
   //iterate throughout the array and map the number as key
   //check to see if num exists and default to 0 and increment the value by 1 when a new occurence is found
   for num in nums {
       countDict[num] = countDict[num, default: 0] + 1
   }
   //declare the variable and sort the array based on the dictionary values (in descending order)
   let res = countDict.sorted{$0.value>$1.value}
   
   //declare the variable with array of Integer
   var retVal: [Int] = [Int]()
   //iterate through the loop until the k is defined and append the highest frequency integer in the array
   for i in 0..<k {
       retVal.append(res[i].0)
       print(res[i].0)
   }
   return retVal
}
