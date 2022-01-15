import UIKit







func solution(_ left:Int, _ right:Int) -> Int {
    
    let su = right - left
    
    
    var sosu:[Int] = []
    
    
    for i in left...right {
        var aksu = 0
        for j in 1...i {
            if i % j == 0 {
                aksu = aksu + 1
            }
        }
        if aksu % 2 == 0 {
            sosu.append(i)
        }else {
            sosu.append(-i)
        }
    }
    
    var result = 0
    
    for i in sosu {
        result = result + i
    }

    
    
    return result
}


let a = solution(24, 27)

print(a)
