class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for i in 0..<nums.count {
            let diff = target - nums[i]
            
            if let j = dict[diff] {
                return [j, i]
            }
            
            dict[nums[i]] = i
            print(dict)
            
        }
        
        return []
    }
}
