import UIKit
import Foundation





func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var ba:[Int] = []
    var board = board
    var moves = moves
    var count = 0
    for i in 1...moves.count {
        let move = moves[i - 1]
        for j in 0...board.count - 1{
            if board[j][move - 1] != 0 {
                if ba.first == nil {
                    
                    ba.append(board[j][move - 1])
                }else if ba.first != nil && ba.last == board[j][move - 1] {
                    count = count + 2
                    ba.removeLast()
                }else {
                    ba.append(board[j][move - 1])

                }
                
               board[j][move - 1] = 0
                break
            }
            
        }
    }
    print(ba)
    print(count)

    
    return count
}



let a = solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4])

print(a)
