import UIKit

func solution(_ new_id:String) -> String {
    var myID: String = new_id

    //1차 소문자로 치환
    myID = myID.lowercased()

    //2차 소문자 숫자 - _ . 을 제외한 문자 제거
 //   var newID: String = ""
//    for i in myID { //isLetter: 이문자가 문자인지 여부를 나타내는 Bool값
//        if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
//            newID.append(i)
//            print(i)
//        }
//    }
    let specialCharaters = ["-","_","."]
    var newID = myID.filter{$0.isLetter || $0.isNumber || specialCharaters.contains(String($0))}
    print("cc" + newID)
    

    //3차 .이 두번이상 연속된 부분을 하나의 마침표로 치환
    while newID.contains("..") {
        newID = newID.replacingOccurrences(of: "..", with: ".")
    }

    //4차 .이 처음이나 끝에 위치할때 제거
    while newID.hasPrefix(".") {
        newID.removeFirst()
    }

    while newID.hasSuffix(".") {
        newID.removeLast()
    }

    //5차 빈 문자열일때 a를 대입
    if newID == "" {
        newID = "a"
    }

    //6차 길이 16이상이면 15다음문제 제거 만약 제거후 .이 끝에 위치하면 마침표 제거
    if newID.count >= 16 {
        let index = newID.index(newID.startIndex, offsetBy: 15)
        newID = String(newID[newID.startIndex..<index])
        if newID.hasSuffix(".") {
            newID.removeLast()
        }
    }

    //7차 길이가 2이하면 길이가 3이될때까지 끝문자 반복
    if newID.count <= 2 {
        while newID.count != 3 {
            newID = newID + String(newID.last!)
        }
    }

    return newID
}
var a = solution("...!@BaT#*.....y.abcdefghijklm")
print(a)
