import UIKit


func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    
    var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: rows), count: columns)
    
    var count = 1
    for i in 0...rows - 1 {
        for j in 0...columns - 1{
            arr[i][j] = count
            count = count + 1
        }
    }
    
    print(arr)
    
    for i in 0...queries.count - 1 {
        var le0 = queries[i][0]
        var le1 = queries[i][1]
        var le2 = queries[i][2]
        var le3 = queries[i][3]
    }
    
    return []
}

let a = solution(6, 6, [[2,2,5,4],[3,3,6,6],[5,1,6,3]])
