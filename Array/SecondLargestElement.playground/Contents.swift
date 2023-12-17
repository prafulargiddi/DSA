import UIKit

func brustApproch(_ arr: [Int]) ->Int {
    var sortedArray = arr.sorted()
    return sortedArray.count-2
}
var arr = [2,5,1,3,0]
print("Second largest Element in array: \(brustApproch(arr))")

func 
