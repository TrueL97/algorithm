import UIKit

func solution(_ x:Int) -> Bool {
    //101
    var arr:[Int] = []
    var c = x
    while true{
        var a = c % 10
        arr.append(a)
        c = c / 10
        if c == 0 {
            break
        }
        
    }
    print(arr)
    
    var result = arr.reduce(0, {$0 + $1})
    print(result)
    if x % result == 0 {
        return true
    }else {
        return false
    }
    
}

let a = solution(11)
