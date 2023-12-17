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
    var maxFreq = 0, minFreq = arr.count
    var maxEle = 0, minEle = 0
    for(element, count) in map {
        if count > maxFreq {
            maxEle = element
            maxFreq = count
        }
        if count < minFreq {
            minEle = element
            minFreq = count
        }
    }
    print("The highest frequency element is: \(maxEle)")
    print("The lowest frequency element is: \(minEle)")
}
// Example usage
let array = [1, 2, 3, 1, 2, 4, 1, 3, 5]
frequency(array)
