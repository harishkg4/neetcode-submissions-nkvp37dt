class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict  = [Int: Int]()

        for num in nums {
            dict[num, default:0] += 1
        }

        var sortedkeys = dict.keys.sorted{
            dict[$0]! > dict[$1]!
        }

        return Array(sortedkeys.prefix(k))
    }
}
