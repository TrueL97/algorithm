import UIKit

func solution(_ strings:[String], _ n:Int) -> [String] {
  
    
    var dic:[String:String] = [:]
    
    for i in 0...strings.count - 1 {
//        dic[strings[i]] = strings[i].index(strings[i].startIndex, offsetBy: n)
        var c = strings[i][strings[i].index(strings[i].startIndex, offsetBy: n)]
        
        
        dic[strings[i]] = String(c)
    }
    
    return dic.sorted(by: {$0.0 < $1.0}).sorted(by: {$0.1 < $1.1}).map{ $0.key}
}


let a = solution(["abce", "abcd", "cdx"], 2)
print(a)
