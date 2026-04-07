import Foundation

public protocol LocalizationResourceLoading: Sendable {
    func availableLocales() throws -> Set<LocaleID>
    func load(locale: LocaleID) throws -> [String: String]
}

protocol LocalizationLocaleParsing: Sendable {
    func parse(data: Data, source: URL) throws -> [String: String]
}

struct JsonParser: LocalizationLocaleParsing {
    func parse(data: Data, source: URL) throws -> [String: String] {
        do {
            return try JSONDecoder().decode([String: String].self, from: data)
        } catch {
            throw ParseError.unparseableData(path: source, error: error)
        }
    }
}

struct BundleLocalizationLoader: LocalizationResourceLoading {
    let localesRoot: URL
    let parser: any LocalizationLocaleParsing

    func availableLocales() throws -> Set<LocaleID> {
        let entries = try FileManager.default.contentsOfDirectory(
            at: localesRoot,
            includingPropertiesForKeys: nil
        )

        return Set(entries.compactMap { url in
            guard url.pathExtension == "json" else {
                return nil
            }

            return LocaleID(url.deletingPathExtension().lastPathComponent)
        })
    }

    func load(locale: LocaleID) throws -> [String: String] {
        let fileURL = localesRoot.appendingPathComponent("\(locale.rawValue).json")
        guard let data = try? Data(contentsOf: fileURL) else {
            throw JsonParser.ParseError.fileNotFound(path: fileURL)
        }

        return try parser.parse(data: data, source: fileURL)
    }
}

extension JsonParser {
    enum ParseError: Error {
        case resourceNotFound(resource: String)
        case fileNotFound(path: URL)
        case unparseableData(path: URL, error: Error)
    }
}
