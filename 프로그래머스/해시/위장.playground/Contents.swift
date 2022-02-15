import UIKit

func solution(_ clothes:[[String]]) -> Int {
  
    
    var dic:[String:Int] = [:]
    
    for i in 0...clothes.count - 1 {
        if dic.contains(where: {$0.0 == clothes[i][1]}) {
            dic[clothes[i][1]]! = dic[clothes[i][1]]! + 1
        }else {
            dic[clothes[i][1]] = 1
        }
    }



    
    var result2 = dic.map{$0.1 + 1}.reduce(1){$0 * $1} - 1

   
    return  result2
}

let a = solution([["crowmask", "face"], ["bluesunglasses", "face"], ["smoky_makeup", "face"]]       )

//헤드기어2 아이웨어 1
