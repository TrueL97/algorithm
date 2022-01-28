import UIKit

func solution(_ n:Int) -> Int
{
    var answer:Int = n

    var a = String(answer)
    
    var result = 0
    for i in a {
        result = result + Int(String(i))!
    }
    
    return result
}

let a = solution(123)

