import UIKit

func frequency(_ arr: [Int]) {
    var map = [Int: Int]()

    for element in arr {
        if let count = map[element] {
            map[element] = count + 1
        } else {
            map[element] = 1
        }
    }

    // Traverse through map and print frequencies
    for (key, value) in map {
        print("\(key) \(value)")
    }
}

// Example usage
let array = [1, 2, 3, 1, 2, 4, 1, 3, 5]
frequency(array)

