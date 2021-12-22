//
//  main.swift
//  1차원배열
//
//  Created by 이윤식 on 2021/12/18.
//

import Foundation
//
//10818
//var input = readLine()!
//var input1 = readLine()!.split(separator: " ").map{ Int(String($0))!}
//
//print(input1.min()!, input1.max()!)

//2562
//var arr:[Int] = []
//for i in 0...8 {
//    arr.append(Int(readLine()!)!)
//}
//for i in 1...9 {
//    if arr[i-1] == arr.max(){
//        print(arr.max()!)
//        print(i)
//    }
//}

//2577
//var input1 = Int(readLine()!)!
//var input2 = Int(readLine()!)!
//var input3 = Int(readLine()!)!
//
//var sum = String(input1 * input2 * input3)
//var arr:[Character] = []
//
//for i in sum { //String에서 한단어씩 빼먹는법
//    arr.append(i)
////    print(arr)
//}
//
//for i in 0...9{
//    var a = arr.filter{Int(String($0))! == i}
//    var num = a.count
//    print(num)
//}

//3052
//var arr:[Int] = []
//var a = 10
//for i in 0...9 {
//    arr.append(Int(readLine()!)! % 42)
//}
//for i in 0...8{
//    for j in i+1...9{
//        if arr[i] == arr[j]{
//            a = a - 1
//            break
//        }
//    }
//}
//print(a)
//---------------------------
//var set = Set<Int>()
//for _ in 0...9 {
//    let input = Int(readLine()!)!
//    set.insert(input % 42) // set는 중복이 있으면 안되기 때문에 다른것만 들어가게 된다
//}
//
//print(set.count)

//1546
//var input = Int(readLine()!)!
//var arr = readLine()!.split(separator: " ").map{Float(String($0))!}
//var max = arr.max()!
//
//var sum:Float = 0
//for i in 0..<arr.count {
//    sum = sum + arr[i]/max*100
////    print(sum)
//}
//print(sum/Float(arr.count))

//8958
//var input = Int(readLine()!)!
//for i in 1...input {
//    var input1 = readLine()!
//    var arr:[Character] = []
//    var right = 0
//    var sum = 0
//    for i in input1 {
//        arr.append(i)
//    }
//    for i in 0...arr.count - 1{
//        if arr[i] == "O" {
//            right = right + 1
//            sum = sum + right
//        }else {
//            right = 0
//        }
//    }
//    print(sum)
//}
//
//4344
let input = Int(readLine()!)!

for i in 1...input {
    var line = readLine()!.split(separator: " ").map{Float($0)!}
    var std = line.removeFirst()
    var average = line.reduce(0){$0 + $1} / std
    var hiav = line.filter{ $0>average }.count
    var result = round(1000 * Float(hiav) / std * 100) / 1000
    var result3f = String(format: "%.3f", result)
    print("\(result3f)%")
}
