import UIKit

func solution(_ w:Int, _ h:Int) -> Int64{
    
    
    var r = h - 1
    var result = 0
    var min:Double = 0
    var max:Double = 0
    
    var count = 0
    if w > h {
        min = Double(h)
        max = Double(w)
    }else {
        min = Double(w)
        max = Double(h)
    }
    
    var inc:Double = max / min
    var wi = 0
    if h == 1 || w == 1 {
        return 0
    }else
    {
        for i in 1...Int(max) - 1 {
            
                if w == h {
                    result = result + r
                    r = r - 1
                }else {
                    if Double(i) / (Double(wi) + 1) >= inc {
                        wi = wi + 1
                        //                print(wi)
                        result = result + wi
                    }else {
                        //                print(wi)
                        result = result + wi
                    }
                }
            }
        }
        //    print(result)
        var answer:Int64 = Int64(result * 2)
        
        return answer
    }

let a = solution(8, 12)
print(a)
