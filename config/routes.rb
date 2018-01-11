Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  devise_for :views
  root to: "pages#home"
  
  get 'about', to: 'pages#about'

  get 'donations', to: 'pages#donations'

  get 'contact', to: 'pages#contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
