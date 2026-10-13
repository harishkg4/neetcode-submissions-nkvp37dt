class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        //lets first sort, this can have duplicates
        let sorted = nums.sorted()
        
        /*
         [-4,  -1,  -1,  0,  1,  2]
          ↑     ↑                ↑
         a=-4  left             right
         */
        var finalIndexes = Array<Array<Int>>()
        for index in 0..<sorted.count - 1 {
            if index > 0 && sorted[index] == sorted[index - 1] {
                continue
            }
            var left = index + 1
            var right = sorted.count - 1
            
            while left < right {
                let sum = sorted[index] + sorted[left] + sorted[right]
                
                if sum > 0 {
                    right -= 1
                } else if sum < 0 {
                    left += 1
                } else {
                    finalIndexes.append([sorted[index], sorted[left], sorted[right]])
                    left += 1
                    right -= 1
                    while left < right && sorted[left] == sorted[left - 1] {
                        left += 1
                    }
                    while left < right && sorted[right] == sorted[right + 1] {
                        right -= 1
                    }
                }
            }
        }
        
        return finalIndexes
    }
}