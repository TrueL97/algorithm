//
//  main.swift
//  기본 수학 1
//
//  Created by 이윤식 on 2021/12/22.
//
//

import Foundation

//1712
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//
//
////여기 오류가 난이유: input[2] - input[1] 이 0이 될수도 있기 때문
////var result = (input[0]/(input[2] - input[1])) + 1
//
//if input[1]  >= input[2] {
//    print(-1)
//}else {
//    print((input[0] / (input[2] - input[1])) + 1)
//}


//2292
//let input = Int(readLine()!)!
//
//let a = input
//var sum = 1
//var i = 0
//while true {
//    sum = sum + 6 * i
//    if a <= sum {
//        print(i + 1)
//        break
//    }
//
//
////    print(sum)
//
//    i = i + 1
//}

//1193
//let input = Int(readLine()!)!
//
//var ja = 1
//var mo = 1
//var pl = 1
//if input > 1{
//    for i in 2...input {
//        mo = mo + pl
//        ja = ja - pl
//        if 1 > ja {
//            ja = 1
//            pl *= -1
//            continue
//        }
//        if 1 > mo {
//            mo = 1
//            pl *= -1
//            continue
//        }
//
//    }
//}
//print("\(ja)/\(mo)")

//2869

////
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//var A = input[0]
//var B = input[1]
//var V = input[2]
//
//
//var vb = V - B // 총 올라가야하는 거리 because 정상에서는 안미끄러지기 때문
//var ab = A - B //
//
//var sum = vb / ab
//var sumd = vb % ab
//
//if sumd != 0 {
//   sum = sum + 1
//}
//print(sum)

//10250
//let input1 = Int(readLine()!)!
//
//for i in 1...input1 {
//    var Y:Int = 0
//    var X:Int = 1
//    let input2 = readLine()!.split(separator: " ").map{Int($0)}
//    var one = input2[0]!
//    var two = input2[1]!
//    var three = input2[2]!
//
//    for i in 1...three {
//        Y = Y + 1
//        if Y == one + 1 {
//            Y = 1
//            X = X + 1
//        }
//    }
//    if X < 10 {
//        print("\(Y)0\(X)")
//    }else{
//    print("\(Y)\(X)")
//}
//
//}

//1,2,3,4,5,6,7,8,9,10,11,12,13,14
//2775

var apt:[[Int]]  = [[1,2,3,4,5,6,7,8,9,10,11,12,13,14],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
// var apt:[[Int]]  = Array(repeating:Array(repeating: 1, count: 15), count: 15)

for i in 0...13{ //층
    for j in 0...13 { //호수
        var sum = 0
        for k in 0...j {
            sum = sum + apt[i][k]
//            print(k)
        }

        apt[i+1].append(sum)
    }
//    print(apt[i])
}

let input = Int(readLine()!)!
for i in 1...input {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    print(apt[k][n-1])
}









