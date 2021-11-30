Rails.application.routes.draw do

  resources :posts

  resources :items

  devise_for :users

  resources :users, only: [:show, :edit, :update] do
    member do
      get   'unsubscribe'
      patch 'withdraw'
    end
  end

  root to: 'homes#top'
  get "about" => "homes#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
