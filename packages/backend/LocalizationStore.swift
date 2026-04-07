import Foundation

public actor LocalizationStore {
    private let loader: any LocalizationResourceLoading
    private var cache: [LocaleID: [String: String]] = [:]
    private var inFlight: [LocaleID: Task<[String: String], Error>] = [:]

    public nonisolated let availableLocales: Set<LocaleID>

    public init(
        loader: any LocalizationResourceLoading,
        eagerLocales: [LocaleID] = [.english]
    ) async throws {
        self.loader = loader
        self.availableLocales = try loader.availableLocales()

        for locale in eagerLocales {
            _ = try await localizedStrings(for: locale)
        }
    }

    public func localizedValue(
        for key: LocalizationKey,
        locale: LocaleID
    ) async throws -> String? {
        let strings = try await localizedStrings(for: locale)
        return strings[key.rawValue]
    }

    private func localizedStrings(
        for locale: LocaleID
    ) async throws -> [String: String] {
        if let cached = cache[locale] {
            return cached
        }

        if let task = inFlight[locale] {
            return try await task.value
        }

        let task = Task { try loader.load(locale: locale) }
        inFlight[locale] = task

        do {
            let strings = try await task.value
            cache[locale] = strings
            inFlight[locale] = nil
            return strings
        } catch {
            inFlight[locale] = nil
            throw error
        }
    }
}
