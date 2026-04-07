import Foundation

public struct LocaleID: RawRepresentable, Hashable, Codable, Sendable, ExpressibleByStringLiteral {
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = Self.normalize(rawValue)
    }

    public init(_ rawValue: String) {
        self.init(rawValue: rawValue)
    }

    public init(stringLiteral value: StringLiteralType) {
        self.init(rawValue: value)
    }

    public static let english: LocaleID = "en"

    public var languageCode: String {
        rawValue.split(separator: "-", maxSplits: 1, omittingEmptySubsequences: true)
            .first
            .map(String.init) ?? rawValue
    }

    public var languageLocale: LocaleID {
        .init(languageCode)
    }

    public var locale: Locale {
        Locale(identifier: rawValue)
    }

    private static func normalize(_ rawValue: String) -> String {
        let trimmed = rawValue
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "_", with: "-")

        guard trimmed.isEmpty == false else {
            return Self.english.rawValue
        }

        let parts = trimmed.split(separator: "-", omittingEmptySubsequences: true)
        guard let language = parts.first else {
            return Self.english.rawValue
        }

        var normalized = [String(language).lowercased()]

        if parts.count > 1 {
            normalized.append(
                contentsOf: parts.dropFirst().map { component in
                    let value = String(component)
                    if value.count == 2 {
                        return value.uppercased()
                    }
                    return value.lowercased()
                }
            )
        }

        return normalized.joined(separator: "-")
    }
}
