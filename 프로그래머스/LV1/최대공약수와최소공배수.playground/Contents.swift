import UIKit

func solution(_ n:Int, _ m:Int) -> [Int] {
    
    var spn = [n,m].min()!
    var spm = [n,m].max()!
    
    var de = 1
    
    var i = 2
    while true {
        if spn % i == 0 && spm % i == 0 {
            spn = spn / i
            spm = spm / i
            de = de * i
            i = 2
            continue
        }
        if spm == i {
            break
        }
        i = i + 1
        
        
    }
    
    
    return [de, de * spn * spm]
    
}

let a = solution(12, 18)
