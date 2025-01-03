Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'

  get 'home/about' => 'homes#top', as: 'about'

  resources :books, only: [:index, :show, :edit, :update, :destroy, :create, :new] do
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
