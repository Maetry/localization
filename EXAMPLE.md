# Примеры использования

## 🍎 iOS (Swift)

### Подключение пакета

```swift
// Package.swift
dependencies: [
    .package(url: "https://github.com/Maetry/localization.git", from: "1.0.0")
]
```

### Использование в коде

```swift
import Localization

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Использование локализованных строк
        title = L10n.Actions.save
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: L10n.Actions.cancel,
            style: .plain,
            target: self,
            action: #selector(cancelTapped)
        )
        
        // Поля формы
        nameTextField.placeholder = L10n.Fields.name
        emailTextField.placeholder = L10n.Fields.email
        passwordTextField.placeholder = L10n.Fields.password
        
        // Статусы
        loadingLabel.text = L10n.Status.loading
        successLabel.text = L10n.Status.success
        errorLabel.text = L10n.Status.error
    }
    
    @objc private func cancelTapped() {
        // Действие отмены
    }
}
```

## 🤖 Android (Kotlin)

### Подключение пакета

```kotlin
// build.gradle.kts
dependencies {
    implementation("com.maetry:localization:1.0.0")
}
```

### Использование в коде

```kotlin
import com.maetry.localization.L10n

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        
        // Использование локализованных строк
        title = L10n.actions.save
        cancelButton.text = L10n.actions.cancel
        
        // Поля формы
        nameEditText.hint = L10n.fields.name
        emailEditText.hint = L10n.fields.email
        passwordEditText.hint = L10n.fields.password
        
        // Статусы
        loadingText.text = L10n.status.loading
        successText.text = L10n.status.success
        errorText.text = L10n.status.error
    }
}
```

## 🌐 Web (TypeScript/React)

### Подключение пакета

```json
{
  "dependencies": {
    "@maetry/localization": "^1.0.0"
  }
}
```

### Использование в коде

```typescript
import { useTranslations } from '@maetry/localization'

function MyComponent() {
  const t = useTranslations()
  
  return (
    <div>
      <h1>{t('actions.save')}</h1>
      <button>{t('actions.cancel')}</button>
      
      <form>
        <input placeholder={t('fields.name')} />
        <input placeholder={t('fields.email')} />
        <input placeholder={t('fields.password')} />
      </form>
      
      <div>
        <span>{t('status.loading')}</span>
        <span>{t('status.success')}</span>
        <span>{t('status.error')}</span>
      </div>
    </div>
  )
}
```

## 🔄 Workflow для разработчиков

### 1. Получение новых переводов

```bash
# Синхронизация с Crowdin
npm run crowdin:sync

# Публикация новой версии
npm run publish
```

### 2. Обновление в проектах

```bash
# iOS
swift package update

# Android
./gradlew dependencies --write-locks

# Web
npm update @maetry/localization
```

## 📝 Добавление новых строк

⚠️ **Важно**: Все новые строки добавляются только в Crowdin!

1. **Войдите в Crowdin** (веб-интерфейс)
2. **Добавьте новые строки** в соответствующие файлы
3. **Назначьте переводчиков** для новых языков
4. **Дождитесь переводов** или переведите сами
5. **Синхронизируйте**: `npm run crowdin:sync`
6. **Опубликуйте**: `npm run publish`

## 🎯 Преимущества

- ✅ **Типобезопасность** - ошибки компиляции при неправильных ключах
- ✅ **Автодополнение** - IDE подсказывает доступные строки
- ✅ **Централизация** - все переводы в одном месте
- ✅ **Автоматизация** - автоматическая синхронизация и публикация
- ✅ **Версионирование** - семантическое версионирование пакетов
