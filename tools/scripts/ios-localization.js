#!/usr/bin/env node

const { execFile } = require('child_process');
const util = require('util');
const fs = require('fs-extra');
const path = require('path');
const chalk = require('chalk');
const { Command } = require('commander');
const { globSync } = require('glob');

const execFileAsync = util.promisify(execFile);

const DEFAULT_REPORT_BASENAME = 'ios-localization-audit';
const SUPPORTED_LOCALES = ['Base', 'en', 'ru', 'es'];
const UI_LITERAL_PATTERNS = [
  { name: 'Text', regex: /\bText\("((?:[^"\\]|\\.)*)"\)/g },
  { name: 'Button', regex: /\bButton\("((?:[^"\\]|\\.)*)"/g },
  { name: 'Label', regex: /\bLabel\("((?:[^"\\]|\\.)*)"/g },
  { name: 'navigationTitle', regex: /\.navigationTitle\("((?:[^"\\]|\\.)*)"\)/g },
  { name: 'title', regex: /\btitle:\s*"((?:[^"\\]|\\.)*)"/g },
  { name: 'message', regex: /\bmessage:\s*"((?:[^"\\]|\\.)*)"/g },
  { name: 'placeholder', regex: /\bplaceholder:\s*"((?:[^"\\]|\\.)*)"/g }
];
const LOCALIZED_STRING_PATTERNS = [
  { classification: 'string_localized_local_bundle', regex: /String\(localized:\s*"((?:[^"\\]|\\.)*)"\)/g },
  { classification: 'localized_string_resource', regex: /LocalizedStringResource\s*=\s*"((?:[^"\\]|\\.)*)"/g }
];
const INTERPOLATION_PATTERNS = [
  { name: 'ui_interpolation', regex: /\b(?:Text|Button|Label)\("([^"]*\\\([^"]*)"\)/g },
  { name: 'localized_interpolation', regex: /String\(localized:\s*"([^"]*\\\([^"]*)"\)/g }
];
const SYMBOL_SKIP_SEGMENTS = new Set(['Loc']);
const PATH_SKIP_SEGMENTS = new Set([
  'Application',
  'Console',
  'Packages',
  'Sources',
  'Flows',
  'Views',
  'Components',
  'Widgets',
  'Screens',
  'Screen',
  'Intents',
  'Resources',
  'App',
  'Services'
]);
const SYMBOL_CONTEXT_RE = /^(?:public\s+|private\s+|internal\s+|fileprivate\s+)?(enum|struct)\s+([A-Za-z_][A-Za-z0-9_]*)\s*\{/;
const EXTENSION_CONTEXT_RE = /^extension\s+Loc((?:\.[A-Za-z_][A-Za-z0-9_]*)*)\s*\{/;
const STATIC_VAR_OPEN_RE = /^(?:public\s+|private\s+|internal\s+|fileprivate\s+)?(?:static|class)\s+var\s+([A-Za-z_][A-Za-z0-9_]*)\s*:\s*(?:String|LocalizedStringResource)\s*\{/;
const STATIC_VAR_INLINE_RE = /^(?:public\s+|private\s+|internal\s+|fileprivate\s+)?(?:static|class)\s+var\s+([A-Za-z_][A-Za-z0-9_]*)\s*:\s*(?:String|LocalizedStringResource)\s*\{\s*"((?:[^"\\]|\\.)*)"\s*\}/;
const STATIC_VAR_INLINE_LOCALIZED_RE = /^(?:public\s+|private\s+|internal\s+|fileprivate\s+)?(?:static|class)\s+var\s+([A-Za-z_][A-Za-z0-9_]*)\s*:\s*(?:String|LocalizedStringResource)\s*\{\s*String\(localized:\s*"((?:[^"\\]|\\.)*)"\)\s*\}/;
const STRING_LITERAL_RE = /"((?:[^"\\]|\\.)*)"/;

function defaultLocalizationRoot() {
  return path.resolve(__dirname, '../..');
}

function defaultIOSRoot(localizationRoot) {
  return path.resolve(localizationRoot, '../IOS');
}

function toPosix(inputPath) {
  return inputPath.split(path.sep).join('/');
}

function escapeStringValue(value) {
  return value
    .replace(/\\/g, '\\\\')
    .replace(/\n/g, '\\n')
    .replace(/\r/g, '\\r')
    .replace(/\t/g, '\\t')
    .replace(/"/g, '\\"');
}

function unescapeStringValue(value) {
  return value
    .replace(/\\n/g, '\n')
    .replace(/\\r/g, '\r')
    .replace(/\\t/g, '\t')
    .replace(/\\"/g, '"')
    .replace(/\\\\/g, '\\');
}

function countChar(line, char) {
  return [...line].filter((value) => value === char).length;
}

function compactWhitespace(value) {
  return value.replace(/\s+/g, ' ').trim();
}

function normalizeText(value) {
  return compactWhitespace(value)
    .replace(/[“”]/g, '"')
    .replace(/[’]/g, "'")
    .toLowerCase();
}

function hasAlphabetic(value) {
  return /[A-Za-zА-Яа-яЁё]/.test(value);
}

function stripInterpolations(value) {
  return value.replace(/\\\([^)]*\)/g, '');
}

function hasMeaningfulLiteralText(value) {
  return hasAlphabetic(stripInterpolations(value));
}

function previewMaskedLines(lines) {
  const masked = new Set();
  let previewDepth = null;

  for (let index = 0; index < lines.length; index += 1) {
    const rawLine = lines[index];
    const trimmed = rawLine.trim();

    if (previewDepth === null && trimmed.startsWith('#Preview')) {
      masked.add(index);
      previewDepth = countChar(rawLine, '{') - countChar(rawLine, '}');
      if (previewDepth <= 0) {
        previewDepth = null;
      }
      continue;
    }

    if (previewDepth !== null) {
      masked.add(index);
      previewDepth += countChar(rawLine, '{') - countChar(rawLine, '}');
      if (previewDepth <= 0) {
        previewDepth = null;
      }
    }
  }

  return masked;
}

function commentMaskedLines(lines) {
  const masked = new Set();
  let blockCommentDepth = 0;

  for (let index = 0; index < lines.length; index += 1) {
    const rawLine = lines[index];
    const trimmed = rawLine.trim();

    if (blockCommentDepth > 0 || trimmed.startsWith('//') || trimmed.startsWith('/*') || trimmed.startsWith('*') || trimmed.startsWith('*/')) {
      masked.add(index);
    }

    const opens = (rawLine.match(/\/\*/g) || []).length;
    const closes = (rawLine.match(/\*\//g) || []).length;
    blockCommentDepth += opens - closes;

    if (blockCommentDepth > 0) {
      masked.add(index);
    }
  }

  return masked;
}

function snakeCase(value) {
  const normalized = value
    .replace(/([a-z0-9])([A-Z])/g, '$1_$2')
    .replace(/([A-Z]+)([A-Z][a-z])/g, '$1_$2')
    .replace(/[^A-Za-z0-9]+/g, '_')
    .replace(/^_+|_+$/g, '')
    .toLowerCase();
  return normalized || 'value';
}

function humanTokens(value) {
  return snakeCase(value)
    .split('_')
    .filter(Boolean);
}

function shouldIgnoreByPattern(value, patterns) {
  return patterns.some((pattern) => new RegExp(pattern, 'u').test(value));
}

function createFingerprint(candidate) {
  return [
    candidate.sourcePath,
    candidate.classification,
    candidate.symbolPath || candidate.suggestedKey || '',
    candidate.literal || candidate.expression || ''
  ].join('::');
}

function loadIgnoreConfig(localizationRoot) {
  const configPath = path.join(localizationRoot, 'tools/config/ios-localization-ignore.json');
  return fs.readJsonSync(configPath);
}

function reportPaths(localizationRoot, basename = DEFAULT_REPORT_BASENAME) {
  const reportsDir = path.join(localizationRoot, 'reports');
  return {
    dir: reportsDir,
    json: path.join(reportsDir, `${basename}.json`),
    md: path.join(reportsDir, `${basename}.md`),
    csv: path.join(reportsDir, `${basename}.csv`)
  };
}

function baselinePath(localizationRoot) {
  return path.join(localizationRoot, 'tools/config/ios-localization-baseline.json');
}

function readStringsFile(filePath) {
  const content = fs.readFileSync(filePath, 'utf8');
  const entries = new Map();
  const regex = /^"([^"]+)"\s*=\s*"((?:[^"\\]|\\.)*)";\s*$/gm;
  let match;
  while ((match = regex.exec(content)) !== null) {
    entries.set(match[1], unescapeStringValue(match[2]));
  }
  return entries;
}

function writeStringsFile(filePath, entries) {
  const renderEntry = (key, value) => `"${escapeStringValue(key)}" = "${escapeStringValue(value)}";`;
  const existingContent = fs.existsSync(filePath) ? fs.readFileSync(filePath, 'utf8') : '';
  const keyRegex = /^"([^"]+)"\s*=\s*"((?:[^"\\]|\\.)*)";\s*$/;

  if (!existingContent.trim()) {
    const sortedEntries = [...entries.entries()].sort((left, right) => left[0].localeCompare(right[0]));
    const content = sortedEntries
      .map(([key, value]) => renderEntry(key, value))
      .join('\n');
    fs.writeFileSync(filePath, `${content}\n`, 'utf8');
    return;
  }

  const lines = existingContent.split('\n');
  const existingKeys = new Set();

  for (let index = 0; index < lines.length; index += 1) {
    const match = lines[index].match(keyRegex);
    if (!match) {
      continue;
    }

    const key = match[1];
    if (!entries.has(key)) {
      continue;
    }

    existingKeys.add(key);
    lines[index] = renderEntry(key, entries.get(key));
  }

  const missingEntries = [...entries.entries()]
    .filter(([key]) => !existingKeys.has(key))
    .sort((left, right) => left[0].localeCompare(right[0]));

  if (missingEntries.length > 0) {
    if (lines.length > 0 && lines[lines.length - 1].trim() !== '') {
      lines.push('');
    }
    missingEntries.forEach(([key, value]) => {
      lines.push(renderEntry(key, value));
    });
  }

  fs.writeFileSync(filePath, `${lines.join('\n').replace(/\n+$/u, '')}\n`, 'utf8');
}

function loadLocalizationState(localizationRoot) {
  const localeMaps = {};
  for (const locale of SUPPORTED_LOCALES) {
    const filePath = path.join(
      localizationRoot,
      'packages/ios/Resources',
      `${locale}.lproj`,
      'Localizable.strings'
    );
    localeMaps[locale] = readStringsFile(filePath);
  }

  const baseEntries = localeMaps.Base;
  const duplicateValues = new Map();
  const valueIndex = new Map();
  for (const [key, value] of baseEntries.entries()) {
    const normalizedValue = normalizeText(value);
    if (!normalizedValue) {
      continue;
    }
    const keys = valueIndex.get(normalizedValue) || [];
    keys.push(key);
    valueIndex.set(normalizedValue, keys);
  }
  for (const [normalizedValue, keys] of valueIndex.entries()) {
    if (keys.length > 1) {
      duplicateValues.set(normalizedValue, keys);
    }
  }

  const reusableValueIndex = new Map();
  for (const locale of Object.keys(localeMaps)) {
    for (const [key, value] of localeMaps[locale].entries()) {
      if (!key.startsWith('reusable.')) {
        continue;
      }
      const normalizedValue = normalizeText(value);
      if (!normalizedValue) {
        continue;
      }
      const reusableKeys = reusableValueIndex.get(normalizedValue) || new Set();
      reusableKeys.add(key);
      reusableValueIndex.set(normalizedValue, reusableKeys);
    }
  }

  return {
    localeMaps,
    duplicateValues,
    reusableValueIndex
  };
}

function collectLocaleCoverage(localizationState) {
  const baseKeys = [...localizationState.localeMaps.Base.keys()];
  const missingKeysByLocale = {};
  const missingCountsByLocale = {};

  for (const locale of SUPPORTED_LOCALES.filter((item) => item !== 'Base')) {
    const missingKeys = baseKeys.filter((key) => !localizationState.localeMaps[locale].has(key));
    missingKeysByLocale[locale] = missingKeys;
    missingCountsByLocale[locale] = missingKeys.length;
  }

  return {
    missingKeysByLocale,
    missingCountsByLocale
  };
}

function parseGeneratedAccessors(filePath) {
  const content = fs.readFileSync(filePath, 'utf8');
  const regex = /Loc\.tr\("Localizable",\s*"([^"]+)"/g;
  const keys = [];
  let match;
  while ((match = regex.exec(content)) !== null) {
    keys.push({ key: match[1] });
  }
  return keys;
}

function parseXcstringsFile(filePath) {
  const content = fs.readFileSync(filePath, 'utf8');
  const parsed = JSON.parse(content);
  const entries = [];
  for (const [key, data] of Object.entries(parsed.strings || {})) {
    const localizations = data.localizations || {};
    const values = {};
    for (const [locale, localeData] of Object.entries(localizations)) {
      const stringUnit = localeData.stringUnit || {};
      if (typeof stringUnit.value === 'string') {
        values[locale] = stringUnit.value;
      }
    }
    entries.push({
      key,
      values
    });
  }
  return {
    sourceLanguage: parsed.sourceLanguage || 'en',
    entries
  };
}

function pathStartsWithOneOf(posixPath, globs) {
  return globs.some((glob) => {
    const prefix = glob.replace(/\/\*\*$/, '');
    return posixPath.startsWith(prefix);
  });
}

function classifyPath(posixPath, ignoreConfig) {
  if (pathStartsWithOneOf(posixPath, ignoreConfig.ignoredPathGlobs)) {
    return { status: 'ignored', reason: 'path_ignore_rule' };
  }
  if (pathStartsWithOneOf(posixPath, ignoreConfig.manualReviewPathGlobs)) {
    return { status: 'manual_review', reason: 'manual_review_path_rule' };
  }
  return null;
}

function deriveSurface(parts, fallbackFileName) {
  if (parts.includes('AppControls')) {
    return 'app_intent';
  }
  if (parts.some((part) => part.includes('Onboarding'))) {
    return 'onboarding';
  }
  if (parts.some((part) => part.includes('Creatable'))) {
    return 'creatable';
  }
  if (parts.some((part) => part.includes('Editable') || part.includes('Update'))) {
    return 'updatable';
  }
  if (fallbackFileName.includes('Widget')) {
    return 'widget';
  }
  return 'screen';
}

function normalizedFileToken(fileName) {
  return snakeCase(fileName.replace(/(Screen|Sheet|Widget|Popover|State|View|Intent|Button|Presenter|Copy)$/, ''));
}

function extractPathParts(sourcePath) {
  const parts = sourcePath.split('/');
  const significant = [];
  for (const part of parts) {
    if (PATH_SKIP_SEGMENTS.has(part) || part.endsWith('.swift')) {
      continue;
    }
    if (part === 'IOS') {
      continue;
    }
    const token = snakeCase(part.replace(/(Screen|Sheet|Widget|Popover|State|View|Intent|Button|Presenter)$/, ''));
    if (!token || PATH_SKIP_SEGMENTS.has(part)) {
      continue;
    }
    significant.push(token);
  }
  return significant;
}

function suggestGenericKey(candidate, localizationRoot, ignoreConfig) {
  const sourcePath = candidate.sourcePath;
  const fileName = path.basename(sourcePath, '.swift');
  const parts = extractPathParts(sourcePath);
  const surface = deriveSurface(sourcePath.split('/'), fileName);
  const fileToken = normalizedFileToken(fileName);
  const tail = [];
  const prefersFileScopedNamespace = new Set([
    'string_localized_local_bundle',
    'localized_string_resource',
    'hardcoded_ui_literal'
  ]).has(candidate.classification);

  if (parts.length >= 1) {
    tail.push(parts[0]);
  } else if (fileToken) {
    tail.push(fileToken);
  } else {
    tail.push(snakeCase(fileName));
  }

  if (prefersFileScopedNamespace && fileToken && fileToken !== tail[tail.length - 1] && fileToken !== parts[0]) {
    tail.push(fileToken);
  } else if (parts.length >= 2) {
    tail.push(parts[1]);
  }

  if (candidate.bindingName) {
    tail.push(snakeCase(candidate.bindingName));
  } else if (candidate.callSite) {
    tail.push(snakeCase(candidate.callSite));
  } else if (candidate.line) {
    tail.push(`literal_${candidate.line}`);
  }

  return [surface, ...tail].join('.');
}

function buildExistingKeyReuse(literal, localizationState) {
  const reusableMatches = localizationState.reusableValueIndex.get(normalizeText(literal));
  if (!reusableMatches || reusableMatches.size !== 1) {
    return null;
  }
  return [...reusableMatches][0];
}

function scanLocExtensionFile(filePath, iosRoot, localizationState, ignoreConfig) {
  const sourcePath = toPosix(path.relative(path.dirname(iosRoot), filePath));
  const lines = fs.readFileSync(filePath, 'utf8').split('\n');
  const candidates = [];
  const stack = [];
  let braceDepth = 0;
  let pendingVar = null;

  const pushContext = (kind, name, depth) => {
    stack.push({ kind, name, depth });
  };

  const popContexts = () => {
    while (stack.length > 0 && stack[stack.length - 1].depth > braceDepth) {
      stack.pop();
    }
  };

  const currentSymbolSegments = () => {
    const segments = [];
    for (const item of stack) {
      if (item.kind === 'extension') {
        segments.push(...item.name.split('.').filter(Boolean));
      } else {
        segments.push(item.name);
      }
    }
    return segments.filter((segment) => !SYMBOL_SKIP_SEGMENTS.has(segment));
  };

  const createCandidate = (lineNumber, symbolName, literal, classification = 'local_loc_extension') => {
    const segments = currentSymbolSegments().map(snakeCase);
    segments.push(snakeCase(symbolName));
    const suggestedKey = segments.join('.');
    const reusedKey = buildExistingKeyReuse(literal, localizationState);
    candidates.push({
      sourcePath,
      line: lineNumber,
      classification,
      status: reusedKey ? 'reuse' : 'auto',
      literal,
      suggestedKey,
      existingKey: reusedKey,
      symbolPath: [...currentSymbolSegments(), symbolName].join('.'),
      reason: 'shadow_loc_extension'
    });
  };

  for (let index = 0; index < lines.length; index += 1) {
    const lineNumber = index + 1;
    const rawLine = lines[index];
    const line = rawLine.trim();

    const pathRule = classifyPath(sourcePath, ignoreConfig);
    if (pathRule) {
      return [
        {
          sourcePath,
          line: 1,
          classification: 'local_loc_extension',
          status: pathRule.status,
          literal: '',
          suggestedKey: null,
          existingKey: null,
          symbolPath: path.basename(filePath, '.swift'),
          reason: pathRule.reason
        }
      ];
    }

    const inlineLiteralMatch = line.match(STATIC_VAR_INLINE_RE);
    if (inlineLiteralMatch) {
      createCandidate(lineNumber, inlineLiteralMatch[1], inlineLiteralMatch[2]);
    }

    const inlineLocalizedMatch = line.match(STATIC_VAR_INLINE_LOCALIZED_RE);
    if (inlineLocalizedMatch) {
      createCandidate(lineNumber, inlineLocalizedMatch[1], inlineLocalizedMatch[2], 'string_localized_local_bundle');
    }

    if (!inlineLiteralMatch && !inlineLocalizedMatch) {
      const pendingMatch = line.match(STATIC_VAR_OPEN_RE);
      if (pendingMatch) {
        pendingVar = {
          name: pendingMatch[1],
          line: lineNumber,
          depth: braceDepth + countChar(rawLine, '{') - countChar(rawLine, '}')
        };
      } else if (pendingVar) {
        const literalMatch = line.match(STRING_LITERAL_RE);
        if (literalMatch && hasAlphabetic(literalMatch[1])) {
          createCandidate(lineNumber, pendingVar.name, literalMatch[1]);
          pendingVar = null;
        } else if (line === '}' || braceDepth < pendingVar.depth) {
          pendingVar = null;
        }
      }
    }

    const extensionMatch = line.match(EXTENSION_CONTEXT_RE);
    const symbolMatch = line.match(SYMBOL_CONTEXT_RE);
    const nextDepth = braceDepth + countChar(rawLine, '{') - countChar(rawLine, '}');

    if (extensionMatch) {
      pushContext('extension', extensionMatch[1].replace(/^\./, ''), nextDepth);
    } else if (symbolMatch) {
      pushContext(symbolMatch[1], symbolMatch[2], nextDepth);
    }

    braceDepth = nextDepth;
    popContexts();
  }

  return candidates;
}

function buildCandidate({
  sourcePath,
  line,
  classification,
  literal,
  expression,
  bindingName,
  callSite,
  localizationState,
  ignoreConfig
}) {
  if (literal && shouldIgnoreByPattern(literal, ignoreConfig.ignoredLiteralPatterns)) {
    return {
      sourcePath,
      line,
      classification,
      status: 'ignored',
      literal,
      expression,
      bindingName,
      callSite,
      suggestedKey: null,
      existingKey: null,
      symbolPath: null,
      reason: 'ignored_literal_pattern'
    };
  }

  const pathRule = classifyPath(sourcePath, ignoreConfig);
  if (pathRule) {
    return {
      sourcePath,
      line,
      classification,
      status: pathRule.status,
      literal,
      expression,
      bindingName,
      callSite,
      suggestedKey: null,
      existingKey: null,
      symbolPath: null,
      reason: pathRule.reason
    };
  }

  const existingKey = literal ? buildExistingKeyReuse(literal, localizationState) : null;
  const suggestedKey = existingKey || suggestGenericKey(
    { sourcePath, line, classification, literal, bindingName, callSite },
    null,
    ignoreConfig
  );
  const status = classification === 'string_localized_local_bundle'
    || classification === 'localized_string_resource'
    ? (existingKey ? 'reuse' : 'auto')
    : 'manual_review';

  return {
    sourcePath,
    line,
    classification,
    status,
    literal,
    expression,
    bindingName,
    callSite,
    suggestedKey,
    existingKey,
    symbolPath: null,
    reason: classification
  };
}

function scanGeneralSwiftFile(filePath, iosRoot, localizationState, ignoreConfig) {
  const sourcePath = toPosix(path.relative(path.dirname(iosRoot), filePath));
  const content = fs.readFileSync(filePath, 'utf8');
  const lines = content.split('\n');
  const maskedPreviewLines = previewMaskedLines(lines);
  const maskedCommentLines = commentMaskedLines(lines);
  const candidates = [];

  const pushUnique = (candidate) => {
    const fingerprint = createFingerprint(candidate);
    if (!candidates.some((item) => createFingerprint(item) === fingerprint)) {
      candidates.push(candidate);
    }
  };

  const shouldSkipLine = (lineContent, index) => {
    if (maskedPreviewLines.has(index) || maskedCommentLines.has(index)) {
      return true;
    }

    if (lineContent.includes('@available(') && lineContent.includes('deprecated')) {
      return true;
    }

    if (lineContent.includes('SentrySDK.capture(message:')) {
      return true;
    }

    if (lineContent.includes('logger.') && lineContent.includes('message:')) {
      return true;
    }

    return false;
  };

  LOCALIZED_STRING_PATTERNS.forEach(({ classification, regex }) => {
    lines.forEach((lineContent, index) => {
      if (shouldSkipLine(lineContent, index)) {
        return;
      }
      let match;
      while ((match = regex.exec(lineContent)) !== null) {
        const bindingMatch = lineContent.match(/(?:static|let|var)\s+([A-Za-z_][A-Za-z0-9_]*)\s*=/);
        pushUnique(buildCandidate({
          sourcePath,
          line: index + 1,
          classification,
          literal: match[1],
          bindingName: bindingMatch ? bindingMatch[1] : null,
          callSite: classification === 'localized_string_resource' ? 'title' : null,
          localizationState,
          ignoreConfig
        }));
      }
      regex.lastIndex = 0;
    });
  });

  UI_LITERAL_PATTERNS.forEach(({ name, regex }) => {
    lines.forEach((lineContent, index) => {
      if (shouldSkipLine(lineContent, index)) {
        return;
      }
      if (lineContent.includes('Loc.') || lineContent.includes('NSLocalizedString(') || lineContent.includes('String(localized:')) {
        return;
      }
      let match;
      while ((match = regex.exec(lineContent)) !== null) {
        if (!hasMeaningfulLiteralText(match[1])) {
          continue;
        }
        const bindingMatch = lineContent.match(/(?:static|let|var)\s+([A-Za-z_][A-Za-z0-9_]*)\s*=/);
        pushUnique(buildCandidate({
          sourcePath,
          line: index + 1,
          classification: 'hardcoded_ui_literal',
          literal: match[1],
          bindingName: bindingMatch ? bindingMatch[1] : null,
          callSite: name,
          localizationState,
          ignoreConfig
        }));
      }
      regex.lastIndex = 0;
    });
  });

  INTERPOLATION_PATTERNS.forEach(({ name, regex }) => {
    lines.forEach((lineContent, index) => {
      if (shouldSkipLine(lineContent, index)) {
        return;
      }
      let match;
      while ((match = regex.exec(lineContent)) !== null) {
        if (!hasMeaningfulLiteralText(match[1])) {
          continue;
        }
        pushUnique(buildCandidate({
          sourcePath,
          line: index + 1,
          classification: 'manual_review',
          expression: compactWhitespace(match[1]),
          callSite: name,
          localizationState,
          ignoreConfig
        }));
      }
      regex.lastIndex = 0;
    });
  });

  return candidates;
}

function scanIOSProject(iosRoot, localizationRoot) {
  const ignoreConfig = loadIgnoreConfig(localizationRoot);
  const localizationState = loadLocalizationState(localizationRoot);
  const swiftFiles = globSync('**/*.swift', {
    cwd: iosRoot,
    absolute: true,
    ignore: ignoreConfig.scanIgnoreGlobs
  });
  const xcstringsFiles = globSync('**/Localizable.xcstrings', {
    cwd: iosRoot,
    absolute: true,
    ignore: ignoreConfig.scanIgnoreGlobs
  });

  const candidates = [];
  for (const filePath of swiftFiles) {
    const fileName = path.basename(filePath);
    if (fileName.startsWith('Loc+')) {
      candidates.push(...scanLocExtensionFile(filePath, iosRoot, localizationState, ignoreConfig));
    } else {
      candidates.push(...scanGeneralSwiftFile(filePath, iosRoot, localizationState, ignoreConfig));
    }
  }

  const xcstringsReports = xcstringsFiles.map((filePath) => {
    const parsed = parseXcstringsFile(filePath);
    return {
      sourcePath: toPosix(path.relative(path.dirname(iosRoot), filePath)),
      sourceLanguage: parsed.sourceLanguage,
      entryCount: parsed.entries.length,
      entries: parsed.entries
    };
  });

  const candidatesWithFingerprint = candidates
    .filter((candidate) => candidate.literal || candidate.expression || candidate.symbolPath)
    .map((candidate) => ({
      ...candidate,
      fingerprint: createFingerprint(candidate)
    }));

  return {
    iosRoot,
    ignoreConfig,
    localizationState,
    candidates: candidatesWithFingerprint,
    xcstringsReports
  };
}

function buildSummary(scan) {
  const byClassification = {};
  const byStatus = {};
  const byTopLevelModule = {};
  let localizedViaLocCallSites = 0;
  let stringLocalizedCallSites = 0;
  let localizedStringResourceCallSites = 0;
  for (const candidate of scan.candidates) {
    byClassification[candidate.classification] = (byClassification[candidate.classification] || 0) + 1;
    byStatus[candidate.status] = (byStatus[candidate.status] || 0) + 1;
    const module = candidate.sourcePath.split('/').slice(1, 3).join('/') || candidate.sourcePath;
    byTopLevelModule[module] = (byTopLevelModule[module] || 0) + 1;

    if (candidate.classification === 'string_localized_local_bundle') {
      stringLocalizedCallSites += 1;
    }

    if (candidate.classification === 'localized_string_resource') {
      localizedStringResourceCallSites += 1;
    }
  }
  for (const swiftFile of globSync('**/*.swift', {
    cwd: scan.iosRoot,
    absolute: true,
    ignore: scan.ignoreConfig.scanIgnoreGlobs
  })) {
    const content = fs.readFileSync(swiftFile, 'utf8');
    localizedViaLocCallSites += content.split('Loc.').length - 1;
  }
  const localeCoverage = collectLocaleCoverage(scan.localizationState);
  return {
    totalCandidates: scan.candidates.length,
    byClassification,
    byStatus,
    byTopLevelModule,
    xcstringsFiles: scan.xcstringsReports.length,
    xcstringsEntries: scan.xcstringsReports.reduce((total, report) => total + report.entryCount, 0),
    duplicateValueGroups: scan.localizationState.duplicateValues.size,
    localeMissingCounts: localeCoverage.missingCountsByLocale,
    localizedViaLocCallSites,
    stringLocalizedCallSites,
    localizedStringResourceCallSites
  };
}

function buildMarkdownReport(scan, summary, localizationRoot, iosRoot) {
  const lines = [];
  lines.push('# iOS Localization Audit');
  lines.push('');
  lines.push(`- Localization root: \`${toPosix(localizationRoot)}\``);
  lines.push(`- iOS root: \`${toPosix(iosRoot)}\``);
  lines.push(`- Generated at: \`${new Date().toISOString()}\``);
  lines.push('');
  lines.push('## Summary');
  lines.push('');
  lines.push(`- Total candidates: ${summary.totalCandidates}`);
  lines.push(`- Duplicate base-value groups in Localization: ${summary.duplicateValueGroups}`);
  lines.push(`- xcstrings files: ${summary.xcstringsFiles}`);
  lines.push(`- xcstrings entries: ${summary.xcstringsEntries}`);
  Object.entries(summary.localeMissingCounts || {})
    .forEach(([locale, count]) => lines.push(`- Missing keys in ${locale}.lproj vs Base.lproj: ${count}`));
  lines.push(`- Loc call sites: ${summary.localizedViaLocCallSites}`);
  lines.push(`- String(localized:) call sites: ${summary.stringLocalizedCallSites}`);
  lines.push(`- LocalizedStringResource call sites: ${summary.localizedStringResourceCallSites}`);
  lines.push('');
  lines.push('### By Classification');
  lines.push('');
  Object.entries(summary.byClassification)
    .sort((left, right) => right[1] - left[1])
    .forEach(([key, value]) => lines.push(`- ${key}: ${value}`));
  lines.push('');
  lines.push('### By Status');
  lines.push('');
  Object.entries(summary.byStatus)
    .sort((left, right) => right[1] - left[1])
    .forEach(([key, value]) => lines.push(`- ${key}: ${value}`));
  lines.push('');
  lines.push('### Hotspots');
  lines.push('');
  Object.entries(summary.byTopLevelModule)
    .sort((left, right) => right[1] - left[1])
    .slice(0, 15)
    .forEach(([key, value]) => lines.push(`- ${key}: ${value}`));
  lines.push('');
  lines.push('## Pilot Targets');
  lines.push('');
  const pilotTargets = scan.candidates
    .filter((candidate) => candidate.classification === 'local_loc_extension' && candidate.status !== 'ignored')
    .slice(0, 20);
  pilotTargets.forEach((candidate) => {
    lines.push(`- ${candidate.sourcePath}:${candidate.line} -> ${candidate.suggestedKey}`);
  });
  lines.push('');
  lines.push('## Candidate Sample');
  lines.push('');
  scan.candidates.slice(0, 30).forEach((candidate) => {
    const renderedValue = candidate.literal || candidate.expression || '';
    lines.push(`- [${candidate.status}] ${candidate.classification} ${candidate.sourcePath}:${candidate.line} :: ${renderedValue}`);
  });
  return `${lines.join('\n')}\n`;
}

function buildCSVReport(scan) {
  const header = [
    'status',
    'classification',
    'source_path',
    'line',
    'symbol_path',
    'suggested_key',
    'existing_key',
    'literal_or_expression',
    'reason'
  ];
  const rows = [header.join(',')];
  for (const candidate of scan.candidates) {
    const rawValue = candidate.literal || candidate.expression || '';
    const row = [
      candidate.status,
      candidate.classification,
      candidate.sourcePath,
      candidate.line,
      candidate.symbolPath || '',
      candidate.suggestedKey || '',
      candidate.existingKey || '',
      rawValue,
      candidate.reason || ''
    ].map((value) => `"${String(value).replace(/"/g, '""')}"`);
    rows.push(row.join(','));
  }
  return `${rows.join('\n')}\n`;
}

function serializeAudit(scan, summary, localizationRoot, iosRoot) {
  const localeCoverage = collectLocaleCoverage(scan.localizationState);
  return {
    generatedAt: new Date().toISOString(),
    localizationRoot: toPosix(localizationRoot),
    iosRoot: toPosix(iosRoot),
    summary,
    localeCoverage,
    duplicateValueGroups: [...scan.localizationState.duplicateValues.entries()].map(([normalizedValue, keys]) => ({
      normalizedValue,
      keys
    })),
    xcstringsReports: scan.xcstringsReports,
    candidates: scan.candidates
  };
}

function collectSuggestedKeyCollisionKeys(candidates) {
  const collisions = new Set();
  const relevantCandidates = candidates.filter(
    (candidate) => candidate.suggestedKey && candidate.status !== 'ignored' && candidate.status !== 'reuse'
  );

  for (const candidate of relevantCandidates) {
    const candidateValue = candidate.literal || candidate.expression || '';
    const conflicting = relevantCandidates.find((other) => {
      if (other === candidate || other.suggestedKey !== candidate.suggestedKey) {
        return false;
      }

      const otherValue = other.literal || other.expression || '';
      return otherValue !== candidateValue;
    });

    if (conflicting) {
      collisions.add(candidate.suggestedKey);
    }
  }

  return [...collisions].sort();
}

async function writeAuditArtifacts(serialized, localizationRoot, markdown, csv) {
  const paths = reportPaths(localizationRoot);
  await fs.ensureDir(paths.dir);
  await fs.writeJson(paths.json, serialized, { spaces: 2 });
  await fs.writeFile(paths.md, markdown, 'utf8');
  await fs.writeFile(paths.csv, csv, 'utf8');
  return paths;
}

async function runAudit(options) {
  const localizationRoot = path.resolve(options.localizationRoot || defaultLocalizationRoot());
  const iosRoot = path.resolve(options.iosRoot || defaultIOSRoot(localizationRoot));
  const scan = scanIOSProject(iosRoot, localizationRoot);
  const summary = buildSummary(scan);
  const serialized = serializeAudit(scan, summary, localizationRoot, iosRoot);
  const markdown = buildMarkdownReport(scan, summary, localizationRoot, iosRoot);
  const csv = buildCSVReport(scan);
  const paths = await writeAuditArtifacts(serialized, localizationRoot, markdown, csv);

  if (options.writeBaseline) {
    const localeCoverage = collectLocaleCoverage(scan.localizationState);
    const baseline = {
      generatedAt: new Date().toISOString(),
      fingerprints: scan.candidates
        .filter((candidate) => candidate.status !== 'ignored')
        .map((candidate) => candidate.fingerprint)
        .sort(),
      xcstringsFingerprints: scan.xcstringsReports
        .flatMap((report) => report.entries.map((entry) => `${report.sourcePath}::${entry.key}`))
        .sort(),
      suggestedKeyCollisionKeys: collectSuggestedKeyCollisionKeys(scan.candidates),
      localeMissingKeys: Object.fromEntries(
        Object.entries(localeCoverage.missingKeysByLocale)
          .map(([locale, keys]) => [locale, [...keys].sort()])
      )
    };
    await fs.writeJson(baselinePath(localizationRoot), baseline, { spaces: 2 });
  }

  console.log(chalk.green('iOS localization audit completed'));
  console.log(chalk.gray(`JSON: ${paths.json}`));
  console.log(chalk.gray(`Markdown: ${paths.md}`));
  console.log(chalk.gray(`CSV: ${paths.csv}`));
  return { localizationRoot, iosRoot, scan, summary, paths };
}

function preferredLocaleForLiteral(literal) {
  return /[А-Яа-яЁё]/.test(literal) ? 'ru' : 'en';
}

function parsePathFilters(value) {
  if (!value) {
    return [];
  }
  return String(value)
    .split(',')
    .map((item) => item.trim())
    .filter(Boolean)
    .map((item) => item.replace(/\/\*\*$/, ''));
}

function matchesPathFilters(sourcePath, includeFilters, excludeFilters) {
  const included = includeFilters.length === 0 || includeFilters.some((prefix) => sourcePath.startsWith(prefix));
  if (!included) {
    return false;
  }
  return !excludeFilters.some((prefix) => sourcePath.startsWith(prefix));
}

function localizationValueForLocale(candidate, locale) {
  if (!candidate.literal) {
    return '';
  }
  const preferred = preferredLocaleForLiteral(candidate.literal);
  if (locale === 'Base') {
    return candidate.literal;
  }
  if (locale === preferred) {
    return candidate.literal;
  }
  return null;
}

async function runSwiftGen(localizationRoot) {
  await execFileAsync('npm', ['run', 'swiftgen'], {
    cwd: localizationRoot,
    env: process.env
  });
}

async function runMigrate(options) {
  const localizationRoot = path.resolve(options.localizationRoot || defaultLocalizationRoot());
  const reportPath = path.resolve(options.report || reportPaths(localizationRoot).json);
  const dryRun = options.apply ? false : true;
  const includeFilters = parsePathFilters(options.includePaths);
  const excludeFilters = parsePathFilters(options.excludePaths);
  const audit = await fs.readJson(reportPath);
  const localeMaps = {};
  for (const locale of SUPPORTED_LOCALES) {
    const filePath = path.join(
      localizationRoot,
      'packages/ios/Resources',
      `${locale}.lproj`,
      'Localizable.strings'
    );
    localeMaps[locale] = readStringsFile(filePath);
  }

  const selectedStatuses = new Set(String(options.statuses || 'auto,reuse,approved').split(',').map((value) => value.trim()));
  const changes = [];
  const collisions = [];
  const reused = [];

  for (const candidate of audit.candidates) {
    if (!matchesPathFilters(candidate.sourcePath, includeFilters, excludeFilters)) {
      continue;
    }
    if (!selectedStatuses.has(candidate.status)) {
      continue;
    }
    if (candidate.status === 'reuse' && candidate.existingKey) {
      reused.push(candidate);
      continue;
    }
    if (!candidate.suggestedKey || !candidate.literal) {
      continue;
    }
    const existingValue = localeMaps.Base.get(candidate.suggestedKey);
    if (existingValue !== undefined && existingValue !== candidate.literal) {
      collisions.push({
        sourcePath: candidate.sourcePath,
        line: candidate.line,
        suggestedKey: candidate.suggestedKey,
        existingValue,
        incomingValue: candidate.literal
      });
      continue;
    }
    if (existingValue === candidate.literal) {
      continue;
    }
    for (const locale of SUPPORTED_LOCALES) {
      const localizedValue = localizationValueForLocale(candidate, locale);
      if (localizedValue === null) {
        continue;
      }
      localeMaps[locale].set(candidate.suggestedKey, localizedValue);
    }
    changes.push(candidate);
  }

  if (!dryRun) {
    for (const locale of SUPPORTED_LOCALES) {
      const filePath = path.join(
        localizationRoot,
        'packages/ios/Resources',
        `${locale}.lproj`,
        'Localizable.strings'
      );
      writeStringsFile(filePath, localeMaps[locale]);
    }
    await runSwiftGen(localizationRoot);
  }

  const migrationReport = {
    generatedAt: new Date().toISOString(),
    dryRun,
    reportPath: toPosix(reportPath),
    selectedStatuses: [...selectedStatuses],
    applied: changes.map((candidate) => ({
      sourcePath: candidate.sourcePath,
      line: candidate.line,
      suggestedKey: candidate.suggestedKey,
      literal: candidate.literal
    })),
    reused: reused.map((candidate) => ({
      sourcePath: candidate.sourcePath,
      line: candidate.line,
      existingKey: candidate.existingKey,
      literal: candidate.literal
    })),
    collisions
  };
  const migrationPath = path.join(reportPaths(localizationRoot).dir, 'ios-localization-migration.json');
  await fs.ensureDir(path.dirname(migrationPath));
  await fs.writeJson(migrationPath, migrationReport, { spaces: 2 });

  console.log(chalk.green(dryRun ? 'iOS localization migrate dry-run completed' : 'iOS localization migrate completed'));
  console.log(chalk.gray(`Applied candidates: ${changes.length}`));
  console.log(chalk.gray(`Reused existing keys: ${reused.length}`));
  console.log(chalk.gray(`Collisions: ${collisions.length}`));
  console.log(chalk.gray(`Migration report: ${migrationPath}`));

  if (collisions.length > 0) {
    console.log(chalk.yellow('Collisions require manual review.'));
  }
}

async function runVerify(options) {
  const localizationRoot = path.resolve(options.localizationRoot || defaultLocalizationRoot());
  const iosRoot = path.resolve(options.iosRoot || defaultIOSRoot(localizationRoot));
  const scan = scanIOSProject(iosRoot, localizationRoot);
  const baseline = await fs.readJson(baselinePath(localizationRoot));
  const baselineFingerprints = new Set(baseline.fingerprints || []);
  const baselineXcstrings = new Set(baseline.xcstringsFingerprints || []);
  const baselineCollisionKeys = new Set(baseline.suggestedKeyCollisionKeys || []);
  const baselineLocaleMissingKeys = Object.fromEntries(
    SUPPORTED_LOCALES
      .filter((locale) => locale !== 'Base')
      .map((locale) => [locale, new Set((baseline.localeMissingKeys || {})[locale] || [])])
  );
  const currentFingerprints = new Set(
    scan.candidates
      .filter((candidate) => candidate.status !== 'ignored')
      .map((candidate) => candidate.fingerprint)
  );
  const currentXcstrings = new Set(
    scan.xcstringsReports
      .flatMap((report) => report.entries.map((entry) => `${report.sourcePath}::${entry.key}`))
  );
  const newCandidates = [...currentFingerprints].filter((fingerprint) => !baselineFingerprints.has(fingerprint));
  const newXcstringsEntries = [...currentXcstrings].filter((fingerprint) => !baselineXcstrings.has(fingerprint));
  const currentCollisionKeys = collectSuggestedKeyCollisionKeys(scan.candidates);
  const newCollisionKeys = currentCollisionKeys.filter((key) => !baselineCollisionKeys.has(key));
  const localeCoverage = collectLocaleCoverage(scan.localizationState);
  const newLocaleMissingKeys = Object.fromEntries(
    Object.entries(localeCoverage.missingKeysByLocale)
      .map(([locale, keys]) => [locale, keys.filter((key) => !baselineLocaleMissingKeys[locale].has(key))])
  );

  const failures = [];
  if (newCandidates.length > 0) {
    failures.push(`new unreviewed candidates: ${newCandidates.length}`);
  }
  if (newXcstringsEntries.length > 0) {
    failures.push(`new xcstrings entries: ${newXcstringsEntries.length}`);
  }
  if (newCollisionKeys.length > 0) {
    failures.push(`new suggested key collisions: ${newCollisionKeys.length}`);
  }
  for (const locale of Object.keys(newLocaleMissingKeys)) {
    if (newLocaleMissingKeys[locale].length > 0) {
      failures.push(`new missing keys in ${locale}.lproj: ${newLocaleMissingKeys[locale].length}`);
    }
  }
  const generatedKeys = new Set(
    [...loadLocalizationState(localizationRoot).localeMaps.Base.keys()]
  );
  const generatedAccessors = parseGeneratedAccessors(
    path.join(localizationRoot, 'packages/ios/Generated/Localization.swift')
  );
  const generatedAccessorKeys = new Set(generatedAccessors.map((item) => item.key));
  const missingGeneratedKeys = [...generatedKeys].filter((key) => !generatedAccessorKeys.has(key));
  if (missingGeneratedKeys.length > 0) {
    failures.push(`generated Localization.swift is missing ${missingGeneratedKeys.length} keys from Base.lproj`);
  }

  if (failures.length > 0) {
    console.error(chalk.red('iOS localization verify failed'));
    failures.forEach((failure) => console.error(chalk.red(`- ${failure}`)));
    process.exitCode = 1;
    return;
  }

  console.log(chalk.green('iOS localization verify passed'));
  console.log(chalk.gray(`Candidates checked: ${scan.candidates.length}`));
  console.log(chalk.gray(`Baseline fingerprints: ${baselineFingerprints.size}`));
  console.log(chalk.gray(`Baseline collision groups: ${baselineCollisionKeys.size}`));
  Object.entries(localeCoverage.missingCountsByLocale).forEach(([locale, count]) => {
    console.log(chalk.gray(`Missing keys in ${locale}.lproj vs Base.lproj: ${count}`));
  });
}

function configureProgram() {
  const program = new Command();
  program
    .name('ios-localization')
    .description('Audit, migrate, and verify centralized iOS localization against the Localization package');

  program
    .command('audit')
    .option('--ios-root <path>', 'Path to the IOS workspace')
    .option('--localization-root <path>', 'Path to the Localization package')
    .option('--write-baseline', 'Write a baseline snapshot for verify mode')
    .action(async (options) => {
      await runAudit(options);
    });

  program
    .command('migrate')
    .option('--report <path>', 'Path to a previously generated audit JSON')
    .option('--ios-root <path>', 'Path to the IOS workspace')
    .option('--localization-root <path>', 'Path to the Localization package')
    .option('--statuses <csv>', 'Statuses eligible for migration', 'auto,reuse,approved')
    .option('--include-paths <csv>', 'Comma-separated sourcePath prefixes to include')
    .option('--exclude-paths <csv>', 'Comma-separated sourcePath prefixes to exclude')
    .option('--apply', 'Write changes to Localization resources and regenerate Localization.swift')
    .action(async (options) => {
      await runMigrate(options);
    });

  program
    .command('verify')
    .option('--ios-root <path>', 'Path to the IOS workspace')
    .option('--localization-root <path>', 'Path to the Localization package')
    .action(async (options) => {
      await runVerify(options);
    });

  return program;
}

async function main() {
  const program = configureProgram();
  try {
    await program.parseAsync(process.argv);
  } catch (error) {
    console.error(chalk.red(error.message));
    process.exitCode = 1;
  }
}

if (require.main === module) {
  main();
}
