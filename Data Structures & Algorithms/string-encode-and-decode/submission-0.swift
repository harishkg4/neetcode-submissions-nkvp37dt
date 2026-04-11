class Solution {

    func encode(_ strs: [String]) -> String {
    if strs.isEmpty {
        return ""
    }
    
    var encodedString: String = ""
    for str in strs {
        encodedString.append("\(str.count)#\(str)")
    }
    
    return encodedString
    }

    func decode(_ str: String) -> [String] {
if str.isEmpty {
        return []
    }
    
    var decodedString = [String]()
    
    var index = str.startIndex
    
    while index < str.endIndex {
        
        guard let sharpIndex = str[index...].firstIndex(of: "#") else {break}
        let numberAsString = str[index..<sharpIndex]
        let actualNumber = Int(numberAsString) ?? 0
        
        let sharpNextIndex = str.index(after: sharpIndex)
        let wordEndingIndex = str.index(sharpNextIndex, offsetBy: actualNumber)
        let word = String(str[sharpNextIndex..<wordEndingIndex])
        
        decodedString.append(word)
        
        index = wordEndingIndex
    }
    
   return decodedString
    }
}
