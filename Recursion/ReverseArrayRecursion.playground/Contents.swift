import UIKit

func reverseArray( arr: inout [Int], start: Int, end: Int) {
    if start<end {
        var temp = arr[start]
        arr[start] = arr[end]
        arr[end] = temp
        reverseArray(arr: &arr, start: start+1, end: end-1)
    }
}
var arr = [1, 2, 3, 4, 5]
print(arr)
reverseArray(arr: &arr, start: 0, end: arr.count-1)
print(arr)
