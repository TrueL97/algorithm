import UIKit

func solution(_ nums:[Int]) -> Int {
    var answer = -1
    var three:[Int] = []
    var sosu = 0
    
    for i in 0...nums.count - 3 {
        for j in (i + 1)...nums.count - 2 {
            for k in (j + 1)...nums.count - 1 {
//                print(nums[i], nums[j], nums[k])
                three.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
//    print(three)
    
    
    
    for i in 0...three.count - 1 {
        var tr = true
        for j in 2...three[i] - 1{
            if three[i] % j == 0 {
                tr = false
                break
            }
           
            }
        if tr == true {
            sosu = sosu + 1
        }
    }
//print(sosu)
    

    return sosu
}

let a = solution([1,2,2])
print(a)
