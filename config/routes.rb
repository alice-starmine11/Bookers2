Rails.application.routes.draw do
  resources :books,only:[:index,:show]
  resources :users,only:[:index,:show,:edit]
  get "home/about" => "homes#about",as: "about"
  root to: "homes#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
