class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dict = [Int: Int]()
        
        for num in nums {
            dict[num, default: 0] += 1
        }
        
        let sortedKeys = dict.keys.sorted {
            dict[$0]! > dict[$1]!
        }
        
        return Array(sortedKeys.prefix(upTo: k))
    }
}
