import UIKit




func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {

    var arr:[Int] = Array(repeating: 0, count: speeds.count)
    var count = 1
    
    var pro = progresses
    var speeds = speeds
    
    var result:[Int] = []
    
    var k = speeds.count
    while true {
        
    for i in 0...progresses.count - 1 {
        if pro[i] < 100{
            pro[i] = pro[i] + speeds[i]
            if pro[i] >= 100{
                arr[i] = count
                k = k - 1
                
            }
        }
    }
        if k <= 0 {
            break
        }
        count = count + 1
    }
    
    var arr1 = arr
    var min = arr[0]
    var countarr:[Int] = []
    countarr.append(min)
    var final:[Int] = []
    
    for i in 1...arr.count - 1 {
        if min < arr[i]{
            final.append(countarr.count)
            min = arr[i]
            countarr = []
            countarr.append(min)
            
        }else {
            countarr.append(min)
            
        }
    }
    
    if countarr.count != 0{
    final.append(countarr.count)
    }
    
    return final
}

let a = solution([5,4,2,3,1], [1,1,1,1,1])
print(a)
