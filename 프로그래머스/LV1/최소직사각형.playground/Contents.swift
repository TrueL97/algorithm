import UIKit




func solution(_ sizes:[[Int]]) -> Int {

    var sizes = sizes
    for i in 0...sizes.count - 1{
        sizes[i].sort(by: >)
    }
    
    
    
    var a = sizes.map{$0[0]}
    var b = sizes.map{$0[1]}

    a.sort(by: <)
    b.sort(by: <)
    
    
                       
    return a.max()! * b.max()!

}



let a = solution([[60, 50], [30, 70], [60, 30], [80, 40]])


print(a)
