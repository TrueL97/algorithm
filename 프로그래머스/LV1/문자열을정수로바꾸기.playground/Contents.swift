import UIKit

func solution(_ s:String) -> Int {
    
    var s = s
    if s.first == "-"{
        s.removeFirst()
        
        return -1 * Int(s)!
    }else if s.first == "+" {
        s.removeFirst()
        
        return Int(s)!
    }else {
        return Int(s)!
    }
    
    
}

let a = solution("-1234")
print(a)
