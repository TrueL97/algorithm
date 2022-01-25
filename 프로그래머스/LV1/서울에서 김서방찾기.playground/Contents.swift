import UIKit




func solution(_ seoul:[String]) -> String {
    
    var seoul = seoul
    
    
    for i in 0...seoul.count - 1 {
        if seoul[i] == "Kim" {
            return "김서방은 \(i)에 있다"
            break
        }
            
    }
    
    return ""
    
}

let a = solution(["Jane", "Kim"])

print(a)
