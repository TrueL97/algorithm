//
//  main.swift
//  문자열
//
//  Created by 이윤식 on 2021/12/22.
//
//
//
//

import Foundation

//11654
//print(Character(readLine()!).asciiValue!)

//11720
//let input = readLine()!
//let input1 = readLine()!
//var sum = 0
//for i in input1{
//    sum = sum + Int(String(i))!
//}
//
//print(sum)

//10809
//let s = Array(readLine()!)
//for i in Character("a").asciiValue!...Character("z").asciiValue! {
//     var char = Character(UnicodeScalar(i))
//    if s.contains(char){
//        print("\(s.index(of: char)!)",terminator: " ")
//    }else{
//    print("-1", terminator: " ")
//    }
//}

//2675
//let input = Int(readLine()!)!
//for i in 1...input {
//    var input1 = readLine()!.split(separator: " ")
//    var repeatt = Int(String(input1[0]))!
//    var str = Array(input1[1])
//    for i in 0...str.count-1  {
//        for j in 0...repeatt-1{
//            print(str[i], terminator: "")
//        }
//
//    }
//    print("")
//}

//1157
//var input = readLine()!
//input = input.lowercased()
//var arr:[Int] = []
//for i in 0..<26 {
//    arr.append(0)
//}
//for i in input {
//    let char = i
//    for j in 0..<26 {
//        if char.asciiValue! == 97 + j{
//            arr[j] += 1
//        }
//    }
//}
//
//var same = false
//for i in 0..<26 {
//    var a = 0
//
//    for j in 0..<26{
//        if arr[i] > arr[j] {
//            a = a + 1
//        }
//    }
//    if a == 25 {
//        print(UnicodeScalar(i+65)!)
//        same  = true
//    }
//}
//if !same {
//    print("?")
//}

//1152
//let input = readLine()!.split(separator: " ")
//print(input.count)

//2908
//let input = readLine()!.split(separator: " ")
//var c = Int(String(input[0].reversed()))!
//var d = Int(String(input[1].reversed()))!
//
//if c > d {
//    print(c)
//}else{
//    print(d)
//}

//5622
//let input = readLine()!.lowercased()
//var sum = 0
//
//var number:Dictionary<String,Int> = ["a":2,"b":2,"c":2,"d":3,"e":3,"f":3,"g":4,"h":4,"i":4,"j":5,"k":5,"l":5,"m":6,"n":6,"o":6,"p":7,"q":7,"r":7,"s":7,"t":8,"u":8,"v":8,"w":9,"x":9,"y":9,"z":9]
//
//for i in input{
//    sum = sum + number["\(i)"]! + 1
//}
//print(sum)

//2941
//var input = readLine()!
//var count = input.count
//
//
//var arr = ["c=","c-","dz=","d-","lj","nj","s=","z="]
//
//for i in 0...arr.count-1 {
//    input = input.replacingOccurrences(of: arr[i] , with: "1")
//}
//print(input.count)

//1316
//let input = Int(readLine()!)!
//var count = 0
//for i in 1...input {
//    var input1 = readLine()!
//    var arr:[Character] = []
//    for j in input1 {
//        if !arr.contains(j) {
//            arr.append(j)
//        }else if arr.last != j {
//            break
//        }else {
//            arr.append(j)
//        }
//        if input1.count == arr.count {
//            count += 1
//        }
//    }
//
//}
//print(count)
