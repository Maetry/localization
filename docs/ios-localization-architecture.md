# iOS Centralized Localization

## Current State

As of the initial audit, iOS uses several localization mechanisms in parallel:

- `LocalizationKit` generated accessors via `Loc.*` from `Localization/packages/ios/Generated/Localization.swift`
- local `Loc+*.swift` shadow extensions with hardcoded literals and TODO markers for Crowdin migration
- target-owned `Localizable.xcstrings` files inside `IOS/Application` and `IOS/Console`
- direct `String(localized:)` and `LocalizedStringResource` literals
- hardcoded UI strings in SwiftUI and supporting views

This split creates four recurring classes of debt:

- source-of-truth drift: product copy lives both in `Localization` and directly in iOS
- duplicate semantics: multiple keys reuse the same text without an explicit reuse policy
- shadow APIs: iOS exposes `Loc.*` members that do not exist in generated `LocalizationKit`
- migration ambiguity: some strings are safe to centralize automatically, while others need human review

The machine-readable audit snapshot is generated into:

- `Localization/reports/ios-localization-audit.json`
- `Localization/reports/ios-localization-audit.md`
- `Localization/reports/ios-localization-audit.csv`

## Source Of Truth

For product-facing iOS copy, the only authoring source is:

- `Localization/packages/ios/Resources/*.lproj/Localizable.strings`
- `Localization/packages/ios/Resources/*.lproj/Localizable.stringsdict`

Rules:

- iOS app code must consume localized strings through `LocalizationKit`
- iOS-owned resource files are allowed only when Apple APIs require target-local artifacts
- even for Apple-specific flows, authored copy still originates in `Localization`; target-local artifacts must be generated or bridged
- direct product-copy literals in `IOS/**` are not allowed as a long-term pattern

## Key Structure

Keys use dot-separated `lower_snake_case`.

Canonical shape:

- `<surface>.<feature>[.<subfeature>].<component_or_group>.<role>`

Allowed `surface` prefixes:

- `reusable`
- `screen`
- `sheet`
- `alert`
- `toast`
- `widget`
- `onboarding`
- `creatable`
- `updatable`
- `error`
- `app_intent`
- `appclip`

Role naming guidelines:

- titles: `title`, `subtitle`
- descriptive copy: `description`, `hint`, `empty_message`
- inputs: `placeholder`
- buttons and actions: `button_primary`, `button_secondary`, `action_label`
- confirmation UI: `confirm_title`, `confirm_message`
- feedback UI: `success_toast`, `error_toast`

Examples:

- good: `screen.marketing.campaign_detail.title`
- good: `creatable.product.field.brand.placeholder`
- good: `alert.booking_cancel.confirm_message`
- bad: `marketing_title`
- bad: `title`
- bad: `update_required`

## Reuse Rules

Reuse is allowed only for genuinely global microcopy. Typical reusable buckets:

- `reusable.save`
- `reusable.cancel`
- `reusable.search`
- `reusable.today`
- `reusable.loading`

Do not reuse a key only because the current English text matches.

Create a new key when:

- the meaning differs by feature or lifecycle state
- the copy may diverge in the future
- the string is tied to a specific screen or business action

Reuse an existing key only when:

- the semantic meaning is the same
- the UX role is the same
- the string is intentionally product-wide

## Pluralization And Interpolation

- pluralized strings must live in `.stringsdict`
- interpolation keys must still be semantic and stable
- argument names in conventions and docs should reflect domain meaning, not positional placeholders
- if automation sees interpolation or plural-like patterns, it must mark them for manual review unless the migration rule is explicit

## Migration Rules

Automation is intentionally two-phase:

1. `audit`
2. `migrate`
3. `verify`

`audit` responsibilities:

- scan `IOS/**/*.swift`
- classify findings into:
  - `local_loc_extension`
  - `string_localized_local_bundle`
  - `localized_string_resource`
  - `hardcoded_ui_literal`
  - `manual_review`
  - `ignored`
- scan `IOS/**/Localizable.xcstrings`
- report duplicate values already present in `Localization`
- report shadow `Loc+*.swift` files

`migrate` responsibilities:

- default to dry-run
- centralize only safe candidates by default
- write resource changes only into `Localization`
- regenerate `Localization.swift` after apply
- avoid bulk call-site rewrites unless a future narrow codemod is explicitly approved

`verify` responsibilities:

- compare current findings against the committed baseline
- fail on new unreviewed localization debt
- fail on new `xcstrings` entries outside the baseline
- fail on new suggested key-collision groups outside the baseline
- fail when generated `Localization.swift` is out of sync with `Base.lproj`

The baseline snapshot is stored in:

- `Localization/tools/config/ios-localization-baseline.json`

## Manual Review Rules

Manual review is required for:

- `String(localized:)` usages that currently resolve against iOS-local resources
- `LocalizedStringResource` literals
- `Localizable.xcstrings` entries
- interpolated UI literals
- ambiguous suggestions where one key could represent multiple meanings
- strings in Apple-framework entry points that need a dedicated bridge

Examples of current manual-review-heavy zones:

- `IOS/AppControls/**`
- `IOS/Packages/AuthKit/**`
- `IOS/Packages/ContactsKit/**`
- `IOS/Packages/LoggerKit/**`
- `IOS/Packages/MirrorKit/**`
- `IOS/Packages/PersistenceKit/**`

## Anti-patterns

- key by English phrase
- generic keys like `title`, `label`, `message`
- one key reused for different meanings
- duplicate feature-local keys with identical text and no reuse policy
- local `Loc+*.swift` extensions becoming a parallel localization API
- editing `xcstrings` directly as a product-copy source

## Operational Commands

Run from `IOS`:

```bash
make sync-localization
make audit-localization
make baseline-localization
make migrate-localization
make verify-localization
make clean-localization-reports
```

Run from `Localization`:

```bash
npm run ios:sync
npm run ios:audit -- --write-baseline
npm run ios:baseline
npm run ios:migrate
npm run ios:migrate -- --apply
npm run ios:verify
```

## Development Flow

For any new iOS product-facing string:

1. Add the new key to `Localization/packages/ios/Resources/*.lproj/Localizable.strings` or `.stringsdict`.
2. Use the generated accessor from `LocalizationKit` in `IOS/**`. Do not add local `Loc+*.swift`, `String(localized:)`, or target-owned product literals.
3. Run `make sync-localization` from `IOS`.
4. If you intentionally changed audit policy or finished a large approved migration batch, run `make baseline-localization`.

Normal day-to-day expectations:

- `make sync-localization` is the default command after adding or editing localized copy.
- `make verify-localization` is the CI-safe read-only gate.
- `make audit-localization` is for inspection and debt review.
- `make migrate-localization` is for controlled bulk migration only.
- `make clean-localization-reports` removes disposable generated reports; these files are ignored and are not part of the long-term source of truth.

## Safe Deletions

The following are now considered removable or already retired patterns:

- local `Loc+*.swift` shadow localization files in `IOS`
- direct product-copy literals in Swift when a `Loc.*` key exists
- direct `String(localized:)` product strings in iOS screens and widgets
- ad hoc target-owned product copy in `xcstrings`

The following should stay:

- `Localization/tools/scripts/ios-localization.js` as the single CLI entrypoint
- `Localization/tools/config/ios-localization-baseline.json` as the verify contract
- generated audit and migration reports only as disposable local artifacts under `Localization/reports`
