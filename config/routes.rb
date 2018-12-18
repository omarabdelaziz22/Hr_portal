Rails.application.routes.draw do
  get 'home_page/home'
  devise_for :users
  resources :attendances
  resources :statuses
  resources :employees
  resources :users, only: [:index, :show]
  root to: "home_page#home"
end
