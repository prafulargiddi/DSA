import UIKit
//Check if an Array is Sorted

func isSortedElement(_ arr: [Int]) -> Bool {
    for i in 0..<arr.count {
        for j in i+1..<arr.count {
            if arr[j] < arr[i] {
                return false
            }
        }
    }
    return true
}
var arr = [1, 2, 3, 4, 5]
//print("is Sorted Element:\(isSortedElement(arr))")

func optimumApproch(_ arr: [Int]) ->Bool {
    for i in 0..<(arr.count - 1){
        if arr[i] > arr[i+1] {
            return false
        }
    }
    return true
}
print("is Sorted Element:\(optimumApproch(arr))")

