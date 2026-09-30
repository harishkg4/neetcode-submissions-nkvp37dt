class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
 var sortedArray = Set(nums).sorted()
        
        var previous = 0
        var current = 0
    
        for (index, value) in sortedArray.enumerated() {
            if index == 0 {
                previous = 1
                current = 1
            } else if (sortedArray[index-1] + 1) == value {
                current += 1
            } else if previous <= current {
                previous = current
                current = 1
            }
        }

        return max(previous, current) 
    }
}
