Rails.application.routes.draw do
  get 'homes/top'
  get 'homes/about'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end