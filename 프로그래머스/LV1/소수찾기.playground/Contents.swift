import UIKit

func solution(_ n:Int) -> Int {
    
    let n = n
    
    var result:Set<Int> = []
    
//    var result:[Int] = []
    
    for i in 2...n {
        result.insert(i)
    }
    
   
    var k = 2
    var i = 2
    while true {
        
        var l = k * i
        print(k, i)
        result.remove(l)
        
        
        i = i + 1
        
        if l >= n {
            k = k + 1
            i = 2
        }
        if k * 2 >= n{
            break
    }
       

    }
    print(result)
    
    
    
//    var tr = false
//    for i in 2...n{
//
//        if i == 2 || i == 3{
//            result.append(i)
//        }else {
//        for j in 2...i / 2 {
//        if i % j == 0 {
//            tr = true
//            break
//        }
//
//        }
//            if tr == false {
//                result.append(i)
//            }
//
//        tr = false
//        }
//    }




    return result.count
}

let a = solution(10)
print(a)

