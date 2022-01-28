import UIKit

func solution(_ n:Int64) -> Int64 {
    
    let sn = String(n)
    
    var arr:[Int] = []
    
    for i in sn {
        arr.append(Int(String(i))!)
    }
    
    arr.sort(by: >)
    
    
    
    
    return Int64(arr.map{String($0)}.joined())!
}

let a = solution(118372)
