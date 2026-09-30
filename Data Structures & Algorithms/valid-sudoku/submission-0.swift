class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rowSet = Array(repeating: Set<Character>(), count: 9)
        var colSet = Array(repeating: Set<Character>(), count: 9)
        var boxSet = Array(repeating: Set<Character>(), count: 9)
        
        for row in 0..<9 {
            for col in 0..<9 {
                let currentChar = board[row][col]
                
                if currentChar == "." {continue}
                
                let boxIndex = (row/3) * 3 + (col/3)
                
                if rowSet[row].contains(currentChar) ||
                    colSet[col].contains(currentChar) ||
                    boxSet[boxIndex].contains(currentChar) {
                    return false
                }
                
                rowSet[row].insert(currentChar)
                colSet[col].insert(currentChar)
                boxSet[boxIndex].insert(currentChar)
            }
        }
        
        return true
    }
}
