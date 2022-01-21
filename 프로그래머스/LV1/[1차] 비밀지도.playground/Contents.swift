import UIKit


func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    var answer: [String] = []
    
    var answer1:[[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: n)
    var answer2:[[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: n)
    
    var arr1 = arr1
    var arr2 = arr2
    
    
    for i in 0...arr1.count - 1 {
        var k = arr1[i]
        var j = 0
        while n != j{
            if k == 0 {
                answer1[i].insert(0, at: 0)
            }else {
                var zeroone = k % 2
                answer1[i].insert(zeroone, at: 0)
                k = k / 2
            }
            j = j + 1
        }
        
    }

    for i in 0...arr2.count - 1 {
        var k = arr2[i]
        var j = 0
        while n != j{
            if k == 0 {
                answer2[i].insert(0, at: 0)
            }else {
                var zeroone = k % 2
                answer2[i].insert(zeroone, at: 0)
                k = k / 2
            }
            j = j + 1
        }
    }
    
//    print(answer1)
//    print(answer2)
//    
    
    for i in 0...n - 1 {
        var hash = ""
        for j in 0...n - 1 {
            if answer1[i][j] == 0 && answer2[i][j] == 0 {
                hash = hash + " "
            }else {
                hash =  hash + "#"
            }
        }
        answer.append(hash)
    }
    print(answer)
    
    return answer
}



let a = solution(5, [9, 20, 28, 18, 11],[30, 1, 21, 17, 28])
