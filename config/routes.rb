Rails.application.routes.draw do
  get 'payments/index'
  post 'payments/create'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :products do
    resources :comments
  end
  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/landing_page'
  post 'simple_pages/thank_you'
  root 'simple_pages#landing_page'
  resources :orders, only: [:index, :show, :create, :destroy]
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
