import UIKit
func isPalidrom(str: String) -> Bool {
    if str == nil || str.count<=1 {
        return true
    }
    let firstChar = str.first
    let lastChar = str.last
    if firstChar != lastChar {
        return false
    }
    let subString = String(str[str.index(after: str.startIndex)..<str.index(before: str.endIndex)])
    
    return isPalidrom(str: subString)
    
}
isPalidrom(str: "nitin")
