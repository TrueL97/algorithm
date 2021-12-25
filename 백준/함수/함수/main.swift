//
//  main.swift
//  함수
//
//  Created by 이윤식 on 2021/12/22.
//

import Foundation

//4673
var arr:[Int] = []
var se:Set<Int> = []
for  i in 1...10000 {
//    arr.append(d((i)))
    se.insert(d(i))
}
for j in 1...10000 {
    if !se.contains(j) {
        print(j)
    }
}

func d(_ n:Int) -> Int {
    var sum = n
    var number = n
    while n != 0 {
        sum = sum + number%10
        number = number / 10

        if number == 0 {
            break
        }
    }
    return sum
}
//---------------------------
//var s: Set<Int> = []
//for i in 1...10000
//{ s.insert(d(i)) }
//for j in 1...10000
//{ if !s.contains(j) { print(j) } }
//func d(_ n:Int) -> Int
//{ var sum = n, now = n
//    while now != 0 {
//        sum += now%10
//        now /= 10
//
//    }
//    return sum }

//1065

//let input = Int(readLine()!)!
//var count = 0
//for i in 1...input {
//    if i < 100 {
//        count += 1
//    }else {
//        var a = i / 100
//        var b = (i % 100) / 10
//        var c = i % 10
//        if a-b == b-c  {
//            count += 1
//
//        }
//    }
//}
//print(count)
//---------------------------
//let input = readLine()!
//let inputint = Int(input)!
//
//var count = 0
//for i in 1...inputint {
//    if i < 100 {
//        count += 1
//    }else {
//        var iarr = String(i)
//        var inr = iarr.map{Int(String($0))!}
//        var s: Set<Int> = []
//        for j in 1...inr.count-1{
//            var a = inr[j-1] - inr[j]
//            s.insert(a)
//        }
//        if s.count == 1 {
//            count += 1
//        }
//        }
//    }
//print(count)








