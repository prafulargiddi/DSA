//Max Consecutive Ones
//https://leetcode.com/problems/max-consecutive-ones/description/
//Given a binary array nums, return the maximum number of consecutive 1's in the array.
//
// 
//
//Example 1:
//
//Input: nums = [1,1,0,1,1,1]
//Output: 3
//Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.
//Example 2:
//
//Input: nums = [1,0,1,1,0,1]
//Output: 2
import UIKit
import Foundation
func findMaxConsecutiveOnes(_ nums:[Int]) -> Int{
    var n = nums.count
    var maxCount = 0
    var currentCount = 0
    for i in 0..<nums.count {
        if nums[i] == 1{
            currentCount += 1
        } else {
            currentCount = 0
        }
        maxCount = max(maxCount, currentCount)
    }
    return maxCount
}
let array = [1, 1, 0, 1, 1, 1, 0, 1, 1, 1]
let maxConsecutiveOnes = findMaxConsecutiveOnes(array)
print("Max consecutive ones: \(maxConsecutiveOnes)")
