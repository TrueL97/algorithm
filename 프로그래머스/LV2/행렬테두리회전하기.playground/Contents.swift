import UIKit


func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    
    var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: columns), count: rows)
    var result:[Int] = []
    var count = 1
    
    
    
    for i in 0...rows - 1 {
        for j in 0...columns - 1{
            arr[i][j] = count
            count = count + 1
        }
    }
    
//    print(arr)
    
    for i in 0...queries.count - 1 {
        var le0 = queries[i][0] - 1 //2
        var le1 = queries[i][1] - 1//2
        var le2 = queries[i][2] - 1//5
        var le3 = queries[i][3] - 1//4
        //01 12
//        print(le3)
        var q:[Int] = []
        var q2:[Int] = []
        var le:[Int] = []
        var ri:[Int] = []
        for j in 0...rows - 1{

            for k in 0...columns - 1{
                if j == le0{
                    if k >= le1 && k <= le3{
                        q.append(arr[j][k])
                        continue
                    }
                    }


                if j == le2{
                    if k >= le1 && k <= le3{
//                        print("아래 \(arr[j][k])")
                        q2.append(arr[j][k])
                        continue
                    }
                }

                if j > le0 && j < le2{
                    if k == le1{
                        le.append(arr[j][k])
                    }
                    else if k == le3{
                        ri.append(arr[j][k])
                    }
                    continue
                }


            }

        }
        q2 = q2.reversed()
        le = le.reversed()
        q = q + ri
        q = q + q2
        q = q + le
        var a = q.removeLast()
        q.insert(a, at: 0)
//        print(q)
        result.append(q.min()!)


        for j in 0...rows - 1{
            for k in 0...columns - 1{

                if j == le0{
                    if k >= le1 && k <= le3{
                        arr[j][k] = q.removeFirst()
                        continue
                    }
                    }


                if j == le2{
                    if k >= le1 && k <= le3{
                        arr[j][k] = q.removeLast()
                        continue
                    }
                }
                if j > le0 && j < le2{
                    if k == le1{
                        arr[j][k] = q.removeLast()
                    }
                    else if k == le3{
                        arr[j][k] = q.removeFirst()
                    }
                    continue

                }

            }

        }


    }
//    print(result)
    return result
}

let a = solution(100, 97,[[1,1,100,97]])
