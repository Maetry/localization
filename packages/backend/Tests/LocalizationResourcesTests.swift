import XCTest

final class LocalizationResourcesTests: XCTestCase {
    func testSupportedLocalesShareSameKeySet() throws {
        let root = URL(fileURLWithPath: #filePath)
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .appendingPathComponent("Resources/Locales", isDirectory: true)

        let en = try load(root.appendingPathComponent("en.json"))
        let ru = try load(root.appendingPathComponent("ru.json"))

        XCTAssertFalse(en.isEmpty)
        XCTAssertEqual(Set(en.keys), Set(ru.keys))
        XCTAssertNotNil(en["ui.procedure.fallback"])
        XCTAssertNotNil(en["notification.appointment.created.customer.title"])
        XCTAssertNotNil(en["service.women_haircut.title"])
    }

    private func load(_ url: URL) throws -> [String: String] {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([String: String].self, from: data)
    }
}
