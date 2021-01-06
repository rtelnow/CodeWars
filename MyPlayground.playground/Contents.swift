import UIKit
var arrayNumbers = [7, 3 , 14 , 17, 20, 40, 60, 73]
func menFromBoys(_ arr: [Int]) -> [Int] {
    var separatedArray = arr
    for i in 0..<separatedArray.count {
        let number = separatedArray[i]
        let firstNumber = separatedArray[0]
        if number % 2 == 0 {
            separatedArray.insert(number, at: 0)
            separatedArray.remove(at: number)
        }
    }
    return separatedArray
}
menFromBoys(arrayNumbers)

