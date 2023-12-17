import UIKit

func sortByAscending<T: Comparable>(_ array: inout [T]) {
    var n = array.count
    var swapped: Bool
    
    repeat {
        swapped = false
        
        for i in 1..<n {
            if array[i - 1] > array[i] {
                array.swapAt(i - 1, i)
                swapped = true
            }
        }
        
        // After each pass, the largest unsorted element will be at the end,
        // so the next pass can ignore it
        n -= 1
    } while swapped
}
func sortByDescending<T: Comparable>(_ array: inout[T]) {
    var n = array.count
    var swapped: Bool
    repeat {
        swapped = false
        for i in 1..<n {
            if array[i - 1] < array[i] {
                array.swapAt(i-1, i)
                swapped = true
            }
        }
    } while swapped
}

// Example usage
var numbers = [5, 2, 9, 1, 5, 6]
var names = ["Praful", "Krunal", "Rahul"]

print("Original Array: \(names)")

sortByAscending(&names)

print("Sorted Array: \(names)")
