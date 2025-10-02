# Localization

Централизованная система локализации для кросс-платформенных приложений с интеграцией Crowdin.

## 🚀 Особенности

- **Кросс-платформенность**: Поддержка iOS, Android и Web (Next.js)
- **Crowdin как источник истины**: Все переводы управляются через Crowdin
- **Нисходящий workflow**: Crowdin → Синхронизация → Генерация → Публикация
- **SwiftGen интеграция**: Автоматическая генерация Swift кода из .strings файлов
- **Типобезопасность**: Swift enums, Kotlin objects, TypeScript types
- **Семантическое версионирование**: Автоматическое управление версиями
- **CI/CD**: GitHub Actions для автоматизации

## 📁 Структура проекта

```
localization/
├── resources/                 # YAML файлы для инициализации Crowdin
│   ├── common/               # Общие строки (только для инициализации)
│   ├── ios-specific/         # iOS-специфичные строки (только для инициализации)
│   ├── android-specific/     # Android-специфичные строки (только для инициализации)
│   ├── web-specific/         # Web-специфичные строки (только для инициализации)
│   └── translations/         # Папка для переводов из Crowdin
├── packages/                 # Сгенерированные пакеты
│   ├── ios/                  # Swift Package Manager
│   ├── android/              # Gradle package
│   └── web/                  # npm package для Next.js
├── tools/                    # Инструменты
│   └── scripts/              # Скрипты автоматизации
└── .github/workflows/        # CI/CD пайплайны
```

## 🛠 Установка

### Предварительные требования

- Node.js 18+
- Swift 5.9+ (для iOS)
- Java 11+ (для Android)
- Crowdin CLI (для синхронизации)

### Установка зависимостей

```bash
npm install
```

### Установка Crowdin CLI

```bash
npm install -g @crowdin/cli
```

## 📝 Использование

### Первоначальная настройка

```bash
# 1. Загрузить существующие строки в Crowdin (только один раз!)
npm run crowdin:init
```

### Регулярная работа

```bash
# 2. Синхронизация с Crowdin (скачать переводы + сгенерировать код)
npm run crowdin:sync

# 3. Публикация пакетов (версионирование + коммит + тег)
npm run publish
```

### Генерация Swift кода

```bash
# Генерация Swift кода из .strings файлов
npm run swiftgen
```

### Тестирование

```bash
# Тестирование всех платформ
npm test

# Тестирование конкретной платформы
npm run test:ios
npm run test:android
npm run test:web
```

## 📱 Примеры использования

### iOS (Swift)

```swift
import Localization

// Использование общих строк
let saveButton = L10n.Common.Buttons.save
let errorMessage = L10n.Common.Messages.error

// Использование iOS-специфичных строк
let pullToRefresh = L10n.IOS.Gestures.pullToRefresh
let tabBarHome = L10n.IOS.Navigation.TabBar.home

// Использование в SwiftUI
Text(L10n.Common.Buttons.save)
```

### Android (Kotlin)

```kotlin
import com.localization.Localization

// Использование общих строк
val saveButton = Localization.Common.Buttons.save(context)
val errorMessage = Localization.Common.Messages.error(context)

// Использование Android-специфичных строк
val swipeRefresh = Localization.Android.Gestures.swipeRefresh(context)
val bottomNavHome = Localization.Android.Navigation.BottomNavigation.home(context)

// Использование в XML
<TextView android:text="@string/common_buttons_save" />
```

### Web (Next.js + next-intl)

```typescript
import { useTranslations } from 'next-intl';

function MyComponent() {
  const t = useTranslations();
  
  return (
    <div>
      {/* Использование общих строк */}
      <button>{t('common.buttons.save')}</button>
      <p>{t('common.messages.error')}</p>
      
      {/* Использование Web-специфичных строк */}
      <span>{t('web.interactions.keyboard_shortcuts.help')}</span>
    </div>
  );
}
```

## 🔧 Конфигурация

### Crowdin

1. Создайте проект в Crowdin
2. Обновите `crowdin.yml` с вашими настройками
3. Добавьте секреты в GitHub:
   - `CROWDIN_PROJECT_ID`
   - `CROWDIN_API_TOKEN`

### GitHub Actions

Workflow автоматически:
- Генерирует Swift код при изменении .strings файлов
- Тестирует пакеты
- Синхронизируется с Crowdin (ежедневно)
- Создает релизы при изменениях в main

## 📚 Добавление новых строк

⚠️ **Важно**: После первоначальной загрузки все редактирование строк должно происходить только в Crowdin!

### Workflow:

1. **Редактируйте строки в Crowdin** (веб-интерфейс)
2. **Синхронизируйте**: `npm run crowdin:sync`
3. **Опубликуйте**: `npm run publish`

### Автоматизация:

- **GitHub Actions** автоматически синхронизируется с Crowdin ежедневно
- **Автоматическая публикация** при изменениях в main ветке
- **Версионирование** происходит автоматически

### 📁 Папка resources:

- **Только для инициализации**: YAML файлы в `resources/` используются только для первоначальной загрузки в Crowdin
- **После инициализации**: эти файлы можно игнорировать - все редактирование происходит в Crowdin
- **Переводы**: скачиваются в `resources/translations/` и используются для генерации кода

### Структура YAML файлов

```yaml
# resources/common/localization.yaml
common:
  buttons:
    save: "Save"
    cancel: "Cancel"
  messages:
    error: "An error occurred"
    success: "Success"
```

## 🤝 Вклад в проект

1. Fork репозитория
2. Создайте feature branch
3. Внесите изменения
4. Запустите тесты: `npm test`
5. Создайте Pull Request

## 📄 Лицензия

MIT License - см. файл [LICENSE](LICENSE) для деталей.

## 🆘 Поддержка

Если у вас есть вопросы или проблемы:

1. Проверьте [Issues](https://github.com/Maetry/localization/issues)
2. Создайте новый Issue с подробным описанием
3. Обратитесь к документации Crowdin для вопросов по переводам
