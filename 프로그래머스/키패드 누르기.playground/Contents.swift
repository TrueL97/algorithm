import UIKit
import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    var leftHand = 10
    var rightHand = 12
    
    for i in numbers {
        var num = i
        if (i == 1 || i == 4 || i == 7 ){
            leftHand = i
            result += "L"
        }else if ( i == 3 || i == 6 || i == 9){
            rightHand = i
            result += "R"
        }else if (i == 2 || i == 5 || i == 8 || i == 0){
            if i == 0 {
                num = 11
            }
            var left = abs(((num - leftHand) / 3) + ((num - leftHand) % 3))
            var right = abs(((num - rightHand) / 3) + ((num - rightHand) % 3))
            
            if left < right{
                leftHand = num
                result += "L"
            }else if right < left {
                rightHand = num
                result += "R"
            }else {
                if hand == "right"{
                    rightHand = num
                    result += "R"
                    
                }
                if hand == "left"{
                    leftHand = num
                    result += "L"
                }
                
            }
            
        }
    }
    
    return result
}
var a = solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right")
print(a)

