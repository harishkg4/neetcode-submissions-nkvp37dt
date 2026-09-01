class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dict = [String: [String]]()
        
        for str in strs {
            let sortedStr = String(str.sorted())
            if var subArray = dict[sortedStr] {
                subArray.append(str)
                dict[sortedStr] = subArray
            } else {
                dict[sortedStr] = [str]
            }
            
        }
        
        var finalArray = [[String]]()
        for (index, items) in dict.enumerated() {
            finalArray.append(items.value)
        }
        
        return finalArray
    }
}
