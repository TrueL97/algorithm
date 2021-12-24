//
//  main.swift
//  함수
//
//  Created by 이윤식 on 2021/12/22.
//

import Foundation

//4673

var arr:[Int] = []


for  i in 1...10000 {
    arr.append(d((i)))

}
for j in 1...10000 {
    if !arr.contains(j) {
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
//    print(sum)
    return sum
}


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
