import UIKit

func palidromNumber(_ n: Int) {
    var num = n
    var reverse = 0
    while num != 0 {
        var digit = num%10
        reverse = reverse * 10 + digit
        num = num/10
        
    }
    if n == reverse {
        print("This number is palidrom")
    } else {
        print("This number is not palidrom")
    }
}
palidromNumber(12221)
