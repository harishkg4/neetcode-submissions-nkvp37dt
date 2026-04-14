class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
if nums.isEmpty {
        return []
    }
    
    var prodcutArray = [Int](repeating: 0, count: nums.count)
    
    for (index, value) in nums.enumerated() {
        
        var sumExceptCurrentIndex = 1
        for j in 0..<nums.count {
            if index != j {
                sumExceptCurrentIndex *= nums[j]
            }
        }
        prodcutArray[index] = sumExceptCurrentIndex
    }
    
    return prodcutArray
    }
}
