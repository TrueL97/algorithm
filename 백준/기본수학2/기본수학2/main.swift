//
//  main.swift
//  기본수학2
//
//  Created by 이윤식 on 2021/12/22.
//

import Foundation

//1978

//var sosu:Set<Int> = []
//
//for i in 1...1000{
//    sosu.insert(i)
//}
//
//var number = 2
//var count = 2
//while true {
//    var one = number * count
//    sosu.remove(one)
//
//    count = count + 1
//
//    if one > 1000 {
//        number = number + 1
//        count = 2
//    }
//    if number > 500 {
//        break
//    }
//}
//sosu.remove(1)
////print(sosu)
//
//let input = Int(readLine()!)!
//let arr = readLine()!.split(separator: " ").map{ Int($0)!}
//var result = 0
//
//    for i in 0...arr.count - 1{
//    if sosu.contains(arr[i]){
//        result = result + 1
//    }
//}
//
//print(result)
//*****************************************************************
//let input = Int(readLine()!)!
//let arr = readLine()!.split(separator: " ").map{ Int($0)!}
//var result = 0
//
//    for i in arr {
//        var tr = false
//        if i == 1 {
//            continue
//        }
//        if i == 2 {
//            result = result + 1
//            continue
//        }
//        for j in 2...i-1 {
//            if i % j == 0 {
//                tr = true
//            }
//        }
//        if tr == false {
//            result = result + 1
//        }
//
//
//}
//
//print(result)

//2581
//let input1 = Int(readLine()!)!
//let input2 = Int(readLine()!)!
//
//var arr:[Int] = []
//
//for i in input1...input2 {
//    var a = false
//    if i == 1 {
//        continue
//    }
//
////    if i == 2 {
////        arr.append(2)
////        continue
////    }
//    for j in 2..<i {
//        if i % j == 0 {
//            a = true
//            break
//        }
//    }
////        print(i, a)
//    if a == false {
//        arr.append(i)
//
//    }
//
//}
//
//if arr.count == 0 {
//    print("-1")
//}else {
//    var sum = arr.reduce(0) {$0 + $1}
////    print(arr)
//    print(sum)
//    print(arr.first!)
//}

//11653
var result = Int(readLine()!)!

var i = 2
while true {
    if result == 1 {
        break
    }

    if result % i != 0 {
        i = i + 1
    }else {
        //i로 나눠질때
        print(i)
        result = result / i
        if result == 1 {
            break
        }
    }

}
//---------------------------
//var N = Int(String(readLine()!))!
//
//var result = ""
//var i = 2
//var stop = 1
//mmm()
//
//func mmm() {
//    if N == 1 {
//        return
//    }else if N == 2 {
//        print("2")
//        return
//    }
//    while N != 1 {
//
//            if N % i == 0 {
//                recursiveN()
//            }else {
//                i = i + 1
//            }
//
//    }
//    print("\(result)")
//}
//
//func recursiveN () {
//    N = N / i
//    result += "\(i)\n"
//
//
//}


