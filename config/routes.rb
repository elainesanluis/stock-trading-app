Rails.application.routes.draw do
devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
  root "home#index"
  get '/home',          to: 'home#index'
  get '/dashboard',     to: 'dashboard#index'
  get '/transactions',  to: 'transaction_records#index'
end
