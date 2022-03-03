import UIKit
import Foundation

func solution(_ numbers:String) -> Int {
    
    var arr:[String] = []
    var result = 0
    for i in numbers {
        arr.append(String(i))
    }
    var numbers1 = arr.sorted(by: >).joined(separator: "")

    var sosu:Set<Int> = []
    
    for i in 2...Int(numbers1)!{
        sosu.insert(i)
    }
    var number = 2
    var count = 2
    while true {
        var one = number * count
        sosu.remove(one)

        count = count + 1

        if one > Int(numbers1)! {
            number = number + 1
            count = 2
        }
        if number > Int(numbers1)! / 2 {
            break
        }
    }

    print(sosu)
//    while true {


//        var spl = false
//        count = count + 1
//        if count == Int(numbers1)! + 1{
//            break
//        }
//        var strarr:[Character] = []
//
//        for i in String(count){
//            strarr.append(i)
//        }
//
//        for i in arr {
//            if let fristindex = strarr.firstIndex(of: Character(i)){
//                strarr.remove(at: fristindex)
//            }
//        }
//
//        if strarr.count != 0{
//        continue
//        }
//
//        if count == 2 {
//            result = result + 1
//            continue
//
//        }else if count == 3{
//            result = result + 1
//            continue
//        }else{
//            for i in 2...Int(sqrt(Double(count))) {
//                if count % i == 0 {
//                    spl = true
//                    break
//                }
//            }
//            if spl == false {
//                result = result + 1
//            }
//        }

        
//    }
        
    
    
//    print(result)
    return result
}

let a = solution("300000")
