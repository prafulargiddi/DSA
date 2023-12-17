import UIKit

func isArmstrongNumber(_ n: Int) {
    var num = n
    var count = String(n).count
    var sumOfPower = 0
    while(num != 0) {
        var digit = num % 10
        sumOfPower += Int(pow(Double(digit), Double(count)))
        num = num/10
    }
    if sumOfPower == n {
        print("This number is armstrong number")
    } else {
        print("This number is not armstrong number")
    }
}
isArmstrongNumber(143)
