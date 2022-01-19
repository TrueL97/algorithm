import UIKit

func solution(_ n:Int) -> Int {
    
    var n = n
    
    var result = 0
    for i in 2...n {
        if n % i == 1 {
            result = i
            break
        }
    }
    
    return result
}

let a = solution(10)
