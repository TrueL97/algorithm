import UIKit









func solution(_ numbers:[Int]) -> Int {
    var result:Int = 45
    
    for i in 0...numbers.count - 1 {
        print(numbers[i])
        result = result - numbers[i]
    }
    
    return result
}

let a = solution([1,2,3,4,6,7,8,0])
print(a)
