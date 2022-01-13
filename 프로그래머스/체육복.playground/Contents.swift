import UIKit


//n 전체, lost: 잃어버린학생 번호, reserve: 여벌 체육복 가져온 학생번호
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var n = n
    var lost = lost
    var reserve = reserve
    
    //테스트 케이스에 정렬안하면 나는 오류가 있음
    lost.sort(by: <)
    reserve.sort(by: <)
    
    //본인이 여벌이 있는데 잃어버린경우
    for i in reserve {
        if lost.contains(i){
//            print(i)
            if   let hasData = lost.firstIndex(of: i) {
                lost.remove(at: hasData)
           
            }
            if let hasData = reserve.firstIndex(of: i){
                reserve.remove(at: hasData)
            }
        }
    }
    
//    print(lost)
//    print(reserve)
    
    ///잃어버렸는데 앞뒤에 여벌이 있는 경우
    for i in lost {
        if reserve.contains(i - 1) {
            lost.removeFirst()
            if let hasData = reserve.firstIndex(of: i - 1){
                reserve.remove(at: hasData)
            }
        }else if reserve.contains(i + 1) {
            lost.removeFirst()
            if let hasData = reserve.firstIndex(of: i + 1){
                reserve.remove(at: hasData)
            }
            
        }
    }
    
//    print(lost)
    var result = n - lost.count
    
    return result
}


let a = solution(5, [2,4], [5,3])

print(a)


