class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0
        var right = 1
        var maxProfit = 0

        while right < prices.count {
            if prices[right] > prices[left] {
                var profit = prices[right] - prices[left]
                maxProfit = max(maxProfit, profit)
            } else {
                left = right
            }

            right += 1

        }

        return maxProfit
    }
}
