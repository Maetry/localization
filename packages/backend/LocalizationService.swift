import Foundation

public protocol LocalizationServiceProtocol: Sendable {
    func resolveLocale(from acceptLanguage: String?, preferred: LocaleID?) -> LocaleID
    func localized(_ key: LocalizationKey, locale: LocaleID) async -> String?
    func localizedOrFallback(_ key: LocalizationKey, locale: LocaleID, fallback: String) async -> String
}

public actor LocalizationService: LocalizationServiceProtocol {
    private let store: LocalizationStore
    private let resolver: AcceptLanguageResolver

    init(
        store: LocalizationStore,
        resolver: AcceptLanguageResolver
    ) {
        self.store = store
        self.resolver = resolver
    }

    public nonisolated func resolveLocale(
        from acceptLanguage: String?,
        preferred: LocaleID? = nil
    ) -> LocaleID {
        resolver.resolveLocale(from: acceptLanguage, preferred: preferred)
    }

    public func localized(
        _ key: LocalizationKey,
        locale: LocaleID
    ) async -> String? {
        for candidate in resolver.lookupChain(for: locale) {
            do {
                if let value = try await store.localizedValue(for: key, locale: candidate) {
                    return value
                }
            } catch {
                continue
            }
        }

        return nil
    }

    public func localizedOrFallback(
        _ key: LocalizationKey,
        locale: LocaleID,
        fallback: String
    ) async -> String {
        await localized(key, locale: locale) ?? fallback
    }
}

public enum LocalizationServiceFactory {
    public static func make() async throws -> LocalizationService {
        let localesRoot = try localesRoot()
        let loader = BundleLocalizationLoader(
            localesRoot: localesRoot,
            parser: JsonParser()
        )
        let store = try await LocalizationStore(loader: loader, eagerLocales: [.english])
        let resolver = AcceptLanguageResolver(availableLocales: store.availableLocales)
        return LocalizationService(store: store, resolver: resolver)
    }
}

private func localesRoot() throws -> URL {
    if let resourceURL = Bundle.module.url(forResource: "Locales", withExtension: nil, subdirectory: "Resources") {
        return resourceURL
    }

    if let resourceURL = Bundle.module.url(forResource: "Locales", withExtension: nil) {
        return resourceURL
    }

    guard let bundleResourceRoot = Bundle.module.resourceURL else {
        throw JsonParser.ParseError.resourceNotFound(resource: "Resources/Locales")
    }

    let directPath = bundleResourceRoot.appendingPathComponent("Locales", isDirectory: true)
    if FileManager.default.fileExists(atPath: directPath.path) {
        return directPath
    }

    let nestedPath = bundleResourceRoot
        .appendingPathComponent("Resources", isDirectory: true)
        .appendingPathComponent("Locales", isDirectory: true)

    if FileManager.default.fileExists(atPath: nestedPath.path) {
        return nestedPath
    }

    throw JsonParser.ParseError.resourceNotFound(resource: "Resources/Locales")
}
