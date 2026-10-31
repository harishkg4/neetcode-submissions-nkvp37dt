class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var chars = Array(s)
        var charSet = Set<Character>()
        var left = 0
        var maxLength = 0

        for right in 0..<chars.count {

            while charSet.contains(chars[right]) {
                charSet.remove(chars[left])
                left += 1
            }

            charSet.insert(chars[right])
            maxLength = max(maxLength, right - left + 1)

        }       

        return maxLength
    }
}
