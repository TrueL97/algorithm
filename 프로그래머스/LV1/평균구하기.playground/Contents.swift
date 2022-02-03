import UIKit

func solution(_ arr:[Int]) -> Double {
    
    var result:Double = 0
    for i in arr {
        result = result + Double(i)
    }
    
    return result / Double(arr.count)
}

let a = solution([1,2,3,4])
