Rails.application.routes.draw do

  resources :posts do
    resource :favorites, only: [:create, :destroy]
  end
  get "tag" => "posts#tag"

  devise_for :users

  resources :users, only: [:show, :edit, :update] do
    member do
      get   'unsubscribe'
      patch 'withdraw'
    end
  end

  root to: 'homes#top'
  get "about" => "homes#about"

  resources :items do
    collection do
      get 'search'
    end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
