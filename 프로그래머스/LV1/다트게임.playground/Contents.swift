import UIKit

func solution(_ dartResult:String) -> Int {
 
    
    let a:[String:Double] = ["S":1, "D":2, "T":3]
    let b = ["*":2, "#":-1]
    
    var result:[Int] = []
    
    var number:Double = 0
    var numberString:String = ""
    for i in dartResult {
        
        if Int(String(i)) != nil {
//            number = Double(String(i))!
            numberString = numberString + String(i)
        }
        if a.keys.contains(String(i)){
            number = Double(numberString)!
            number = pow(number, a[String(i)]!)
            print(number)
            result.append(Int(number))
            numberString = ""
            number = 0
        }
        
        if String(i) == "#"{
            result[result.count - 1] = -1 * result.last!
        }
        if String(i) == "*" {
            result[result.count - 1] = result.last! * 2
            
            if result.count == 1 {
                
            }else {
                result[result.count - 2] = result[result.count - 2] * 2
            }
            
        }
        
    }
    
//    if Int("v") != nil {
//        print("1")
//    }
    
    
    
    print(result)
    
    
    
    return result.reduce(0){$0 + $1}
}

let a = solution("1T2D3D#")

print(a)
