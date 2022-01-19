import UIKit






func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    
    
    var result:Int64 = 0
    
    for i in 1...count {
        result = result + Int64(price * i)
    }
    
    

    
    if result <= money{
    
    return 0
    }else {
            return result - Int64(money)
        }

}



let a = solution(3, 3, 1)
print(a)
