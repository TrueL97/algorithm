import UIKit

func solution(_ record:[String]) -> [String] {
    
    var record = record
    var arr:[[String]] = Array(repeating: Array(repeating: "", count:3), count: record.count)
   
    for i in 0...record.count - 1{
        var sp = record[i].split(separator: " ")
        for j in 0...sp.count - 1{
            arr[i][j] = arr[i][j] + String(sp[j])
        }
    }

    
    //딕셔너리로 마지막 id에 대한 이름을 넣기
    var dic:[String:String] = [:]
    
    for i in 0...arr.count - 1 {
        //Leave일때 "" 이기 때문에 [][2]를 다지워버림 그래서 if 문 써줘야함
        if arr[i][2] != ""{
        dic[arr[i][1]] = arr[i][2]
        }
    }
    print(dic)
    
    for i in 0...arr.count - 1{
        arr[i][2] = dic[arr[i][1]]!
    }

    var result:[String] = []
    for i in 0...arr.count - 1 {
        var str:String = ""
        
        if arr[i][0] == "Enter" {
            str = str + "님이 들어왔습니다."
            str = arr[i][2] + str
            result.append(str)
        }
        if arr[i][0] == "Leave" {
            str = str + "님이 나갔습니다."
            str = arr[i][2] + str
            result.append(str)
        }
    }
    
    
    return result
}

let a = solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan","Leave uid1234"])
print(a)
