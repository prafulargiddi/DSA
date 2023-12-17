import UIKit

func brustApproch(_ arr: [Int]) -> Int {
    var sortedArray = arr.sorted()
    return sortedArray[sortedArray.count-1]
}

var arr = [2,5,1,3,0]
//print("Largest Element in array:\(brustApproch(arr))")

func recursiveApproch(_ arr: [Int], _ index: Int) -> Int{
    if index == arr.count-1 {
        return arr[index]
    }
    var maxValue = recursiveApproch(arr, index+1)
    return max(arr[index], maxValue)
    
}
//print("Largest Element in array:\(recursiveApproch(arr,0))")
print("Largest Element in array:\(arr.max())")
