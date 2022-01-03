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


//2775

//var apt:[[Int]]  = [[1,2,3,4,5,6,7,8,9,10,11,12,13,14],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
//// var apt:[[Int]]  = Array(repeating:Array(repeating: 1, count: 15), count: 15)
//
//for i in 0...13{ //층
//    for j in 0...13 { //호수
//        var sum = 0
//        for k in 0...j {
//            sum = sum + apt[i][k]
////            print(k)
//        }
//
//        apt[i+1].append(sum)
//    }
////    print(apt[i])
//}
//
//let input = Int(readLine()!)!
//for i in 1...input {
//    let k = Int(readLine()!)!
//    let n = Int(readLine()!)!
//
//    print(apt[k][n-1])
//}

//2839
//let input = Int(readLine()!)!
//
//var X = 0
//var i = 1
//while i <  1666{
//    //최소수
//    if input % 5 == 0 {
//        print(input / 5)
//        break
//    }
//
//    //5, 3 합쳐서 3을 i에 곱해준 이유는 그래야 5로 나눠줘서 봉지 최소 개수가 되기 때문
//    //3으로만 나눠지면 input -3 * i 가 0이 딱 되면 그게 3의 봉지수
//    if (input - 3 * i) % 5  == 0 {
//        X = (input - 3 * i) / 5
//        print("\(i + X)")
//        break
//    }
//
//    //3으로도 안나눠지면 나눠지는게 없음
//    if (input - 3 * i) < 0 {
//        print(-1)
//        break
//    }
//    i = i + 1
//}
//
//
////if input % 5 == 0 {
////    print(input  / 5)
////}else if (input % 5) % 3 == 0 {
////    print(X + Y)
////}else if input % 3 == 0 {
////    print(input / 3)
////}else {
////    print("-1")
////}

//10757
//let input = readLine()!.split(separator: " ")
//
//var input1 = input[0]
//var input2 = input[1]
//var arr1:[Int] = []
//var arr2:[Int] = []
//var result:[Int] = []
//for i in input1.reversed() {
//    arr1.append(Int(String(i))!)
//}
//
//for i in input2.reversed() {
//    arr2.append(Int(String(i))!)
//}
//
//if input1.count > input2.count {
//    for i in 1...input1.count - input2.count{
//    arr2.append(0)
//    }
//    arr1.append(0)
//    arr2.append(0)
//}else if input2.count > input1.count {
//    for i in 1...input2.count - input1.count{
//    arr1.append(0)
//    }
//    arr1.append(0)
//    arr2.append(0)
//}else {
//    arr1.append(0)
//    arr2.append(0)
//}
//
//for i in 0...arr1.count - 1 {
//    if arr1[i] + arr2[i] > 9 {
//        arr1[i+1] += 1
//        var sum = arr1[i] + arr2[i] - 10
//        result.append(sum)
//
//    }else {
//        var sum = arr1[i] + arr2[i]
//        result.append(sum)
//    }
//}
//
//if result.last == 0 {
//    result.removeLast()
//}
//var res = result.reversed().reduce(""){ $0 + String($1) }
//
//print(res)

//1011
let input1 = Int(readLine()!)!
var k = 0
for i in 1...input1 {
    let input2 = readLine()!.split(separator: " ").map{ Int($0)!}
    var dis = input2[1] - input2[0]
    var sqrt = sqrt(Double(dis))
    var count = 0
    if Int(sqrt) < Int(ceil(sqrt)) {
        count = Int(sqrt * 2) //제곱근이 정수로 안나눠 떨어질때 6의 제곱근 * 2 = 4.8, 7의 제곱근 * 2 = 5.2
    }else {
        count = Int(sqrt * 2 ) - 1 //제곱근이 정수일때
    }
    print(count)
}





