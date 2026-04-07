import XCTest
@testable import LocalizationService

final class LocalizationStoreTests: XCTestCase {
    func testEagerLoadsEnglish() async throws {
        let loader = MockLoader()
        let store = try await LocalizationStore(loader: loader, eagerLocales: [.english])

        let value = try await store.localizedValue(for: "service.women_haircut.title", locale: .english)

        XCTAssertEqual(value, "Women haircut")
        let englishLoads = loader.loads(for: .english)
        XCTAssertEqual(englishLoads, 1)
    }

    func testLazyLoadsLocaleOnce() async throws {
        let loader = MockLoader()
        let store = try await LocalizationStore(loader: loader, eagerLocales: [.english])

        _ = try await store.localizedValue(for: "service.women_haircut.title", locale: "ru")
        _ = try await store.localizedValue(for: "service.women_haircut.title", locale: "ru")

        let russianLoads = loader.loads(for: "ru")
        XCTAssertEqual(russianLoads, 1)
    }

    func testConcurrentFirstAccessUsesSingleFlight() async throws {
        let loader = MockLoader()
        let store = try await LocalizationStore(loader: loader, eagerLocales: [.english])

        async let first = store.localizedValue(for: "service.women_haircut.title", locale: "ru")
        async let second = store.localizedValue(for: "service.women_haircut.title", locale: "ru")

        _ = try await (first, second)

        let russianLoads = loader.loads(for: "ru")
        XCTAssertEqual(russianLoads, 1)
    }
}

private final class MockLoader: LocalizationResourceLoading, @unchecked Sendable {
    private let lock = NSLock()
    private var counters: [LocaleID: Int] = [:]

    func availableLocales() throws -> Set<LocaleID> {
        ["en", "ru"]
    }

    func load(locale: LocaleID) throws -> [String: String] {
        lock.lock()
        counters[locale, default: 0] += 1
        lock.unlock()

        switch locale {
        case .english:
            return ["service.women_haircut.title": "Women haircut"]
        case "ru":
            return ["service.women_haircut.title": "Женская стрижка"]
        default:
            return [:]
        }
    }

    func loads(for locale: LocaleID) -> Int {
        lock.lock()
        defer { lock.unlock() }
        return counters[locale, default: 0]
    }
}
