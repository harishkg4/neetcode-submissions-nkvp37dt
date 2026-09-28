class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var sum = 1
        var nonZeroSum = 0
        for num in nums {
            sum *= num
            if num != 0 {
                if nonZeroSum == 0 { nonZeroSum = 1}
                nonZeroSum *= num
            }
        }

        var finalArray = [Int]()

        for num in nums {
            if num == 0 {
                finalArray.append(nonZeroSum)
            } else {
                finalArray.append(sum/num)
            }
        }
        return finalArray
    }


}
