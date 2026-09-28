class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        guard let nums = nums else {
            return true
        }
        var setList: Set<Int> = Set<Int>()

        for num in nums {
            if setList.contains(num) {
                return false
            }
            setList.add(num)
        }

        return true
    }
}
