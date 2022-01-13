import UIKit

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result:[Int] = []
    
    for i in 0...commands.count - 1 {
        var arr:[Int] = []
        
        //2,5
        for j in commands[i][0] - 1...commands[i][1] - 1 {
            arr.append(array[j])
            arr.sort{$0<$1}
        }
//        print(arr)
        var three = commands[i][2]
        result.append(arr[three - 1])
    }
    
    return result
}

let a = solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])

print(a)

