import UIKit

var str = "Hello, playground"

print(Int.min)


func poo(_ value: Int, _ currentValue: Int, _ currentCount: inout Int) {
    if value == currentValue {
        print(value)
        currentCount += 1
    }
}
func printSorted(_ array: [Int]) {
    
    guard !array.isEmpty else { return }
    
    var currentCount = 0
    var minValue = Int.min
    
    for value in array {
        poo(value, minValue, &currentCount)
    }
    
    while currentCount < array.count {
        
        // Max value in an array
        var currentValue = array.max()!
        for value in array {
            if value < currentValue && value > minValue {
                currentValue = value
            }
        }
        
        var printCount = 0
        for value in array {
            poo(value, currentValue, &currentCount)
        }
        
        minValue = currentValue
    }
}
printSorted([111, 32, 6, 60, 68, 81, 9, 15, 45])
