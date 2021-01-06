func reverseSeq(n: Int) -> [Int] {
  
  var arrayOfInt = [Int](1...n)
  var sortedArrayOfInt = arrayOfInt.sorted(by: >)
  
  return sortedArrayOfInt
}
