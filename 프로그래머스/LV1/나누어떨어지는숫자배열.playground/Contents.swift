import UIKit




func solution(_ arr:[Int], _ divisor:Int) -> [Int] {

    let arr = arr
    let divisor = divisor
    
    var result:[Int] = []
    for i in 0...arr.count - 1 {
        if arr[i] % divisor == 0 {
            result.append(arr[i])
        }
    }
    
    
    result.sort(by: <)

    if result.count == 0 {
        return [-1]
    }else
    {
    return result
}
}

