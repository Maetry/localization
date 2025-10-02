// iOS Example - SwiftUI
// Демонстрация использования сгенерированных локализационных строк

import SwiftUI
import Localization

struct ContentView: View {
    @State private var showingAlert = false
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Использование общих строк
                Text(L10n.Common.Messages.loading)
                    .font(.headline)
                
                // Использование кнопок
                HStack {
                    Button(L10n.Common.Buttons.save) {
                        // Действие сохранения
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Button(L10n.Common.Buttons.cancel) {
                        // Действие отмены
                    }
                    .buttonStyle(.bordered)
                }
                
                // Поиск с использованием общих строк
                TextField(L10n.Common.Buttons.search, text: $searchText)
                    .textFieldStyle(.roundedBorder)
                
                // iOS-специфичные элементы
                VStack(alignment: .leading, spacing: 10) {
                    Text("iOS Specific Features:")
                        .font(.headline)
                    
                    Text(L10n.IOS.Gestures.pullToRefresh)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Text(L10n.IOS.Gestures.swipeToDelete)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                
                Spacer()
            }
            .padding()
            .navigationTitle(L10n.Profile.title)
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(L10n.Common.Buttons.edit) {
                        // Действие редактирования
                    }
                }
            }
            .alert(L10n.Common.Messages.confirmation, isPresented: $showingAlert) {
                Button(L10n.Common.Buttons.yes) { }
                Button(L10n.Common.Buttons.no, role: .cancel) { }
            } message: {
                Text(L10n.Common.Messages.confirmation)
            }
        }
    }
}

// Пример использования в UIKit
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        // Создание кнопки с локализованным текстом
        let saveButton = UIButton(type: .system)
        saveButton.setTitle(L10n.Common.Buttons.save, for: .normal)
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        
        // Создание лейбла с локализованным текстом
        let errorLabel = UILabel()
        errorLabel.text = L10n.Common.Messages.error
        errorLabel.textColor = .systemRed
        
        // iOS-специфичные элементы
        let refreshControl = UIRefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: L10n.IOS.Gestures.pullToRefresh)
    }
    
    @objc private func saveButtonTapped() {
        // Показать алерт с локализованными строками
        let alert = UIAlertController(
            title: L10n.Common.Messages.confirmation,
            message: L10n.Common.Messages.confirmation,
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: L10n.Common.Buttons.yes, style: .default) { _ in
            // Действие подтверждения
        })
        
        alert.addAction(UIAlertAction(title: L10n.Common.Buttons.cancel, style: .cancel))
        
        present(alert, animated: true)
    }
}

// Пример использования в Tab Bar
class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        let homeVC = UIViewController()
        homeVC.tabBarItem = UITabBarItem(
            title: L10n.IOS.Navigation.TabBar.home,
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        
        let searchVC = UIViewController()
        searchVC.tabBarItem = UITabBarItem(
            title: L10n.IOS.Navigation.TabBar.search,
            image: UIImage(systemName: "magnifyingglass"),
            selectedImage: UIImage(systemName: "magnifyingglass")
        )
        
        let favoritesVC = UIViewController()
        favoritesVC.tabBarItem = UITabBarItem(
            title: L10n.IOS.Navigation.TabBar.favorites,
            image: UIImage(systemName: "heart"),
            selectedImage: UIImage(systemName: "heart.fill")
        )
        
        let profileVC = UIViewController()
        profileVC.tabBarItem = UITabBarItem(
            title: L10n.IOS.Navigation.TabBar.profile,
            image: UIImage(systemName: "person"),
            selectedImage: UIImage(systemName: "person.fill")
        )
        
        viewControllers = [homeVC, searchVC, favoritesVC, profileVC]
    }
}

#Preview {
    ContentView()
}
