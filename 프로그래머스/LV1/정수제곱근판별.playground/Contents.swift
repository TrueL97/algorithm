import UIKit

func solution(_ n:Int64) -> Int64 {
    
    var result:Int64 = 0
    let dn = Double(n)

    if Double(n) / floor(sqrt(dn)) == floor(sqrt(dn)){
        var a = sqrt(dn) + 1
        return Int64(pow(a, 2))
    }else {
        return -1
    }
    
    
}

let a = solution(3)
print(a)
