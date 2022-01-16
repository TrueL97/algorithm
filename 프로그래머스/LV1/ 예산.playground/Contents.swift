import UIKit






//최대한 많은 부서
func solution(_ d:[Int], _ budget:Int) -> Int {

    var d = d
    var budget = budget
    var result = 0
    d.sort(by: <)
    var arr:[[Int]] = []
    
    for i in 0...d.count - 1 {
        for j in i...d.count - 1 {
            var plus:[Int] = []
            for k in i...j {
                plus.append(d[k])
            }
            if plus.reduce(0){$0 + $1} <= budget {
                if result < plus.count {
                    result = plus.count
                }
            }
        }
    }

    return result
}

let a = solution([2,2,3,3], 10)
print(a)

