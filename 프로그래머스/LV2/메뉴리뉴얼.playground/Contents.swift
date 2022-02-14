import UIKit







func solution(_ orders:[String], _ course:[Int]) -> [String] {

    
    

    for i in 0...course.count - 1 {
        
        var orderDict:[String:Int] = [:]
        
        for j in 0...orders.count - 1 {
            if orders[j].count < course[i] {
                continue
            }
            
               
            for k in orders[j]{
                if dic.contains(where: {$0.0 == k}){
                    dic[k]! = dic[k]! + 1
                }else {
                    dic[k] = 1
                }
            }
            
            orderDict.filter{$0.value >= 2 }.forEach{
                if countDict[$0.key.count] == nil {
                    countDict[$0.key.count] = [($0.key,$0.value)]
                }else {
                    countDict[$0.key.count]!.append(($0.key,$0.value))
                }
            }
            
        }
        print(orderDict)
    }





    return []
}


let a = solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4])
