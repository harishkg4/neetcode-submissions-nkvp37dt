class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        if s1.count > s2.count {
            return false
        }

        var s1Dict = [Character: Int]()
        let s2Chars = Array<Character>(s2)
        let windowSize = s1.count
        var left = 0
        var right = 0

        for char in s1 {
            s1Dict[char, default:0] += 1
        }
        var tempDict = s1Dict
        while right < s2Chars.count {
            let currentChar = s2Chars[right]
             let currentCharCount = tempDict[currentChar] ?? 0
             if currentCharCount > 0 {
                if currentCharCount == 1 {
                    tempDict[currentChar] = nil
                } else {
                    tempDict[currentChar] =  currentCharCount - 1
                }
                right += 1
             } else {
                left += 1
                right = left
                tempDict = s1Dict
             }

             if tempDict.count == 0 {
                return true
             }
        }
        return false
    }
}
