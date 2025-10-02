// Web Example - Next.js + next-intl
// Демонстрация использования сгенерированных локализационных строк

import React from 'react';
import { useTranslations } from 'next-intl';
import { useRouter } from 'next/router';

// Основной компонент с локализацией
export default function HomePage() {
  const t = useTranslations();
  const router = useRouter();
  
  return (
    <div className="container mx-auto px-4 py-8">
      <h1 className="text-3xl font-bold mb-6">
        {t('profile.title')}
      </h1>
      
      {/* Использование общих строк */}
      <div className="mb-6">
        <h2 className="text-xl font-semibold mb-4">Common Elements</h2>
        
        <div className="flex gap-4 mb-4">
          <button className="bg-blue-500 text-white px-4 py-2 rounded">
            {t('common.buttons.save')}
          </button>
          <button className="bg-gray-500 text-white px-4 py-2 rounded">
            {t('common.buttons.cancel')}
          </button>
          <button className="bg-red-500 text-white px-4 py-2 rounded">
            {t('common.buttons.delete')}
          </button>
        </div>
        
        <div className="bg-yellow-100 border border-yellow-400 text-yellow-700 px-4 py-3 rounded">
          {t('common.messages.warning')}
        </div>
      </div>
      
      {/* Использование Web-специфичных строк */}
      <div className="mb-6">
        <h2 className="text-xl font-semibold mb-4">Web Specific Features</h2>
        
        <div className="bg-gray-100 p-4 rounded">
          <h3 className="font-semibold mb-2">Keyboard Shortcuts:</h3>
          <p className="text-sm text-gray-600 mb-2">
            {t('web.interactions.keyboard_shortcuts.help')}
          </p>
          <p className="text-sm text-gray-600 mb-2">
            {t('web.interactions.keyboard_shortcuts.search')}
          </p>
          <p className="text-sm text-gray-600">
            {t('web.interactions.keyboard_shortcuts.escape')}
          </p>
        </div>
        
        <div className="bg-blue-100 p-4 rounded mt-4">
          <h3 className="font-semibold mb-2">PWA Features:</h3>
          <button className="bg-blue-500 text-white px-4 py-2 rounded mr-2">
            {t('web.features.pwa.install_prompt')}
          </button>
          <button className="bg-green-500 text-white px-4 py-2 rounded">
            {t('web.features.pwa.sync_data')}
          </button>
        </div>
      </div>
      
      {/* Форма с локализацией */}
      <AuthForm />
      
      {/* Навигация с локализацией */}
      <Navigation />
    </div>
  );
}

// Компонент формы аутентификации
function AuthForm() {
  const t = useTranslations();
  const [isLogin, setIsLogin] = React.useState(true);
  
  return (
    <div className="bg-white p-6 rounded-lg shadow-md mb-6">
      <h2 className="text-2xl font-bold mb-4">
        {isLogin ? t('auth.login.title') : t('auth.register.title')}
      </h2>
      
      <p className="text-gray-600 mb-4">
        {isLogin ? t('auth.login.subtitle') : t('auth.register.subtitle')}
      </p>
      
      <form className="space-y-4">
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">
            {t('common.labels.email')}
          </label>
          <input
            type="email"
            placeholder={t('auth.login.email_placeholder')}
            className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
          />
        </div>
        
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">
            {t('common.labels.password')}
          </label>
          <input
            type="password"
            placeholder={t('auth.login.password_placeholder')}
            className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
          />
        </div>
        
        {!isLogin && (
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              {t('auth.register.confirm_password')}
            </label>
            <input
              type="password"
              className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
          </div>
        )}
        
        <div className="flex items-center">
          <input
            type="checkbox"
            id="remember"
            className="mr-2"
          />
          <label htmlFor="remember" className="text-sm text-gray-600">
            {t('auth.login.remember_me')}
          </label>
        </div>
        
        <div className="flex gap-4">
          <button
            type="submit"
            className="bg-blue-500 text-white px-6 py-2 rounded-md hover:bg-blue-600"
          >
            {isLogin ? t('auth.login.sign_in_button') : t('auth.register.sign_up_button')}
          </button>
          
          <button
            type="button"
            className="bg-gray-500 text-white px-6 py-2 rounded-md hover:bg-gray-600"
          >
            {t('common.buttons.cancel')}
          </button>
        </div>
        
        <div className="text-center">
          <button
            type="button"
            onClick={() => setIsLogin(!isLogin)}
            className="text-blue-500 hover:underline"
          >
            {isLogin ? t('auth.login.no_account') : t('auth.register.have_account')}
          </button>
        </div>
      </form>
    </div>
  );
}

// Компонент навигации
function Navigation() {
  const t = useTranslations();
  const router = useRouter();
  
  const navItems = [
    { key: 'home', label: t('common.labels.name') },
    { key: 'search', label: t('common.buttons.search') },
    { key: 'profile', label: t('profile.title') },
    { key: 'settings', label: t('settings.title') },
  ];
  
  return (
    <nav className="bg-gray-100 p-4 rounded-lg">
      <h3 className="font-semibold mb-3">Navigation</h3>
      <ul className="flex gap-4">
        {navItems.map((item) => (
          <li key={item.key}>
            <button
              onClick={() => router.push(`/${item.key}`)}
              className="text-blue-500 hover:underline"
            >
              {item.label}
            </button>
          </li>
        ))}
      </ul>
    </nav>
  );
}

// Компонент с пагинацией
function PaginationExample() {
  const t = useTranslations();
  const [currentPage, setCurrentPage] = React.useState(1);
  const totalPages = 10;
  
  return (
    <div className="flex items-center justify-between bg-white p-4 rounded-lg shadow-md">
      <div className="flex items-center gap-2">
        <button
          onClick={() => setCurrentPage(Math.max(1, currentPage - 1))}
          disabled={currentPage === 1}
          className="px-3 py-1 border rounded disabled:opacity-50"
        >
          {t('web.navigation.pagination.previous_page')}
        </button>
        
        <span className="px-3 py-1">
          {t('web.navigation.pagination.page_info', { 
            current: currentPage, 
            total: totalPages 
          })}
        </span>
        
        <button
          onClick={() => setCurrentPage(Math.min(totalPages, currentPage + 1))}
          disabled={currentPage === totalPages}
          className="px-3 py-1 border rounded disabled:opacity-50"
        >
          {t('web.navigation.pagination.next_page')}
        </button>
      </div>
      
      <div className="text-sm text-gray-600">
        {t('web.navigation.pagination.showing_results', {
          start: (currentPage - 1) * 10 + 1,
          end: Math.min(currentPage * 10, 100),
          total: 100
        })}
      </div>
    </div>
  );
}

// Компонент с модальным окном
function ModalExample() {
  const t = useTranslations();
  const [isOpen, setIsOpen] = React.useState(false);
  
  return (
    <>
      <button
        onClick={() => setIsOpen(true)}
        className="bg-purple-500 text-white px-4 py-2 rounded"
      >
        {t('common.buttons.share')}
      </button>
      
      {isOpen && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white p-6 rounded-lg max-w-md w-full mx-4">
            <h3 className="text-lg font-semibold mb-4">
              {t('web.ui.modals.close_modal')}
            </h3>
            
            <p className="text-gray-600 mb-4">
              {t('web.ui.modals.escape_to_close')}
            </p>
            
            <div className="flex gap-4">
              <button
                onClick={() => setIsOpen(false)}
                className="bg-blue-500 text-white px-4 py-2 rounded"
              >
                {t('common.buttons.ok')}
              </button>
              
              <button
                onClick={() => setIsOpen(false)}
                className="bg-gray-500 text-white px-4 py-2 rounded"
              >
                {t('common.buttons.cancel')}
              </button>
            </div>
          </div>
        </div>
      )}
    </>
  );
}

// Компонент с загрузкой
function LoadingExample() {
  const t = useTranslations();
  const [isLoading, setIsLoading] = React.useState(false);
  
  const handleLoad = async () => {
    setIsLoading(true);
    // Симуляция загрузки
    await new Promise(resolve => setTimeout(resolve, 2000));
    setIsLoading(false);
  };
  
  return (
    <div className="bg-white p-6 rounded-lg shadow-md">
      <h3 className="text-lg font-semibold mb-4">Loading States</h3>
      
      <button
        onClick={handleLoad}
        disabled={isLoading}
        className="bg-green-500 text-white px-4 py-2 rounded disabled:opacity-50"
      >
        {isLoading ? t('common.messages.loading') : t('common.buttons.refresh')}
      </button>
      
      {isLoading && (
        <div className="mt-4 flex items-center gap-2">
          <div className="animate-spin rounded-full h-4 w-4 border-b-2 border-blue-500"></div>
          <span className="text-sm text-gray-600">
            {t('web.ui.loading.loading_more')}
          </span>
        </div>
      )}
    </div>
  );
}
