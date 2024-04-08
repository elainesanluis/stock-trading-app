Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root "home#index"
  get '/home',          to: 'home#index'
  get '/dashboard',     to: 'dashboard#index', as: 'dashboard_index'
  get '/transactions',  to: 'transaction_records#index'

  devise_scope :admin do
    get '/admins/sign_out', to: 'admins/sessions#destroy'
  end

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end

end
