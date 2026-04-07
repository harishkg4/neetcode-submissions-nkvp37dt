class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        if nums.isEmpty || nums.count < 2 {
            return false
        }
        
        var setNums: Set<Int> = Set<Int>()
        
        for num in nums {
            if setNums.contains(num) {
                return true
            }
            setNums.insert(num)
        }
        return false
    }
}
