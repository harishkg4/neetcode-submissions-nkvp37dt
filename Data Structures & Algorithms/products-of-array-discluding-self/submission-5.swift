class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let count = nums.count
         var prefixArray = Array(repeating: 1, count: nums.count)

         var sum = 1
         for index in 0...count - 1 {
            prefixArray[index] = sum
            sum *= nums[index]
         }

        sum = 1
        var postfixArray = Array(repeating: 1, count: nums.count)
         for index in stride(from: count - 1, through: 0, by: -1) {
            postfixArray[index] = sum
            sum *= nums[index]
         }

         var finalArray = Array(repeating: 1, count: count)
         for index in 0...count - 1 {
            finalArray[index] = prefixArray[index] * postfixArray[index]
         }

        return finalArray
        
    }
}
