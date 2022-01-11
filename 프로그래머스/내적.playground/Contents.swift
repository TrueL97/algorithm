import UIKit

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var result = 0
    var a = a
    
    for i in 0...a.count - 1   {
        result = result + a[i] * b[i]
    }
    
    return result
}

let a = solution([1,2,3,4], [-3,-1,0,2])
print(a)

