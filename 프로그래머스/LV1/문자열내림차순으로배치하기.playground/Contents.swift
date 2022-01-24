import UIKit

func solution(_ s:String) -> String {

//    var de:[String] = []
//    var so:[String] = []
//
//    //소문자 a:97 z:122 대문자 A:65 Z:90
//    for i in s {
//        var c = Int(i.asciiValue!)
//        if c >= 97 && c <= 122 {
//            so.append(String(i))
//        }else if c >= 65 && c <= 90 {
//                de.append(String(i))
//        }
//
//
//    }
//
//
//    var result = so.sorted(by: >).joined(separator: "")
//    var result1 = de.sorted(by: >).joined(separator: "")
//
//    return result + result1
    
    print(String(s.sorted(by: >)))
    
    return ""


}

let a = solution("skcCckd")

print(a)
