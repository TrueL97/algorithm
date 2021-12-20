//
//  main.swift
//  while문
//
//  Created by 이윤식 on 2021/12/18.
//

import Foundation

//10952
//var a = 0
//while true {
//
//    var input1 = readLine()!
//    var arr = input1.split(separator: " ")
//    var a = Int(arr[0])!
//    var b = Int(arr[1])!
//    if a == 0 && b == 0 {
//        break
//    }
//    print(a+b)
//}

//10951
//while let input1 = readLine() {
//
//    var arr = input1.split(separator: " ")
//    var a = Int(arr[0])!
//    var b = Int(arr[1])!
//    print(a+b)
//}

//1110
var a = Int(readLine()!)!
var i = 1
if a < 10 {
    a = a * 10
}
var c = a
while true {
var ten = c / 10
var one = c % 10

var sum = ten + one
var sumright = sum % 10
var sum2 = one*10 + sumright
    if a == sum2 {
        break
    }
    print(sum2)
    c = sum2
    i = i + 1
}
print(i)
