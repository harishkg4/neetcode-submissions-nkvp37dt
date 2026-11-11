class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s1.count <= s2.count  else {
            return false
        }

        //comparing 2 dict are same approach
        var s1Array = Array<Character>(s1)
        var s2Array = Array<Character>(s2)
        var k = s1Array.count

        var windowDict = [Character: Int]()
        var s1Dict = [Character: Int]()
        
        for char in s1Array {
            s1Dict[char, default: 0] += 1
        }

        for index in 0..<s2Array.count {
            windowDict[s2Array[index], default:0] += 1

            if index >= k {
                var leftChar = s2Array[index - k]
                windowDict[leftChar]! -= 1
                if windowDict[leftChar]! == 0 {
                    windowDict[leftChar] = nil
                } 
            }

            if windowDict == s1Dict {
                return true
            }
        }

        return false
    }
}
