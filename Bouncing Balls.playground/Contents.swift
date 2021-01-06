func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
    guard h > 0 else {
        return -1
    }
    guard bounce > 0 && bounce < 1 else {
        return -1
    }
    guard window < h else {
        return -1
    }
    var numberOfSight: Int = 1
    var currentHeight = h * bounce
    while currentHeight > window {
        numberOfSight += 2
        currentHeight = currentHeight * bounce
    }
        return numberOfSight
}
