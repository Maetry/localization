import Foundation

public extension Loc {
  static func resource(
    _ key: StaticString,
    defaultValue: String.LocalizationValue,
    table: String? = "Localizable",
    locale: Locale = .current,
    comment: StaticString? = nil
  ) -> LocalizedStringResource {
    LocalizedStringResource(
      key,
      defaultValue: defaultValue,
      table: table,
      locale: locale,
      bundle: .atURL(Bundle.module.bundleURL),
      comment: comment
    )
  }
}
