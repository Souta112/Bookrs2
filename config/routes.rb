Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users, only: [:update, :index, :show, :edit  ]

end