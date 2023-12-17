import UIKit


func findGCD(_ num1: Int, _ num2: Int) -> Int {
    var ans = 1
    
    for i in 1...min(num1, num2) {
        if num1 % i == 0 && num2 % i == 0 {
            ans = i
        }
    }
    
    return ans
}

findGCD(4, 8)
func gcd(a: Int, b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(a: b, b: a % b)
        
}
