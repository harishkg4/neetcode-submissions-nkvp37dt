class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var chars = Array<Character>(s)
        var dict = [Character: Int]()
        var maxFrequencyCharCount = 0
        var left = 0
        var right = 0
        var maxWindowLength = 0

        for right in 0..<chars.count {
            dict[chars[right], default: 0] += 1
            maxFrequencyCharCount = max(maxFrequencyCharCount, dict[chars[right]]!) 
            
            var windowSize = (right - left + 1) - maxFrequencyCharCount

            if windowSize > k {
                dict[chars[left]]! -= 1
                left += 1
            }
            
            maxWindowLength = max(maxWindowLength, (right - left + 1))
        }

        return maxWindowLength

    }
    
}
