class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var left = 0
        var right = heights.count - 1
        var maxArea = 0
        
        while left < right {
            let area = (right - left) * (min(heights[left], heights[right]))
            maxArea = max(maxArea, area)
            
            if heights[left] > heights[right] {
                right -= 1
            } else {
                left += 1
            }
            
        }
        
        return maxArea

    }
}
