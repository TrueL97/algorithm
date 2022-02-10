import UIKit

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var n = 0
    var numbers = numbers
    var arr:[Int] = Array(repeating: 0, count: Int(pow(2.0, Double(numbers.count))))
    
    var count = arr.count / 2
    
    for i in 0...numbers.count - 1 {
        for j in 0...arr.count - 1{
            
            if j % count == 0 {
                numbers[i] = -numbers[i]
            }
            arr[j] = arr[j] + numbers[i]
        }
        count = count / 2
        
    }
    var arr1 = arr.filter{$0 == target}.count
    
    return arr1
}

let a = solution([1,1,1,1,1], 3)
print(a)
