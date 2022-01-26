import UIKit

func solution(_ s:String, _ n:Int) -> String {
   
    
    var arr:[String] = []
    
    for i in s {
        arr.append(String(i))
    }
    print(arr)
    
//    print(Character("Z").asciiValue)
    
    //a:97 z:122 , A:65 Z:90
    for i in 0...arr.count - 1 {
        if var j = Character(arr[i]).asciiValue{
            var k = Int(j)
            if k > 64 && k < 91 {
                k = k + n
                if k > 90 {
                    var sp = k % 90
                    k = 64 + sp
                }
            }else if k > 96 && k < 123 {
                k = k + n
                if k > 122 {
                    var sp = k % 122
                    k = 96 + sp
                }
            }
            print(k)
            arr[i] = String(UnicodeScalar(k)!)
        }
        
    }
    
    
    return arr.joined()
}


let a = solution("a Y z ", 3)
print(a)
