import UIKit

func solution(_ n:Int) -> String {

    var result = ""
    for i in 1...n {
        if i % 2 != 0 {
            result = result + "수"
        }else {
            result = result + "박"
        }
    }
    

    return result
}

let a = solution(3)
print(a)

