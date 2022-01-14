import UIKit




////N: 전체 스테이지 개수, stages: 스테이지의 번호 즉 stages.count = 사용자수
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var stages = stages
    stages.sort(by: <)
    var result:Dictionary<Int, Double> = [:]
    var fail:Double?
    var nonfinish:[Double] = Array(repeating: 0, count: N + 1)
    var nonclearuser:Double = 0
    var stagecount:Double = Double(stages.count)
    
    for i in stages {
        nonfinish[i - 1] += 1
    }
    for i in 1...N {
        if nonfinish[i - 1] == 0 {
            result[i] = 0
            continue
        }
        
        result[i] = nonfinish[i - 1] / (stagecount - nonclearuser)
        
        nonclearuser = nonclearuser + nonfinish[i - 1]
        
        
        
        
//        var ja = 0
//        var mo = 0
//
////        print(stages.firstIndex(of: i) ?? 0)
//
//        //해당 스테이지에 사람 없을 때 실패율 0
//        if !stages.contains(i) {
//            result[i] = 0
//        }else {
//            if stages.firstIndex(of: i) == stages.lastIndex(of: i) {
//                ja = 1
//
//                //if 문을 통해서 들어왔기때문에 firstindex는 무조건 있음
//                mo = stages.count - stages.firstIndex(of: i)!
//            }else {
//                ja = stages.lastIndex(of: i)! - stages.firstIndex(of: i)! + 1
//                mo = stages.count - stages.firstIndex(of: i)!
//            }
//            fail = Double(ja) / Double(mo)
//
//            result[i] = fail
//            print(i, ja, mo)
//        }
//

//         fail = Double(stages.filter{ $0 == i}.count) / Double(stages.filter{ $0 >= i}.count)
       
    }
    


    //먼저 키값으로  정렬 시키고 값으로 정렬하기
    let returnresult = result.sorted(by: <).sorted(by: {$0.value > $1.value}).map{ $0.key }
//    print(result.sorted(by: <))
//    print(returnresult)



    return returnresult
}



let a = solution(5, [2, 1, 2, 6, 2, 4, 3, 3])
//
print(a)
