import UIKit

func solution(_ s:String) -> Int{
    var answer:Int = -1

    
    var arr:[String] = [""]
    
    
    var s = s
    
    var str = ""
    for i in s {
//        print(i)
        if arr[arr.count - 1] != String(i){
            arr.append(String(i))
        
        }else {
            arr.removeLast()
        }

    }
//    print(str.count)

    if arr.count == 1 {
    return 1
    }else {
        return 0
    }
}

let a = solution("cdcd")
