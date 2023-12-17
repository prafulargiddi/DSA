import UIKit

 func merge(_ arr: inout[Int], _ low: Int, _ mid: Int, _ high: Int){
        var temp = [Int]() // tempory array
        var left = low // starting index of left half of array
        var right = mid + 1 // starting index of right half of arr
        while left <= mid && right <= high {
            if arr[left] <= arr[right] {
                temp.append(arr[left])
                left += 1
            } else {
                temp.append(arr[right])
                right += 1
            }
        }
        while left <= mid {
            temp.append(arr[left])
            left += 1
        }
        while right <= high {
            temp.append(right)
            right += 1
        }
        for i in low...high {
            arr[i] = temp[i - low]
        }
    }
    
func mergeSort(_ arr: inout [Int], _ low: Int, _ high: Int) {
        if low >= high {
            return
        }
        let mid = ( low + high ) / 2
        mergeSort(&arr, low, mid)
        mergeSort(&arr, mid+1, high)
        merge(&arr, low, mid, high)
    }
    
var arr = [9, 4, 7, 6, 3, 1, 5]
print("Before Sort")
for i in 0..<arr.count {
    print(arr[i], terminator: " ")
}
print("")
print("After Sort")
mergeSort(&arr, 0, arr.count-1)
for i in 0..<arr.count {
    print(arr[i], terminator: " ")
}

