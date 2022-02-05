import UIKit

func solution(_ x:Int, _ n:Int) -> [Int64] {
    
    var arr:[Int64] = []
    
    var result = 0
    for i in 1...n {
        result = result + x
        arr.append(Int64(result))
    }
    

    return arr
}

let a = solution(-4, 2)
print(a)
