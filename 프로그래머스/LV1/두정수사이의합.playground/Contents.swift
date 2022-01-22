import UIKit

func solution(_ a:Int, _ b:Int) -> Int64 {


    let a = a
    let b = b
    var result = 0
    
    var plma = [a,b]
    
    plma.sort(by: <)
    
    if plma[0] == plma[1]{
        return Int64(plma[0])
    }else{
    for i in plma[0]...plma[1]{
            result = result + i
        }
        return Int64(result)
    }


    


}

let a = solution(3, 5)

print(a)
