import UIKit





func solution(_ a:Int, _ b:Int) -> String {
    
    let a = a
    let b = b
    
    //1월 1 일은 금요일
    
    var day = 0
    
    if a == 1 {
        day = 0
    }else if a == 2{
        day = 31
    }else if a == 3{
        day = 60
    }else if a == 4{
        day = 91
    }else if a == 5{
        day = 121
    }else if a == 6{
        day = 152
    }else if a == 7{
        day = 182
    }else if a == 8{
        day = 213
    }else if a == 9{
        day = 244
    }else if a == 10{
        day = 274
    }else if a == 11{
        day = 305
    }else if a == 12{
        day = 335
    }
    
    day = day + b
    
//    print(day % 7)
          
   let result = day % 7
    
    var today = "FRI"
    switch result {
    case 0:
        today = "THU"
    case 1:
        today = "FRI"
    case 2:
        today = "SAT"
    case 3:
        today = "SUN"
    case 4:
        today =  "MON"
    case 5:
        today = "TUE"
    case 6:
        today =  "WED"
    
    default:
        print("오류")
    }

    
    return today
}






let a = solution(5, 24)
print(a)
