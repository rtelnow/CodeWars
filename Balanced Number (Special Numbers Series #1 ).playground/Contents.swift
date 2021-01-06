extension BinaryInteger {
    var digits: [Int] {
        return String(describing: self).compactMap { Int(String($0)) }
    }
}
func balancedNumber(_ number: Int) -> String {
    var arrayOfInt = [Int]()
    var sumLeft: Int = 0
    var sumRight: Int = 0
    var text: String = ""
    arrayOfInt = number.digits
    var arrayIndex = arrayOfInt.count
    let isOdd = arrayOfInt.count.isMultiple(of: 2)
    if !isOdd {
        let indexOddLeft = arrayOfInt.count / 2
        let indexOddRight = indexOddLeft + 1
        for i in 0..<indexOddLeft {
            let number = arrayOfInt[i]
            sumLeft += number
        }
        for j in indexOddRight..<arrayOfInt.count {
            let number = arrayOfInt[j]
            sumRight += number
        }
        print(sumLeft)
        print(sumRight)
    } else {
        let indexEvenLeft = (arrayOfInt.count / 2) - 1
        let indexEvenRight = indexEvenLeft + 2
        for i in 0..<indexEvenLeft {
            let number = arrayOfInt[i]
            sumLeft += number
        }
        for j in indexEvenRight..<arrayOfInt.count {
            let number = arrayOfInt[j]
            sumRight += number
        }
        print(sumLeft)
        print(sumRight)
    }
    guard sumLeft == sumRight else {
        text = "Not Balanced"
        return text
    }
    text = "Balanced"
    return text
}

print(balancedNumber(432))
