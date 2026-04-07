import Foundation

public struct AcceptLanguageResolver: Sendable {
    public let availableLocales: Set<LocaleID>
    public let fallbackLocale: LocaleID

    public init(
        availableLocales: Set<LocaleID>,
        fallbackLocale: LocaleID = .english
    ) {
        self.availableLocales = availableLocales
        self.fallbackLocale = fallbackLocale
    }

    public func resolveLocale(
        from acceptLanguage: String?,
        preferred: LocaleID? = nil
    ) -> LocaleID {
        let candidates = ([preferred].compactMap { $0 } + acceptedLocales(from: acceptLanguage))
        for candidate in candidates {
            if let resolved = lookupChain(for: candidate).first {
                return resolved
            }
        }

        if availableLocales.contains(fallbackLocale) {
            return fallbackLocale
        }

        return .english
    }

    public func acceptedLocales(from acceptLanguage: String?) -> [LocaleID] {
        guard let acceptLanguage, acceptLanguage.isEmpty == false else {
            return []
        }

        let parsed = acceptLanguage
            .split(separator: ",")
            .enumerated()
            .compactMap { index, item -> (LocaleID, Double, Int)? in
                let parts = item.split(separator: ";", omittingEmptySubsequences: true)
                guard let rawLocale = parts.first?.trimmingCharacters(in: .whitespacesAndNewlines),
                      rawLocale.isEmpty == false,
                      rawLocale != "*" else {
                    return nil
                }

                let quality = parts.dropFirst().reduce(1.0) { result, attribute in
                    let trimmed = attribute.trimmingCharacters(in: .whitespacesAndNewlines)
                    guard trimmed.hasPrefix("q=") else {
                        return result
                    }

                    return Double(trimmed.dropFirst(2)) ?? result
                }

                return (LocaleID(rawLocale), quality, index)
            }
            .sorted { lhs, rhs in
                if lhs.1 == rhs.1 {
                    return lhs.2 < rhs.2
                }
                return lhs.1 > rhs.1
            }

        var result: [LocaleID] = []
        for item in parsed {
            if result.contains(item.0) == false {
                result.append(item.0)
            }
        }

        return result
    }

    public func lookupChain(for locale: LocaleID) -> [LocaleID] {
        var chain: [LocaleID] = []

        if availableLocales.contains(locale) {
            chain.append(locale)
        }

        let languageLocale = locale.languageLocale
        if availableLocales.contains(languageLocale), chain.contains(languageLocale) == false {
            chain.append(languageLocale)
        }

        if availableLocales.contains(fallbackLocale), chain.contains(fallbackLocale) == false {
            chain.append(fallbackLocale)
        }

        if availableLocales.contains(.english), chain.contains(.english) == false {
            chain.append(.english)
        }

        return chain
    }
}
