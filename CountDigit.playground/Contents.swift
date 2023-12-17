import UIKit


func firstApproachCountDigit(_ n: Int) -> Int {
    var count = 0
    var x = n
    
    while x != 0 {
        x = x / 10
        count += 1
    }
    
    return count
}
// Time Complexity: O(n) where n is the number of digits in the given integer
// Space Complexity: O(1)
//firstApproachCountDigit(12345)

func secondApprochCountDigit(_ n: Int) -> Int {
    var n2 = String(n)
    return n2.count
}
// Time Complexity: O(1)
// Space Complexity: O(1)
secondApprochCountDigit(12345)

func thirdApprochCountDigit(_ n: Int) -> Int {
    let digit = Int(floor(log10(Double(n))) + 1)
    return digit
}
// Time Complexity: O(1)
// Space Complexity: O(1)
thirdApprochCountDigit(12345)
