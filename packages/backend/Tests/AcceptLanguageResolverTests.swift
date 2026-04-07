import XCTest
@testable import LocalizationService

final class AcceptLanguageResolverTests: XCTestCase {
    func testResolvesByQualityAndFallsBackToLanguageCode() {
        let resolver = AcceptLanguageResolver(
            availableLocales: ["en", "ru", "es"],
            fallbackLocale: .english
        )

        let locale = resolver.resolveLocale(from: "fr-CA;q=0.5, ru-RU;q=0.9, en-US;q=0.8")

        XCTAssertEqual(locale, "ru")
    }

    func testUnknownLocaleFallsBackToEnglish() {
        let resolver = AcceptLanguageResolver(
            availableLocales: ["en", "ru"],
            fallbackLocale: .english
        )

        let locale = resolver.resolveLocale(from: "fr-CA, de-DE;q=0.8")

        XCTAssertEqual(locale, .english)
    }

    func testEmptyHeaderUsesDefaultFallback() {
        let resolver = AcceptLanguageResolver(
            availableLocales: ["en", "ru"],
            fallbackLocale: .english
        )

        let locale = resolver.resolveLocale(from: nil)

        XCTAssertEqual(locale, .english)
    }
}
