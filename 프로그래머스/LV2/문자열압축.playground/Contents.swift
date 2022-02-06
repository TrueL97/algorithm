import UIKit

import Foundation



func solution(_ s:String) -> Int {

    var arr:[String] = []
    var str = ""
    var result:[Int] = []
    var len = s.count / 2

    var count = 0
    if s.count == 1 {
        return 1
    }else{
    for i in (1...len).reversed(){
        for j in s {
            str = str + String(j)
            count = count + 1

            if count == i {
                count = 0
                arr.append(str)
                str = ""

            }
        }
        if str.count != 0 {
            arr.append(str)
        }

        arr.append("")
        str = ""
        count = 0

//        print(arr)
        
        var n = 1
        var se = 0
        var st = arr[0]
        for i in 0...arr.count - 2 {

            if arr[se] == arr[i + 1]{
                n = n + 1
                arr[i+1] = ""
                
            }else {
                if n != 1{
                    arr[se] = String(n) + st
                }else {
                    
                }
                st = arr[i + 1]
                n = 1
                se = i + 1
            }
        }
        
        result.append(arr.joined().count)
        
        arr = []
    }

    result.sort(by: <)
//    print(result)

    return result.first!
}
}

let a = solution("a")
print(a)

