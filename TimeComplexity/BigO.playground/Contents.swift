import UIKit

var str = "Hello, playground"

// Constant Time
func checkFirst(names: [String]) {
    if let first = names.first {
        print("Time complexity is O(1) for \(first)")
    } else {
        print("poop")
    }
}

// As input data increases,
// the amount of time the algorithm takes does not change.
checkFirst(names: ["Jyothi", "Swaroop"])


// Linear Time
// O(n)
func printNames(names: [String]) {
    for name in names {
        print("Time Complexity if O(n) \(name)")
    }
}

// As amount of data increases,
// the running time increases by the same amount
printNames(names: ["Jyothi", "Swaroop"])

// O(2n + 4)(
// printName is called twice (O(2n)) and input size is 2, so 2*2=4
// O(2n + 4)
for index in 0...1 {
    print(index)
    printNames(names: ["Jyothi", "Swaroop"])
}


// Quadratic Time
// O(n*n)= O(n^2)
func printNames2(names: [String]) {
    printNames(names: names)
}
printNames2(names: ["Jyothi", "Swaroop"])

// Algorithmic Time
let numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450]

func naiveContains(_ value: Int, in array: [Int]) -> Bool {
    for element in array {
        if element == value {
            return true
        }
    }
    return false
}
naiveContains(99, in: numbers)

func optimizedContains(_ value: Int, in array: [Int]) -> Bool {
    guard !array.isEmpty else {
        return false
    }
    
    let midIndex = array.count/2
    
    if value <= array[midIndex] {
        for index in 0...midIndex {
            if value == array[index] {
                return true
            }
        }
    } else {
        for index in midIndex..<array.count {
            if value == array[index] {
                return true
            }
        }
    }
    
    return false
}

// O(log n)
optimizedContains(99, in: numbers)

func myOptimization(_ value: Int, array: [Int]) -> Bool {
    
    guard !array.isEmpty else {
        return false
    }
    
    let midIndex = array.count/2
    
    if value == array[midIndex] {
        for index in 0...midIndex {
            if value == array[index] {
                return true
            }
        }
    } else {
        for index in midIndex..<array.count {
            if value == array[index] {
                return true
            }
        }
    }
    return false
}


// Quasilinear time
// O(n log n)

// Comparing Time Complexities
func sumFromOne(upto n: Int) -> Int {
    var result = 0
    
    for i in 1...n {
        result += i
    }
    return result
}

sumFromOne(upto: 10000)

func sumFromOne2(upto n: Int) -> Int {
    print((1...n).reduce(0, {$0 + $1}))
    return (1...n).reduce(0, +)
}

sumFromOne2(upto: 10000)

func sumFromOne3(upto n: Int) -> Int {
    return (n+1)*n/2
}
sumFromOne3(upto: 10000)
