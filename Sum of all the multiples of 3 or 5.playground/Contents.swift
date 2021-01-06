func findSum(_ n: Int) -> Int {
  var sum = 0
for i in 0...n {
    if i.isMultiple(of: 3) || i.isMultiple(of: 5) {
        sum += i
    }
}
    return sum
}
