import UIKit

func firstApproch(_ n: Int) {
    var count = 0
    for i in 2...n {
        if n % i == 0 {
            count = count + 1
        }
    }
    if count == 1 {
        print("this number is prime number")
    } else {
        print("this number is not prime number")
    }
}
firstApproch(143)
