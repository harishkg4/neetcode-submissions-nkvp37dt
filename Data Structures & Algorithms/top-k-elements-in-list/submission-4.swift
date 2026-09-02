class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dict =  [Int: Int]()

        for num in nums {
            dict[num, default: 0] += 1
        }
        
        let sortedTuples = dict.sorted {$0.value > $1.value} // this returns sorted array of tuples
        
        let convertedArray = sortedTuples.map{$0.key}
        let slicedArray = convertedArray.prefix(k)
        return Array(slicedArray)
    }
}
