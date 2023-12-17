import UIKit

func removeDuplicates(_ arr: inout [Int]) -> Int {
    var set = Set<Int>()
    
    for element in arr {
        set.insert(element)
    }
    
    let k = set.count
    arr = Array(set)
    
    return k
}

// Example usage
var array = [1, 2, 3, 2, 4, 5, 1, 6, 7]
let newSize = removeDuplicates(&array)

print("New size of array: \(newSize)")
print("Array after removing duplicates: \(array)")
