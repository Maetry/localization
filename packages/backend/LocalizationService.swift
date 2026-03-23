import Foundation

typealias LocalizeKnowledge = [Key : LangMap]
typealias LangMap = [Lang : String]
public typealias Key = String
public typealias LocalizedString = String

public enum Nuance: Error {
    case badKey
    case badLang
}

public protocol ILocalizationService {
    func tryTranslate(_ key: Key, _ lang: Lang) async throws -> LocalizedString
}

protocol ILocalizationParser {
    func getKnowledge(pathToGlossary: String) async throws -> LocalizeKnowledge
}

public actor LocalizationService: ILocalizationService {
    public static var localizeDirectory = #file
    
    private let knowledge: LocalizeKnowledge
    
    init(
        parser: ILocalizationParser
    ) async throws {
        self.knowledge = try await parser.getKnowledge(pathToGlossary: Self.localizeDirectory)
    }
}

public extension LocalizationService {
    func tryTranslate(_ localizeKey: Key, _ lang: Lang) async throws -> LocalizedString {
        guard let valueLocalization = knowledge[localizeKey] else {
            throw Nuance.badKey
        }
        
        guard let localization = valueLocalization[lang] else {
            throw Nuance.badLang
        }
        
        return localization
    }
}

public enum LocalizationServiceFactory {
    public static func make() async throws -> LocalizationService {
        let parser = JsonParser()
        let service = try await LocalizationService(parser: parser)
        
        return service
    }
}
