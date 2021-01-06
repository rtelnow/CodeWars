func bmi(_ weight: Int, _ height: Double) -> String {
    var result = ""
    func bmiCalc(weight: Int, height: Double) -> Double {
        let bmi: Double = Double(weight) / (height * height)
        return bmi
    }
    switch bmiCalc(weight: weight, height: height) {
    case 0...18.5:
        result = "Underweight"
    case 18.5...25.0:
        result = "Normal"
    case 25.0...30.0:
        result = "Overweight"
    case 30.0...100:
        result = "Obese"
    default:
        break
    }
    return result
}
