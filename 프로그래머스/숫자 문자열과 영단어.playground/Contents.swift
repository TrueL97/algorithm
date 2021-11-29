import UIKit

import Foundation

let number:Dictionary<String, String> = ["zero" : "0", "one" : "1", "two" : "2", "three" : "3", "four" : "4", "five" : "5", "six" : "6", "seven" : "7", "eight" : "8", "nine" : "9"]
func solution(_ s:String) -> Int {
    
    var answer:String = ""
        var word:String = ""
    for index in s.indices{ //indices 쓰면 s.[0] = "o", 안쓰면 index = "o"

            if s[index] >= "0" && s[index] <= "9"{
                answer.append(s[index])
            }else{
                word.append(s[index])
//               print(word)
                if number[word] != nil{
//                    print(number[word])//Dictionary 두번째 인자가 Optional이다
                    answer.append(number[word]!)
                    word = ""
                }
            }
    }
  
    return Int(answer)! //언래핑 하는이유: answer안에 숫자가 아닌것을 포함할 수 있기 때문에 언래핑을 사용하여 확인한다
}

var a = solution("one4seveneight")
print(a)
