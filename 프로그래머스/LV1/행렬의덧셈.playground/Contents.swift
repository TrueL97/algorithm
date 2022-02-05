import UIKit

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    
    var arr1 = arr1
    
    for i in 0...arr1.count - 1 {
        for j in 0...arr1[i].count - 1 {
            arr1[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    print(arr1)
    
    
    return arr1
}

let a  = solution([[1,2],[2,3]], [[3,4],[5,6]])
