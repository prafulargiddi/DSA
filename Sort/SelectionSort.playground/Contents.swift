import UIKit

func sortByAscendingSelectionSort( arr: inout [Int]) {
    for i in 0..<arr.count-1 {
        var mini = i
        for j in i+1..<arr.count {
            if arr[j] < arr[mini] {
                mini = j
            }
        }
        //Swap
        var temp = arr[mini]
        arr[mini] = arr[i]
        arr[i] = temp
        
    }
    print("After Selection Sort")
    for i in 0..<arr.count {
        print(arr[i],terminator: " ")
    }
    print("")
}
func sortByDescendingSelectionSort( arr: inout [Int]) {
    for i in 0..<arr.count-1 {
        var max = i
        for j in i+1..<arr.count {
            if arr[j] > arr[max] {
                max =  j
            }
        }
        //Swap
        var temp = arr[max]
        arr[max] = arr[i]
        arr[i] = temp
    }
    print("After Selection Sort")
    for i in 0..<arr.count {
        print(arr[i],terminator: " ")
    }
    print("")
}
var arr = [13, 46, 24, 52, 20, 9]
print("Before Selection Sort")
for i in 0..<arr.count {
    print(arr[i],terminator: " ")
}
print("")
sortByAscendingSelectionSort(arr: &arr)
sortByDescendingSelectionSort(arr: &arr)

