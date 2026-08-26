class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        
        for (index, value) in nums.enumerated() {
            let difference = target - value
            if dict[difference] != nil {
                if let firstIndex = dict[difference] {
                    return [firstIndex, index]
                }
            } else {
                
                dict[value] = index 
            }
            
        }
        return []
    }
}
