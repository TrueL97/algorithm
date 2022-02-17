import UIKit




func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
   
    
    var se = 0
    var truck = truck_weights
    var qu:[Int] = Array(repeating: 0, count: bridge_length)
//    print(qu)

    var n = 0
    while true {
        se = se + 1
        var a = truck.first
        
        var quremove = qu.removeFirst()
        
        n = n - quremove
        
//        var pl = qu.reduce(0){$0 + $1}
        
        if n + a! <= weight {
            truck.removeFirst()
            qu.append(a!)
            truck.append(0)
            n = n + a!
        }else {
            qu.append(0)
        }
        
//        pl = qu.reduce(0){$0 + $1}
        
//        print(qu)
//        print(pl)
        if n == 0{
            break
        }
        
    }
    
//    print(se)
    
    return se
}

let a = solution(100, 100, [10])
