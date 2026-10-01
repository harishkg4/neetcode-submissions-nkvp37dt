class Solution {
    func isPalindrome(_ s: String) -> Bool {
         if s.count <= 1 {
            return true
        }
        
        var filteredString = s.filter{$0.isLetter || $0.isWhitespace || $0.isNumber}
        var removeWhiteSpace = filteredString.filter{!$0.isWhitespace}
        var reverseStrig = String(removeWhiteSpace.reversed())
        
        return removeWhiteSpace.lowercased() == reverseStrig.lowercased()
    }
}
