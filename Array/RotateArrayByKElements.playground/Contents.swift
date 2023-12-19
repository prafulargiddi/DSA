//Rotate array by K elements
//https://leetcode.com/problems/rotate-array/
//Example 1:
//Input: N = 7, array[] = {1,2,3,4,5,6,7} , k=2 , right
//Output: 6 7 1 2 3 4 5
//Explanation: array is rotated to right by 2 position .
//
//Example 2:
//Input: N = 6, array[] = {3,7,8,9,10,11} , k=3 , left
//Output: 9 10 11 3 7 8
//Explanation: Array is rotated to right by 3 position.
import UIKit

func rotate(_ nums: inout [Int], _ k: Int) {
    let n = nums.count
    let k = k % n
    
    // Reverse array
    rotateHandler(&nums, 0, n-1)
    // First half array
    rotateHandler(&nums, 0, k-1)
    // Second half array
    rotateHandler(&nums, k, n-1)
}
func rotateHandler(_ nums: inout [Int], _ start: Int, _ end: Int) {
    var start = start
    var end = end
    
    while start < end {
        nums.swapAt(start, end)
        start += 1
        end -= 1
    }
}
var array = [1,2,3,4,5,6,7]
rotate(&array, 3)
print("Rotated array: \(array)")
