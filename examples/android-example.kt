// Android Example - Kotlin
// Демонстрация использования сгенерированных локализационных строк

package com.example.app

import android.content.Context
import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import com.localization.Localization

class MainActivity : AppCompatActivity() {
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        
        setupUI()
    }
    
    private fun setupUI() {
        // Использование общих строк
        val saveButton = findViewById<Button>(R.id.saveButton)
        saveButton.text = Localization.Common.Buttons.save(this)
        
        val cancelButton = findViewById<Button>(R.id.cancelButton)
        cancelButton.text = Localization.Common.Buttons.cancel(this)
        
        // Использование сообщений
        val errorTextView = findViewById<TextView>(R.id.errorTextView)
        errorTextView.text = Localization.Common.Messages.error(this)
        
        // Android-специфичные элементы
        val swipeRefreshLayout = findViewById<SwipeRefreshLayout>(R.id.swipeRefreshLayout)
        swipeRefreshLayout.setOnRefreshListener {
            // Обновление данных
            swipeRefreshLayout.isRefreshing = false
        }
        
        // Настройка Bottom Navigation
        setupBottomNavigation()
    }
    
    private fun setupBottomNavigation() {
        val bottomNav = findViewById<BottomNavigationView>(R.id.bottomNavigation)
        
        val menu = bottomNav.menu
        menu.findItem(R.id.nav_home).title = Localization.Android.Navigation.BottomNavigation.home(this)
        menu.findItem(R.id.nav_search).title = Localization.Android.Navigation.BottomNavigation.search(this)
        menu.findItem(R.id.nav_favorites).title = Localization.Android.Navigation.BottomNavigation.favorites(this)
        menu.findItem(R.id.nav_profile).title = Localization.Android.Navigation.BottomNavigation.profile(this)
        menu.findItem(R.id.nav_more).title = Localization.Android.Navigation.BottomNavigation.more(this)
        
        bottomNav.setOnItemSelectedListener { item ->
            when (item.itemId) {
                R.id.nav_home -> {
                    // Переход на главную
                    true
                }
                R.id.nav_search -> {
                    // Переход к поиску
                    true
                }
                R.id.nav_favorites -> {
                    // Переход к избранному
                    true
                }
                R.id.nav_profile -> {
                    // Переход к профилю
                    true
                }
                R.id.nav_more -> {
                    // Показать меню
                    true
                }
                else -> false
            }
        }
    }
    
    private fun showConfirmationDialog() {
        val builder = androidx.appcompat.app.AlertDialog.Builder(this)
        builder.setTitle(Localization.Common.Messages.confirmation(this))
        builder.setMessage(Localization.Common.Messages.confirmation(this))
        
        builder.setPositiveButton(Localization.Common.Buttons.yes(this)) { _, _ ->
            // Действие подтверждения
        }
        
        builder.setNegativeButton(Localization.Common.Buttons.cancel(this)) { dialog, _ ->
            dialog.dismiss()
        }
        
        builder.show()
    }
}

// Пример использования в Fragment
class HomeFragment : Fragment() {
    
    override fun onViewCreated(view: android.view.View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        
        setupUI(view)
    }
    
    private fun setupUI(view: android.view.View) {
        val context = requireContext()
        
        // Использование общих строк
        val titleTextView = view.findViewById<TextView>(R.id.titleTextView)
        titleTextView.text = Localization.Profile.title(context)
        
        val editButton = view.findViewById<Button>(R.id.editButton)
        editButton.text = Localization.Profile.editProfile(context)
        
        // Android-специфичные жесты
        val gestureTextView = view.findViewById<TextView>(R.id.gestureTextView)
        gestureTextView.text = Localization.Android.Gestures.swipeRefresh(context)
    }
}

// Пример использования в RecyclerView Adapter
class ItemAdapter(
    private val context: Context,
    private val items: List<String>
) : RecyclerView.Adapter<ItemAdapter.ViewHolder>() {
    
    class ViewHolder(view: android.view.View) : RecyclerView.ViewHolder(view) {
        val textView: TextView = view.findViewById(R.id.textView)
        val deleteButton: Button = view.findViewById(R.id.deleteButton)
    }
    
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_layout, parent, false)
        return ViewHolder(view)
    }
    
    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.textView.text = items[position]
        
        // Использование локализованных строк
        holder.deleteButton.text = Localization.Common.Buttons.delete(context)
        holder.deleteButton.setOnClickListener {
            // Показать диалог подтверждения удаления
            showDeleteConfirmation(holder.adapterPosition)
        }
    }
    
    override fun getItemCount() = items.size
    
    private fun showDeleteConfirmation(position: Int) {
        val builder = androidx.appcompat.app.AlertDialog.Builder(context)
        builder.setTitle(Localization.Common.Messages.confirmation(context))
        builder.setMessage(Localization.Common.Messages.confirmation(context))
        
        builder.setPositiveButton(Localization.Common.Buttons.delete(context)) { _, _ ->
            // Удалить элемент
        }
        
        builder.setNegativeButton(Localization.Common.Buttons.cancel(context)) { dialog, _ ->
            dialog.dismiss()
        }
        
        builder.show()
    }
}

// Пример использования в Service
class NotificationService : Service() {
    
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        showNotification()
        return START_STICKY
    }
    
    private fun showNotification() {
        val notificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        
        val notification = NotificationCompat.Builder(this, "default")
            .setContentTitle(Localization.Common.Messages.info(this))
            .setContentText(Localization.Common.Messages.loading(this))
            .setSmallIcon(R.drawable.ic_notification)
            .setAutoCancel(true)
            .build()
        
        notificationManager.notify(1, notification)
    }
    
    override fun onBind(intent: Intent?): IBinder? = null
}

// Пример использования в BroadcastReceiver
class NetworkReceiver : BroadcastReceiver() {
    
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action == ConnectivityManager.CONNECTIVITY_ACTION) {
            val connectivityManager = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
            val networkInfo = connectivityManager.activeNetworkInfo
            
            if (networkInfo?.isConnected == true) {
                // Показать сообщение об успешном подключении
                Toast.makeText(context, Localization.Common.Messages.success(context), Toast.LENGTH_SHORT).show()
            } else {
                // Показать сообщение об ошибке сети
                Toast.makeText(context, Localization.Common.Messages.networkError(context), Toast.LENGTH_LONG).show()
            }
        }
    }
}
