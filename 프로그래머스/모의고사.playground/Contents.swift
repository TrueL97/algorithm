import UIKit

func solution(_ answers:[Int]) -> [Int] {
    var result:[Int] = []
    
    var count:[Int] = []
    
    let one = [1,2,3,4,5]
    let two = [2,1,2,3,2,4,2,5]
    let three = [3,3,1,1,2,2,4,4,5,5]
    
    var onetr = 0
    var twotr = 0
    var threetr = 0
    for i in 0...answers.count - 1 {
        let answer = answers[i]
        if answer == one[i % 5] {
            onetr = onetr + 1
        }
        if answer == two[i % 8] {
            twotr = twotr + 1
        }
        if answer == three[i % 10] {
            threetr = threetr + 1
        }
    }
//    print(onetr, twotr, threetr)
    
    count.append(onetr)
    count.append(twotr)
    count.append(threetr)
    
    if count.max() == onetr {
        result.append(1)
    }
    
    if count.max() == twotr {
        result.append(2)
    }
    if count.max() == threetr {
        result.append(3)
    }
    
    
    
    return result
}

let a = solution([1,2,3,4,5])
print(a)
