class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
         if nums.count <= 1  {
            return false
        }
        
        var numSet: Set<Int> = Set<Int>()
        
        for num in nums {
            if numSet.contains(num) { return true}
            numSet.insert(num)
        }
        
        return false
    }
}
