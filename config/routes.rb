Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_scope :admin do
    get '/admins/sign_out', to: 'admins/sessions#destroy'
  end

  root "home#index"
  get '/home',          to: 'home#index'
  get '/dashboard',     to: 'dashboard#index'
  get '/transactions',  to: 'transaction_records#index'

  get 'admins', to: 'admin#index', as: :admin

end
