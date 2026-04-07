class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.isEmpty || t.isEmpty || s.count != t.count {
            return false
        }

        let s1 = s.sorted()
        let t1 = t.sorted()

        return (s1 == t1)

    }
}
