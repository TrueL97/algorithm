import UIKit

func solution(_ num:Int) -> Int {
    
    var n = num
    
    var i = 1
    while true{
        
        if n == 1 {
            break
        }
        if i == 500 {
            return -1
        }
        
        if n % 2 == 0 {
            n = n / 2
            i = i + 1
            continue
        }else if n % 2 == 1 {
            n = n * 3 + 1
            i = i + 1
            continue
        }
        
    }
    
    return i - 1
}

let a = solution(626331)
print(a)
