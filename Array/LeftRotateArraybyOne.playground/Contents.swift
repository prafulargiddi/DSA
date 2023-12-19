
//https://leetcode.com/problems/rotate-array/
//Example 1:
//Input: N = 5, array[] = {1,2,3,4,5}
//Output: 2,3,4,5,1
//Explanation:
//Since all the elements in array will be shifted
//toward left by one so ‘2’ will now become the
//first index and and ‘1’ which was present at
//first index will be shifted at last.
//
//
//Example 2:
//Input: N = 1, array[] = {3}
//Output: 3
//Explanation: Here only element is present and so
//the element at first index will be shifted to
//last index which is also by the way the first index.

import UIKit

func firtApproch(_ arr: [Int]) {
    var temp = Array(repeating: 0, count: arr.count)
    for i in 1..<arr.count {
        temp[i - 1] = arr[i]
    }
    temp[arr.count - 1] = arr[0]
    
    for element in temp {
        print("\(element) ", terminator: "")
    }
}
func secondApproch(_ arr: inout [Int]) {
    
    var temp = arr[0]
    for i in 0..<arr.count-1{
        arr[i] = arr[i+1]
    }
    arr[arr.count-1] = temp
    for element in arr {
        print("\(element) ", terminator: "")
    }
}
var arr = [1,2,3,4,5]
secondApproch(&arr)
