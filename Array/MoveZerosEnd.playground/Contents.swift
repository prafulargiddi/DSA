//https://leetcode.com/problems/move-zeroes/description/
//Example 1:
//
//Input: nums = [0,1,0,3,12]
//Output: [1,3,12,0,0]
//Example 2:
//
//Input: nums = [0]
//Output: [0]
import UIKit

func moveZeros(_ nums: inout [Int]) {
    var k = 0
    for i in 0..<nums.count{
        if(nums[i] != 0) {
            nums.swapAt(i, k)
            k += 1
        }
    }
}
var nums = [0,1,0,3,12]
print("Array: \(nums)")
moveZeros(&nums)
print("Moves Zero: \(nums)")


