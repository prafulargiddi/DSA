import UIKit

import Foundation
//* * * * *
//* * * * *
//* * * * *
//* * * * *
//* * * * *
func pattern1(n: Int) {
    for _ in 0..<n {
           for _ in 0..<n {
               print("* ", terminator: "")
           }
           print()
       }
}
//pattern1(n: 5)

//*
//* *
//* * *
//* * * *
func pattern2(_ n: Int) {
    for i in 0..<n {
        for _ in 0..<i {
            print("* ", terminator: "")
        }
        print()
    }
}
//pattern2(5)

//1
//1 2
//1 2 3
//1 2 3 4
//1 2 3 4 5
func pattern3(_ n: Int) {
    for i in 1...n {
        for j in 1...i {
            print("\(j) ", terminator: "")
        }
        print()
    }
}

//pattern3(5)

//1
//2 2
//3 3 3
//4 4 4 4
//5 5 5 5 5
func pattern4(_ n: Int) {
    for i in 1...n {
        for _ in 1...i {
            print("\(i) ", terminator: "")
        }
        print()
    }
}
//pattern4(5)


//* * * * *
//* * * *
//* * *
//* *
//*

func pattern5(n:Int) {
    for i in (1...n).reversed(){
        for _ in 0..<i {
            print("* ", terminator: "")
        }
        print("")
    }
}
//pattern5(n: 5)

//1 2 3 4 5
//1 2 3 4
//1 2 3
//1 2
//1
func pattern6(n: Int) {
    for i in 1...n {
        for j in 1...(n-i+1) {
            print("\(j) ", terminator: "")
        }
        print("")
    }
}
//pattern6(n: 5)

//    *
//   ***
//  *****
// *******
//*********
func pattern7(_ n: Int) {
    for i in 0..<n {
        for _ in 0..<(n - i - 1) {
            print(" ", terminator: "")
        }
        for _ in 0..<(2 * i + 1) {
            print("*", terminator: "")
        }
        for _ in 0..<(n - i - 1) {
            print(" ", terminator: "")
        }
        print()
    }
}
//pattern7(5)

//*********
// *******
//  *****
//   ***
//    *
func pattern8(_ n: Int) {
    for i in 0..<n {
        for _ in 0..<i {
            print(" ", terminator: "")
        }
        for _ in 0..<(2 * n - (2 * i + 1)) {
            print("*", terminator: "")
        }
        for _ in 0..<i {
            print(" ", terminator: "")
        }
        print()
    }
}
//pattern8(5)
//*
//* *
//* * *
//* * * *
//* * * * *
//* * * *
//* * *
//* *
//*
func pattern9(_ n: Int) {
    for i in 1...(2 * n - 1) {
        let star = i > n ? 2 * n - i : i
        for _ in 1...star {
            print("* ", terminator: "")
        }
        print()
    }
}
//pattern9(5)
//1
//01
//101
//0101
//10101
func pattern10(_ n: Int) {
    var start = 1
    for i in 0..<n {
        start = (i % 2 == 0) ? 1 : 0
        
        for _ in 0...i {
            print(start, terminator: "")
            start = 1 - start
        }
        print()
    }
}
//pattern10(5)
//1             1
//1 2         2 1
//1 2 3     3 2 1
func pattern11(_ n: Int) {
    var space = 2 * (n - 1)
    for i in 1...n {
        // Number
        for j in 1...i {
            print("\(j) ", terminator: "")
        }

        // Space
        for _ in 1...(space * 2) {
            print(" ", terminator: "")
        }

        // Number
        for j in stride(from: i, through: 1, by: -1) {
            print("\(j) ", terminator: "")
        }

        print()
        space -= 2
    }
}
//pattern11(4)
//A
//A B
//A B C
//A B C D
//A B C D E
func pattern14(_ n: Int) {
    for i in 0..<n {
        for ch in UnicodeScalar("A").value...UnicodeScalar("A").value + UInt32(i) {
            print(Character(UnicodeScalar(ch)!), terminator: " ")
        }
        print()
    }
}
//pattern14(5)

func pattern15(_ n: Int) {
    for i in 0..<n {
        let ch = Character(UnicodeScalar(UInt8(ascii: "A") + UInt8(i)))
        for _ in 0...i {
            print(ch,terminator: " ")
        }
        print()
    }
}
pattern15(5)


