import UIKit



func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    var result:Int = 0
    var number = absolutes
    var bool = signs
    for i in 0...absolutes.count - 1{
        if signs[i] == false {
            number[i] =  (-1) * number[i]
            result = result + number[i]
        }else {
            result = result + number[i]
        }
    }
    
    return result
}

let a = solution([4,7,12], [true,false,true])
print(a)

