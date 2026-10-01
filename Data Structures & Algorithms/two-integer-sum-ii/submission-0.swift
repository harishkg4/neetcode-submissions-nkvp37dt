class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
var left = 0
        var right = numbers.count - 1
        
        repeat {
            let sum = numbers[left] + numbers[right]
            if sum < target {
                left += 1
            } else if sum > target {
                right -= 1
            }
//            else {
//                return[left+1, right+1]
//            }
        } while (numbers[left] + numbers[right] != target)
        
        return[left+1, right+1]
    }
}
