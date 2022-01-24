import UIKit

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    
    
    let s = s
    var pcount = 0
    var ycount = 0
    
    for i in s {
        if i.lowercased() == "p" {
            pcount = pcount + 1
        }
        if i.lowercased() == "y" {
            ycount = ycount + 1
        }
        
        
    }
    
    if pcount == ycount {
        return true
    }else {
        return false
    }
    

    
}

let a = solution("pPoooyY")

print(a)
