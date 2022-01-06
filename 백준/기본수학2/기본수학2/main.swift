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
//print(sosu)
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
//var result = Int(readLine()!)!
//
//var i = 2
//while true {
//    if result == 1 {
//        break
//    }
//
//    if result % i != 0 {
//        i = i + 1
//    }else {
//        //i로 나눠질때
//        print(i)
//        result = result / i
//        if result == 1 {
//            break
//        }
//    }
//
//}
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

//1929
//var sosu:Set<Int> = []
//
//for i in 2...1000000{
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
//    if one > 1000000 {
//        number = number + 1
//        count = 2
//    }
//    if number > 500000 {
//        break
//    }
//}
//
//let input = readLine()!.split(separator: " ").map{ Int($0)!}
//
//var arr = [Int]()
//for i in input[0]...input[1] {
//    if sosu.contains(i){
//        arr.append(i)
//    }
//}
//
//for i in arr {
//    print(String(i))
//}

//4948
//var sosu:Set<Int> = []
//
//for i in 2...246912{
//    sosu.insert(i)
//}
//
//var number = 2
//var count = 2
//while true {
//    let one = number * count
//    sosu.remove(one)
//
//    count = count + 1
//
//    if one > 246912 {
//        number = number + 1
//        count = 2
//    }
//    if number > 123456 {
//        break
//    }
//}
//
//while true{
//
//let input = Int(readLine()!)!
//    if input == 0 {
//        break
//    }
//var arr = [Int]()
//for i in input + 1...input * 2 {
//    if sosu.contains(i){
//        arr.append(i)
//    }
//}
//
//    print(arr.count)
//
//}

//9020
var sosu:Set<Int> = []
for i in 2...10000{
sosu.insert(i)
}
var number = 2
var count = 2
while true {
let one = number * count
sosu.remove(one)
count = count + 1

    if one > 10000 {
number = number + 1
count = 2
}
if number > 5000 {
break
}
}


let input = Int(readLine()!)!
for _ in 1...input{
    let input2 = Int(readLine()!)!
    var arr = [Int]()
    var arr2 = [String]()
    
    for i in 2...input2 {
        if sosu.contains(i) {
            arr.append(i)
        }
    }
    
    if arr.contains(input2 / 2){
        print("\(input2 / 2) \(input2 / 2)")
    }else {
        for j in 0...arr.count-1 {
            for k in j...arr.count - 1 {
                if arr[j] + arr[k] == input2 {
                    arr2.append("\(arr[j]) \(arr[k])")
                }
            }
        }
        print(arr2.last!)
    }

}
