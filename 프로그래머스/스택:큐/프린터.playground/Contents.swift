import UIKit

func solution(_ priorities:[Int], _ location:Int) -> Int {
//중요도 높을수록 빠르게 인쇄
    var priorities = priorities
    
    //결과
    var qu:[Int] = []
    
    var location = location

    while true {
        if priorities.count == 0 {
            break
        }
        if priorities.max() == priorities[0]{
            var a = priorities.removeFirst()
            qu.append(a)
            if location == 0 {
                break
            }else {
                location = location - 1
            }
            continue
        }else {
            var a = priorities.removeFirst()
            priorities.append(a)
            
            if location == 0 {
                location = priorities.count - 1
            }else {
                location = location - 1
            }
        }
 
    }
    return qu.count
}


let a = solution([1, 1, 9, 1, 1, 1]   , 0)
