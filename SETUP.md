# Настройка локализации

## 🚀 Первоначальная настройка

### 1. Настройка Crowdin

1. Создайте проект в [Crowdin](https://crowdin.com)
2. Обновите `crowdin.yml` с вашими настройками:
   ```yaml
   project_id: "your-project-id"
   api_token: "your-api-token"
   ```
3. Добавьте секреты в GitHub:
   - `CROWDIN_PROJECT_ID`
   - `CROWDIN_API_TOKEN`

### 2. Загрузка существующих строк

```bash
# Загрузить существующие строки в Crowdin (только один раз!)
npm run crowdin:init
```

⚠️ **Важно**: После этого шага папка `resources/` больше не используется для редактирования!

### 3. Настройка Crowdin проекта

После загрузки в Crowdin:
1. Настройте языки проекта
2. Добавьте переводчиков
3. Настройте workflow и правила

## 🔄 Регулярная работа

### Workflow для переводчиков:

1. **Редактируйте строки в Crowdin** (веб-интерфейс)
2. **Синхронизируйте**: `npm run crowdin:sync`
3. **Опубликуйте**: `npm run publish`

### Автоматизация:

- **GitHub Actions** автоматически синхронизируется с Crowdin ежедневно
- **Автоматическая публикация** при изменениях в main ветке
- **Версионирование** происходит автоматически

## 📦 Распространение пакетов

После публикации пакеты доступны:

- **iOS**: Swift Package Manager
- **Android**: Gradle package
- **Web**: npm package

### Подключение к проектам:

```swift
// iOS
dependencies: [
    .package(url: "https://github.com/Maetry/localization.git", from: "1.0.0")
]
```

```kotlin
// Android
implementation 'com.maetry:localization:1.0.0'
```

```json
// Web
{
  "dependencies": {
    "@maetry/localization": "^1.0.0"
  }
}
```

## ⚠️ Важные правила

1. **Не редактируйте YAML файлы** после первоначальной загрузки
2. **Все изменения только в Crowdin**
3. **Используйте автоматизацию** для синхронизации
4. **Тестируйте изменения** перед публикацией

## 🆘 Поддержка

Если у вас есть вопросы:
1. Проверьте [Issues](https://github.com/Maetry/localization/issues)
2. Создайте новый Issue
3. Обратитесь к документации Crowdin
