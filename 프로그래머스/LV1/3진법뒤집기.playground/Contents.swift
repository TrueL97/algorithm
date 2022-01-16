import UIKit

func solution(_ n:Int) -> Int {
    
    var n = n
    var arr:[Int] = []
    
    while true {
        
        if n == 0 {
            break
        }
        
        let rest = n % 3
        
        arr.append(rest)
        
        n = n / 3
    }
    
    var two = 1
    var result = 0
    for i in (0...arr.count - 1).reversed() {
        result = result + two * arr[i]
        two = two * 3
    }
    
    return result
}

let a = solution(125)

print(a)

