import UIKit

func solution(_ arr:[Int]) -> [Int] {
    
    var arr = arr
    if arr.count == 1 {
        return [-1]
    }else {
    
        print(arr.min()!)
        if let hasData = arr.firstIndex(of: arr.min()!){
            arr.remove(at: hasData)
        }
        
    
        return arr
    }

}


let a = solution([4,3,2,2])
print(a)
