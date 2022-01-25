import UIKit

func solution(_ s:String) -> Bool {
    
    
    var result = true
    
    for i in s {
        if i == "0" || i == "1" || i == "2" || i == "3" || i == "4" || i == "5" || i == "6" || i == "7" || i == "8" || i == "9" {
            
        }else {
            result = false
        }
    }
    
    if s.count == 4 || s.count == 6 {
        
    }else {
        result = false
    }
    
    
    return result
}


let a = solution("1234")
print(a)
