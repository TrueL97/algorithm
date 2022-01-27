import UIKit


func solution(_ s:String) -> String {
    
//    let sarr = s.split(separator: " ")
//
//    var result:[String] = []
//
//    print(sarr)
//
//    for i in 0...sarr.count - 1 {
//
//        var count = 1
//        var arr:[String] = []
//        for j in sarr[i] {
//            if count % 2 != 0 {
//                arr.append(String(j).uppercased())
//            }else{
//            arr.append(String(j))
//            }
//            count = count + 1
//        }
//        result.append(arr.joined())
//
//
//
//    }
//
    
    let s = s
    var arr:[String] = []
    var spl = 0
    for i in s {
        if let a = i.asciiValue{
            if a == 32{
                arr.append(" ")
                spl = 0
            }else {
                if spl % 2 == 0 {
                    arr.append(i.uppercased())
                    spl = spl + 1
                }else {
                    arr.append(i.lowercased())
                    spl = spl + 1
                }
            }
        }
    }
    
    print(arr)
    
    return arr.joined()
}

let a = solution("try  hello world ")
