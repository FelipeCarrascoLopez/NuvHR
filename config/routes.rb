Rails.application.routes.draw do
  devise_for :users
  
  # Redirigir a la página de inicio de sesión de Devise
  authenticated :user do
    root to: "home#index", as: :authenticated_root
  end

  # Si no está autenticado, redirigir al inicio de sesión
  unauthenticated do
    root to: 'devise/sessions#new', as: :unauthenticated_root
  end
end
