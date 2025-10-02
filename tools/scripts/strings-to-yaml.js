#!/usr/bin/env node

const fs = require('fs-extra');
const path = require('path');
const yaml = require('js-yaml');
const chalk = require('chalk');

/**
 * Конвертер .strings файла в YAML структуру
 * Анализирует существующий Localizable.strings и создает соответствующие YAML файлы
 */

class StringsToYamlConverter {
  constructor() {
    this.stringsFile = path.join(__dirname, '../../resources/Localizable_new.strings');
    this.outputDir = path.join(__dirname, '../../resources');
  }

  async convert() {
    console.log(chalk.blue('🔄 Конвертация .strings файла в YAML структуру...'));
    
    try {
      // Читаем .strings файл
      const stringsContent = await fs.readFile(this.stringsFile, 'utf8');
      
      // Парсим строки
      const strings = this.parseStringsFile(stringsContent);
      
      // Группируем по платформам
      const grouped = this.groupStringsByPlatform(strings);
      
      // Создаем YAML файлы
      await this.createYamlFiles(grouped);
      
      console.log(chalk.green('✅ Конвертация завершена успешно!'));
    } catch (error) {
      console.error(chalk.red('❌ Ошибка при конвертации:'), error);
      process.exit(1);
    }
  }

  parseStringsFile(content) {
    const strings = {};
    const lines = content.split('\n');
    
    for (const line of lines) {
      // Пропускаем комментарии и пустые строки
      if (line.trim().startsWith('/*') || line.trim().startsWith('*') || line.trim().startsWith('*/') || line.trim() === '') {
        continue;
      }
      
      // Ищем строки в формате "key" = "value";
      const match = line.match(/^"([^"]+)"\s*=\s*"([^"]*(?:\\.[^"]*)*)"\s*;?\s*$/);
      if (match) {
        const key = match[1];
        const value = match[2].replace(/\\"/g, '"').replace(/\\n/g, '\n').replace(/\\t/g, '\t');
        strings[key] = value;
      }
    }
    
    return strings;
  }

  groupStringsByPlatform(strings) {
    const grouped = {
      common: {},
      ios: {},
      android: {},
      web: {}
    };

    for (const [key, value] of Object.entries(strings)) {
      // Определяем к какой группе относится ключ
      if (key.startsWith('common.')) {
        this.addToNestedObject(grouped.common, key.replace('common.', ''), value);
      } else if (key.startsWith('screen.') || key.startsWith('widget.') || key.startsWith('reusable.') || 
                 key.startsWith('onboarding.') || key.startsWith('creatable.') || key.startsWith('updatable.') || 
                 key.startsWith('error.') || key.startsWith('step.') || key.startsWith('service.') || 
                 key.startsWith('shortcut.') || key.startsWith('cell.')) {
        // Эти ключи пока относятся к iOS, так как они есть в iOS проекте
        this.addToNestedObject(grouped.ios, key, value);
      } else {
        // Остальные ключи добавляем в common
        this.addToNestedObject(grouped.common, key, value);
      }
    }

    return grouped;
  }

  addToNestedObject(obj, keyPath, value) {
    const keys = keyPath.split('.');
    let current = obj;
    
    for (let i = 0; i < keys.length - 1; i++) {
      const key = keys[i];
      if (!current[key]) {
        current[key] = {};
      }
      current = current[key];
    }
    
    current[keys[keys.length - 1]] = value;
  }

  async createYamlFiles(grouped) {
    // Создаем common/localization.yaml
    const commonYaml = this.createYamlContent(grouped.common);
    await fs.writeFile(
      path.join(this.outputDir, 'common', 'localization.yaml'),
      commonYaml,
      'utf8'
    );
    console.log(chalk.gray('📝 Создан: resources/common/localization.yaml'));

    // Создаем ios-specific/localization.yaml
    const iosYaml = this.createYamlContent(grouped.ios);
    await fs.writeFile(
      path.join(this.outputDir, 'ios-specific', 'localization.yaml'),
      iosYaml,
      'utf8'
    );
    console.log(chalk.gray('📝 Создан: resources/ios-specific/localization.yaml'));

    // Создаем пустые файлы для Android и Web (пока что)
    const emptyYaml = `# Android-specific localization strings
# These strings are unique to Android platform
# Currently empty - will be populated as needed

android:
  # Android-specific features will be added here
`;

    await fs.writeFile(
      path.join(this.outputDir, 'android-specific', 'localization.yaml'),
      emptyYaml,
      'utf8'
    );
    console.log(chalk.gray('📝 Создан: resources/android-specific/localization.yaml (пустой)'));

    const webEmptyYaml = `# Web-specific localization strings
# These strings are unique to Web platform (Next.js + next-intl)
# Currently empty - will be populated as needed

web:
  # Web-specific features will be added here
`;

    await fs.writeFile(
      path.join(this.outputDir, 'web-specific', 'localization.yaml'),
      webEmptyYaml,
      'utf8'
    );
    console.log(chalk.gray('📝 Создан: resources/web-specific/localization.yaml (пустой)'));
  }

  createYamlContent(obj) {
    return yaml.dump(obj, {
      indent: 2,
      lineWidth: 120,
      noRefs: true,
      sortKeys: false
    });
  }
}

// Запускаем конвертер если файл выполняется напрямую
if (require.main === module) {
  const converter = new StringsToYamlConverter();
  converter.convert().catch(console.error);
}

module.exports = StringsToYamlConverter;
