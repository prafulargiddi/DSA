import UIKit

func reverseNumber(_ n: Int) -> Int{
    var num = n
    var reverse = 0
    while(num != 0) {
        var digit = num%10
        reverse = reverse*10+digit;
        num = num/10
    }
    return reverse
}
reverseNumber(1234)
