public extension Lang {
    static func parse(string: String?) -> [Lang] {

        guard let regex = try? Regex("[a-z]{2}") else {
            return [.base]
        }

        var result: [Lang] = []
        
        string?
            .lowercased()
            .split(separator: ",")
            .forEach { part in
                if let match = part.firstMatch(of: regex)?.0.prefix(2),
                   let lang = Lang(rawValue: String(match)) {
                    result.append(lang)
                }
            }
        
        if result.isEmpty {
            result.append(.base)
        }
        
        return result
    }
}
