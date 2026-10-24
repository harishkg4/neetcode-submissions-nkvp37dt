class Solution {
    func trap(_ height: [Int]) -> Int {
        
        var left = 0
        var right = height.count - 1
        var maxLeft = 0
        var maxRight = 0
        var totalTrap = 0

        while left < right {
            if height[left] < height[right] {
                if height[left] >= maxLeft {      
                    maxLeft = height[left]
                } else {
                    totalTrap += maxLeft - height[left] 
                }
                left += 1
            } else {
                if height[right] >= maxRight {
                    maxRight = height[right]
                } else {
                    totalTrap += maxRight - height[right]
                }
                right -= 1
            }
        }
        
        return totalTrap
    }
}
