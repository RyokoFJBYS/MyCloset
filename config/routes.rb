Rails.application.routes.draw do

  resources :posts
  
  resources :items

  resources :users, only: [:index, :edit] do
    member do
      get   'unsubscribe'
      patch 'withdraw'
    end
  end
  devise_for :users

  root to: 'homes#top'
  get "about" => "homes#about"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
