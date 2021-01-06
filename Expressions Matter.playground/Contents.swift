func expressionMatter(_ a: Int, _ b: Int, _ c: Int) -> Int {
    let caseOne = (a + b) * c
    let caseTwo = a + (b * c)
    let caseThree = (a * b) + c
    let caseFour  = a * (b + c)
    let caseFive = a * b * c
    let caseSix = a + b + c
    let numbersArray = [caseOne, caseTwo, caseThree, caseFour, caseFive, caseSix]
    let sortedArray = numbersArray.sorted(by: >)
    return sortedArray[0]
}
