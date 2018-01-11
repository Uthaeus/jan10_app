Rails.application.routes.draw do
  get 'charges/new'

  get 'charges/create'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  devise_for :views
  root to: "pages#home"
  
  get 'about', to: 'pages#about'

  get 'donations', to: 'pages#donations'

  get 'contact', to: 'pages#contact'

  resources :blogs

  Rails.application.routes.draw do
  resources :charges, only: [:new, :create]
  resources :posts
  root to: 'posts#index'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
