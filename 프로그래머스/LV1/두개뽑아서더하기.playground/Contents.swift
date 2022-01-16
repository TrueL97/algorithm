import UIKit







func solution(_ numbers:[Int]) -> [Int] {

    var arr:Set<Int> = []
    
    var numbers = numbers
    for i in 0...numbers.count - 2 {
        for j in i + 1...numbers.count - 1{
            var plus = numbers[i] + numbers[j]
            arr.insert(plus)
        }
    }
    
    

    return arr.sorted(by: < )

}


let a = solution([5,0,2,7])
print(a)
