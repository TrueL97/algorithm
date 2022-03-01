import UIKit

func solution(_ citations:[Int]) -> Int {
    
    var arr:[Int] = []
    var result:[Int] = []
    result.append(0)
    arr.append(0)
    
    var citations = citations.sorted(by: <)
//    print(citations)
    
    
        for i in 0...citations.count - 1 {
            var hab = citations.count - i
//            print("hab\(hab)")
            
            
            for j in 0...citations[i]{
//                print(j)
                if j >= arr.last! && j <= hab {
                    result.append(j)
                }
            }
            arr.append(citations[i])

    }
    
//    print(result)
    
    return result.last!
}


let a = solution([5,5,5,5])
//print(a)
