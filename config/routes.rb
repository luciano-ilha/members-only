Rails.application.routes.draw do
  devise_for :users, :controller => {registrations: 'registrations'}
  resources :posts, only: [:new, :create, :index] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
