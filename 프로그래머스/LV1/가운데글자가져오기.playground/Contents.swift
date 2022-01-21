import UIKit





func solution(_ s:String) -> String {

    var count = 0
    var str:[String] = []
    for i in s {
        count = count + 1
        str.append(String(i))
    }
//    print(count)
    
    var result = ""
    if count % 2 == 0 {
        result = result + str[count / 2 - 1] + str[count / 2]
    }else {
        result = result + str[count / 2]
    }



    return result
}

let a = solution("qwer")
print(a)
