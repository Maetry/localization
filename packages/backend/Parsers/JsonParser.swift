import Foundation

struct JsonParser: ILocalizationParser {
    let expectedKeyCount = 100
    
    /// - throws: `JsonParser.ParseError`
    func getKnowledge(pathToGlossary: String) async throws -> LocalizeKnowledge {
        
        let glossaryPath = URL(fileURLWithPath: pathToGlossary)
            .deletingLastPathComponent()
            .appendingPathComponent("Glossary")
        
        var jsonKnowledge = LocalizeKnowledge(minimumCapacity: expectedKeyCount)
        
        for module in LocalizationModules.allCases {
            for lang in Lang.allCases {
                for children in module.childrenFilesNames {
                    
                    let childrenPath = glossaryPath
                        .appendingPathComponent(module.directoryName)
                        .appendingPathComponent(lang.rawValue)
                        .appendingPathComponent(children)
                        
                    let localizedDict = try dirLocalize(path: childrenPath)
                    
                    for (key, value) in localizedDict {
                        if jsonKnowledge[key] == nil {
                            jsonKnowledge[key] = Dictionary(minimumCapacity: Lang.allCases.count)
                        }
                        
                        guard jsonKnowledge[key]?[lang] == nil else {
                            throw ParseError.duplicateKey(key: key, lang: lang)
                        }
                        
                        jsonKnowledge[key]?[lang] = value
                    }
                }
            }
        }
        
        return jsonKnowledge
    }
                                            
    private func dirLocalize(path: URL) throws -> [String: String] {
        let decoder = JSONDecoder()
        
        guard let localizeFileData = try? Data(contentsOf: path) else {
            throw ParseError.fileNotFound(path: path)
        }
        
        guard let localizedDict = try? decoder.decode([String: String].self, from: localizeFileData) else {
            throw ParseError.unparseableData(path: path)
        }
        
        return localizedDict
    }
}

extension JsonParser {
    enum ParseError: Error {
        case fileNotFound(path: URL)
        case unparseableData(path: URL)
        case duplicateKey(key: String, lang: Lang)
    }
}
