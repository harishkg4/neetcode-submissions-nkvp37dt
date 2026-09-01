class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dict = [String: [String]]()
    
    for i in 0..<strs.count {
        let sortedStr = String(strs[i].sorted())
        if var subArray = dict[sortedStr] {
            subArray.append(strs[i])
            dict[sortedStr] = subArray
        } else {
            dict[sortedStr] = [strs[i]]
        }
    }
    var finalItems = [[String]]()
    for (index, element) in dict.enumerated() {
        finalItems.append(element.value)
    }
    
    return finalItems
    }
}
