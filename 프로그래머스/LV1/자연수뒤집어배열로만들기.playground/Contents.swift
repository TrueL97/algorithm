import UIKit

func solution(_ n:Int64) -> [Int] {
    
    let n = n
    
    var sn = String(n)
    
    var result:[Int] = []

    for i in sn.reversed() {
        result.append(Int(String(i))!)
    }
    print(result)
    
    return result
}

let a = solution(12345)
